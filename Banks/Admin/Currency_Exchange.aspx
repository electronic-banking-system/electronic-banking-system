<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Currency_Exchange.aspx.cs" Inherits="Admin_Currency_Exchange" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="right"  >
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Exc_No" 
            DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="176px" 
            Width="100%" oniteminserting="FormView1_ItemInserting">
            <EditItemTemplate>
                Exc_No:
                <asp:Label ID="Exc_NoLabel1" runat="server" Text='<%# Eval("Exc_No") %>' />
                <br />
                Curr_No:
                <asp:TextBox ID="Curr_NoTextBox" runat="server" Text='<%# Bind("Curr_No") %>' />
                <br />
                Curr_date:
                <asp:TextBox ID="Curr_dateTextBox" runat="server" 
                    Text='<%# Bind("Curr_date") %>' />
                <br />
                RateSale:
                <asp:TextBox ID="RateSaleTextBox" runat="server" 
                    Text='<%# Bind("RateSale") %>' />
                <br />
                RateBuy:
                <asp:TextBox ID="RateBuyTextBox" runat="server" Text='<%# Bind("RateBuy") %>' />
                <br />
                Status:
                <asp:CheckBox ID="StatusCheckBox" runat="server" 
                    Checked='<%# Bind("Status") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table width="100%">
                    <tr>
                        <td align="center" bgcolor="#5D7B9D" colspan="3" height="28">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="White" Text="&#1587;&#1593;&#1585; &#1575;&#1604;&#1589;&#1585;&#1601;"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" width="40%">
                            <span lang="ar-sa">&#1585;&#1602;&#1605; &#1575;&#1604;&#1593;&#1605;&#1604;&#1577;</span></td>
                        <td class="style19">
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataSourceID="SqlDataSource2" DataTextField="Currency_name" 
                                DataValueField="Curr_no" Height="23px" SelectedValue='<%# Bind("Curr_No") %>' 
                                Width="130px">
                            </asp:DropDownList>
                        </td>
                        <td width="40%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                            <span lang="ar-sa">&#1587;&#1593;&#1585; &#1575;&#1604;&#1576;&#1610;&#1593;</span></td>
                        <td class="style19">
                            <asp:TextBox ID="RateSaleTextBox" runat="server" 
                                Text='<%# Bind("RateSale") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="RateSaleTextBox" Display="Dynamic" ErrorMessage="*" 
                                ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <span lang="ar-sa">&#1587;&#1593;&#1585; &#1575;&#1604;&#1588;&#1585;&#1575;&#1569;</span></td>
                        <td class="style19">
                            <asp:TextBox ID="RateBuyTextBox" runat="server" Text='<%# Bind("RateBuy") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="RateBuyTextBox" Display="Dynamic" ErrorMessage="*" 
                                ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style20">
                            &nbsp;</td>
                        <td class="style19">
                            <span lang="ar-sa">&nbsp;</span><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="&#1575;&#1604;&#1575;&#1590;&#1575;&#1601;&#1577;" ValidationGroup="v1" 
                                Font-Size="Medium" />
                            <span lang="ar-sa">&nbsp; </span>&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="&#1575;&#1604;&#1594;&#1575;&#1569;" 
                                Font-Size="Medium" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ebankConnectionString1 %>" 
                    SelectCommand="SELECT [Curr_no], [Currency_name] FROM [Currency]">
                </asp:SqlDataSource>
            </InsertItemTemplate>
            <ItemTemplate>
                Exc_No:
                <asp:Label ID="Exc_NoLabel" runat="server" Text='<%# Eval("Exc_No") %>' />
                <br />
                Curr_No:
                <asp:Label ID="Curr_NoLabel" runat="server" Text='<%# Bind("Curr_No") %>' />
                <br />
                Curr_date:
                <asp:Label ID="Curr_dateLabel" runat="server" Text='<%# Bind("Curr_date") %>' />
                <br />
                RateSale:
                <asp:Label ID="RateSaleLabel" runat="server" Text='<%# Bind("RateSale") %>' />
                <br />
                RateBuy:
                <asp:Label ID="RateBuyLabel" runat="server" Text='<%# Bind("RateBuy") %>' />
                <br />
                Status:
                <asp:CheckBox ID="StatusCheckBox" runat="server" 
                    Checked='<%# Bind("Status") %>' Enabled="false" />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Exc_No" 
            DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." Width="100%" 
            CellPadding="4" ForeColor="#333333">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    CancelText="&#1575;&#1604;&#1594;&#1575;&#1569;" DeleteText="&#1581;&#1584;&#1601;" EditText="&#1578;&#1581;&#1585;&#1610;&#1585;" UpdateText="&#1578;&#1593;&#1583;&#1610;&#1604;" />
                <asp:BoundField DataField="Exc_No" HeaderText="&#1585;&#1602;&#1605; &#1575;&#1604;&#1589;&#1585;&#1601;" ReadOnly="True" 
                    SortExpression="Exc_No" InsertVisible="False" />
                <asp:BoundField DataField="Curr_No" HeaderText="&#1585;&#1602;&#1605; &#1575;&#1604;&#1593;&#1605;&#1604;&#1577;" 
                    SortExpression="Curr_No" />
                <asp:BoundField DataField="Curr_date" HeaderText="&#1578;&#1575;&#1585;&#1610;&#1582; &#1575;&#1604;&#1593;&#1605;&#1604;&#1577;" 
                    SortExpression="Curr_date" />
                <asp:BoundField DataField="RateSale" HeaderText="&#1587;&#1593;&#1585; &#1575;&#1604;&#1576;&#1610;&#1593;" 
                    SortExpression="RateSale" />
                <asp:BoundField DataField="RateBuy" HeaderText="&#1587;&#1593;&#1585; &#1575;&#1604;&#1588;&#1585;&#1575;&#1569;" 
                    SortExpression="RateBuy" />
                <asp:CheckBoxField DataField="Status" HeaderText="&#1575;&#1604;&#1581;&#1575;&#1604;&#1577;" 
                    SortExpression="Status" />
            </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ebankConnectionString1 %>" 
            DeleteCommand="DELETE FROM [Currency_Exchange] WHERE [Exc_No] = @Exc_No" 
            InsertCommand="INSERT INTO [Currency_Exchange] ([Curr_No], [Curr_date], [RateSale], [RateBuy], [Status]) VALUES (@Curr_No, @Curr_date, @RateSale, @RateBuy, @Status)" 
            ProviderName="<%$ ConnectionStrings:ebankConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [Exc_No], [Curr_No], [Curr_date], [RateSale], [RateBuy], [Status] FROM [Currency_Exchange]" 
            UpdateCommand="UPDATE [Currency_Exchange] SET [Curr_No] = @Curr_No, [Curr_date] = @Curr_date, [RateSale] = @RateSale, [RateBuy] = @RateBuy, [Status] = @Status WHERE [Exc_No] = @Exc_No">
            <DeleteParameters>
                <asp:Parameter Name="Exc_No" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Curr_No" Type="Int32" />
                <asp:Parameter Name="Curr_date" Type="DateTime" />
                <asp:Parameter Name="RateSale" Type="Decimal" />
                <asp:Parameter Name="RateBuy" Type="Decimal" />
                <asp:Parameter Name="Status" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Curr_No" Type="Int32" />
                <asp:Parameter Name="Curr_date" Type="DateTime" />
                <asp:Parameter Name="RateSale" Type="Decimal" />
                <asp:Parameter Name="RateBuy" Type="Decimal" />
                <asp:Parameter Name="Status" Type="Boolean" />
                <asp:Parameter Name="Exc_No" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</div>    
</asp:Content>

