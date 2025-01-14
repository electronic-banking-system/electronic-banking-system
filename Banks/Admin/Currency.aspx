<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Currency.aspx.cs" Inherits="Admin_Currency" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style19
        {
            width: 270px;
        }
        .style20
        {
           
            height: 17px;
        }
        .style1000016
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div align="right">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Curr_no" 
        DataSourceID="SqlDataSource1" Width="100%" DefaultMode="Insert" 
        oniteminserting="FormView1_ItemInserting">
        <EditItemTemplate>
            Curr_no:
            <asp:Label ID="Curr_noLabel1" runat="server" Text='<%# Eval("Curr_no") %>' />
            <br />
            Currency_name:
            <asp:TextBox ID="Currency_nameTextBox" runat="server" 
                Text='<%# Bind("Currency_name") %>' />
            <br />
            Currency_img:
            <asp:TextBox ID="Currency_imgTextBox" runat="server" 
                Text='<%# Bind("Currency_img") %>' />
            <br />
            Abbreviation:
            <asp:TextBox ID="AbbreviationTextBox" runat="server" 
                Text='<%# Bind("Abbreviation") %>' />
            <br />
            Sub_Currency:
            <asp:TextBox ID="Sub_CurrencyTextBox" runat="server" 
                Text='<%# Bind("Sub_Currency") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class=" " width="100%">
                <tr>
                    <td align="center" bgcolor="#5D7B9D" colspan="4" height="30">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
                            ForeColor="White" Text="&#1575;&#1604;&#1593;&#1605;&#1604;&#1575;&#1578;"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td title="Currency">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <span lang="ar-sa">&#1575;&#1587;&#1605; &#1575;&#1604;&#1593;&#1605;&#1604;&#1577;</span>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="Currency_nameTextBox" runat="server" 
                            Text='<%# Bind("Currency_name") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="Currency_nameTextBox" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <span lang="ar-sa">&#1575;&#1604;&#1575;&#1582;&#1578;&#1589;&#1575;&#1585;</span></td>
                    <td>
                        <asp:TextBox ID="AbbreviationTextBox" runat="server" 
                            Text='<%# Bind("Abbreviation") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="AbbreviationTextBox" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span lang="ar-sa">&#1589;&#1608;&#1585;&#1577; &#1575;&#1604;&#1593;&#1605;&#1604;&#1577;</span></td>
                    <td>
                        &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td>
                        <span lang="ar-sa">&#1580;&#1586;&#1569; &#1575;&#1604;&#1593;&#1605;&#1604;&#1577;</span></td>
                    <td>
                        <asp:TextBox ID="Sub_CurrencyTextBox" runat="server" 
                            Text='<%# Bind("Sub_Currency") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="Sub_CurrencyTextBox" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td align="center">
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="&#1575;&#1590;&#1575;&#1601;&#1577;" Font-Bold="True" />
                        &nbsp;<span lang="en-us">&nbsp; </span>
                        <asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="&#1575;&#1604;&#1594;&#1575;&#1569;" 
                            Font-Bold="True" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </InsertItemTemplate>
        <ItemTemplate>
            Curr_no:
            <asp:Label ID="Curr_noLabel" runat="server" Text='<%# Eval("Curr_no") %>' />
            <br />
            Currency_name:
            <asp:Label ID="Currency_nameLabel" runat="server" 
                Text='<%# Bind("Currency_name") %>' />
            <br />
            Currency_img:
            <asp:Label ID="Currency_imgLabel" runat="server" 
                Text='<%# Bind("Currency_img") %>' />
            <br />
            Abbreviation:
            <asp:Label ID="AbbreviationLabel" runat="server" 
                Text='<%# Bind("Abbreviation") %>' />
            <br />
            Sub_Currency:
            <asp:Label ID="Sub_CurrencyLabel" runat="server" 
                Text='<%# Bind("Sub_Currency") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="Curr_no" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None" Width="100%">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                CancelText="&#1575;&#1604;&#1594;&#1575;&#1569;" DeleteText="&#1581;&#1584;&#1601;" EditText="&#1578;&#1581;&#1585;&#1610;&#1585;" InsertText="&#1575;&#1590;&#1575;&#1601;&#1577;" 
                UpdateText="&#1578;&#1593;&#1583;&#1610;&#1604;" />
            <asp:BoundField DataField="Curr_no" HeaderText="&#1585;&#1602;&#1605; &#1575;&#1604;&#1593;&#1605;&#1604;&#1577;" InsertVisible="False" 
                ReadOnly="True" SortExpression="Curr_no" />
            <asp:BoundField DataField="Currency_name" HeaderText="&#1575;&#1587;&#1605; &#1575;&#1604;&#1593;&#1605;&#1604;&#1577;" 
                SortExpression="Currency_name" />
            <asp:TemplateField HeaderText="&#1589;&#1608;&#1585;&#1577; &#1575;&#1604;&#1593;&#1605;&#1604;&#1577;" SortExpression="Currency_img">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Currency_img") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image3" runat="server" Height="42px" 
                        ImageUrl='<%# Eval("Currency_img") %>' Width="53px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Abbreviation" HeaderText="&#1575;&#1604;&#1575;&#1582;&#1578;&#1589;&#1575;&#1585;" 
                SortExpression="Abbreviation" />
            <asp:BoundField DataField="Sub_Currency" HeaderText="&#1580;&#1586;&#1569; &#1575;&#1604;&#1593;&#1605;&#1604;&#1577;" 
                SortExpression="Sub_Currency" />
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ebankConnectionString1 %>" 
        DeleteCommand="DELETE FROM [Currency] WHERE [Curr_no] = @Curr_no" 
        InsertCommand="INSERT INTO [Currency] ([Currency_name], [Currency_img], [Abbreviation], [Sub_Currency]) VALUES (@Currency_name, @Currency_img, @Abbreviation, @Sub_Currency)" 
        ProviderName="<%$ ConnectionStrings:ebankConnectionString1.ProviderName %>" 
        SelectCommand="SELECT [Curr_no], [Currency_name], [Currency_img], [Abbreviation], [Sub_Currency] FROM [Currency]" 
        UpdateCommand="UPDATE [Currency] SET [Currency_name] = @Currency_name, [Currency_img] = @Currency_img, [Abbreviation] = @Abbreviation, [Sub_Currency] = @Sub_Currency WHERE [Curr_no] = @Curr_no">
        <DeleteParameters>
            <asp:Parameter Name="Curr_no" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Currency_name" Type="String" />
            <asp:Parameter Name="Currency_img" Type="String" />
            <asp:Parameter Name="Abbreviation" Type="String" />
            <asp:Parameter Name="Sub_Currency" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Currency_name" Type="String" />
            <asp:Parameter Name="Currency_img" Type="String" />
            <asp:Parameter Name="Abbreviation" Type="String" />
            <asp:Parameter Name="Sub_Currency" Type="String" />
            <asp:Parameter Name="Curr_no" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>

