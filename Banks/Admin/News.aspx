<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="Admin_News" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style19
        {
            
        }
        .style1000009
        {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="right">
         <asp:FormView ID="FormView1" runat="server" DataKeyNames="NewsID" 
            DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="100%" 
             oniteminserting="FormView1_ItemInserting">
            <EditItemTemplate>
                NewsID:
                <asp:Label ID="NewsIDLabel1" runat="server" Text='<%# Eval("NewsID") %>' />
                <br />
                NewsDate:
                <asp:TextBox ID="NewsDateTextBox" runat="server" 
                    Text='<%# Bind("NewsDate") %>' />
                <br />
                NewsSubject:
                <asp:TextBox ID="NewsSubjectTextBox" runat="server" 
                    Text='<%# Bind("NewsSubject") %>' />
                <br />
                NewsBody:
                <asp:TextBox ID="NewsBodyTextBox" runat="server" 
                    Text='<%# Bind("NewsBody") %>' />
                <br />
                NewsStatus:
                <asp:CheckBox ID="NewsStatusCheckBox" runat="server" 
                    Checked='<%# Bind("NewsStatus") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table   width="100%">
                    <tr>
                        <td align="center" bgcolor="#5D7B9D" colspan="4" height="30">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="White" Text="&#1575;&#1604;&#1575;&#1582;&#1576;&#1575;&#1585;"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span lang="ar-sa">&#1575;&#1604;&#1605;&#1608;&#1590;&#1608;&#1593;</span>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="NewsSubjectTextBox" runat="server" CssClass=" " 
                                Text='<%# Bind("NewsSubject") %>' EnableViewState="False" Height="19px" 
                                Width="395px" MaxLength="50" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="NewsSubjectTextBox" Display="Dynamic" ErrorMessage="*" 
                                ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <span lang="ar-sa">&#1575;&#1604;&#1606;&#1589;</span>&nbsp;<br />
                        </td>
                        <td>
                            <asp:TextBox ID="NewsBodyTextBox" runat="server" 
                                Text='<%# Bind("NewsBody") %>' Height="124px" TextMode="MultiLine" 
                                Width="396px" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="NewsBodyTextBox" Display="Dynamic" ErrorMessage="*" 
                                ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td width="50%">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1000009">
                            <span lang="ar-sa">&#1575;&#1604;&#1606;&#1588;&#1585;</span>:
                            <br />
                        </td>
                        <td class="style1000009">
                            <asp:CheckBox ID="NewsStatusCheckBox" runat="server" 
                                Checked='<%# Bind("NewsStatus") %>' Text=" " />
                        </td>
                        <td class="style1000009">
                            </td>
                        <td class="style1000009">
                            </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="&#1575;&#1590;&#1575;&#1601;&#1577;" ValidationGroup="v1" 
                                Font-Size="Medium" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="&#1575;&#1604;&#1594;&#1575;&#1569;" 
                                Font-Size="Medium" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                NewsID:
                <asp:Label ID="NewsIDLabel" runat="server" Text='<%# Eval("NewsID") %>' />
                <br />
                NewsDate:
                <asp:Label ID="NewsDateLabel" runat="server" Text='<%# Bind("NewsDate") %>' />
                <br />
                NewsSubject:
                <asp:Label ID="NewsSubjectLabel" runat="server" 
                    Text='<%# Bind("NewsSubject") %>' />
                <br />
                NewsBody:
                <asp:Label ID="NewsBodyLabel" runat="server" Text='<%# Bind("NewsBody") %>' />
                <br />
                NewsStatus:
                <asp:CheckBox ID="NewsStatusCheckBox" runat="server" 
                    Checked='<%# Bind("NewsStatus") %>' Enabled="false" />
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
    </p>
    <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Width="928px">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="NewsID" DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." ForeColor="#333333" 
            GridLines="None" Width="100%">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
            <Columns>
                <asp:CommandField ShowEditButton="True" CancelText="&#1575;&#1604;&#1594;&#1575;&#1569;" DeleteText="&#1581;&#1584;&#1601;" 
                    EditText="&#1578;&#1581;&#1585;&#1610;&#1585;" ShowDeleteButton="True" UpdateText="&#1578;&#1593;&#1583;&#1610;&#1604;" />
                <asp:BoundField DataField="NewsID" HeaderText="&#1585;&#1602;&#1605; &#1575;&#1604;&#1582;&#1576;&#1585;" InsertVisible="False" 
                    ReadOnly="True" SortExpression="NewsID" />
                <asp:BoundField DataField="NewsDate" HeaderText="&#1578;&#1575;&#1585;&#1610;&#1582; &#1575;&#1604;&#1582;&#1576;&#1585;" ReadOnly="True" 
                    SortExpression="NewsDate" />
                <asp:TemplateField HeaderText="&#1575;&#1604;&#1605;&#1608;&#1590;&#1608;&#1593;" SortExpression="NewsSubject">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" MaxLength="50" 
                            Text='<%# Bind("NewsSubject") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("NewsSubject") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="NewsBody" HeaderText="&#1575;&#1604;&#1606;&#1589;" 
                    SortExpression="NewsBody" />
                <asp:CheckBoxField DataField="NewsStatus" HeaderText="&#1575;&#1604;&#1606;&#1588;&#1585;" 
                    SortExpression="NewsStatus" />
            </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
    </asp:Panel>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ebankConnectionString1 %>" 
            DeleteCommand="DELETE FROM [News] WHERE [NewsID] = @NewsID" 
            InsertCommand="INSERT INTO [News] ([NewsDate], [NewsSubject], [NewsBody], [NewsStatus]) VALUES (@NewsDate, @NewsSubject, @NewsBody, @NewsStatus)" 
            ProviderName="<%$ ConnectionStrings:ebankConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [NewsID], [NewsDate], [NewsSubject], [NewsBody], [NewsStatus] FROM [News]" 
            UpdateCommand="UPDATE [News] SET [NewsDate] = @NewsDate, [NewsSubject] = @NewsSubject, [NewsBody] = @NewsBody, [NewsStatus] = @NewsStatus WHERE [NewsID] = @NewsID">
            <DeleteParameters>
                <asp:Parameter Name="NewsID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NewsDate" Type="DateTime" />
                <asp:Parameter Name="NewsSubject" Type="String" />
                <asp:Parameter Name="NewsBody" Type="String" />
                <asp:Parameter Name="NewsStatus" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NewsDate" Type="DateTime" />
                <asp:Parameter Name="NewsSubject" Type="String" />
                <asp:Parameter Name="NewsBody" Type="String" />
                <asp:Parameter Name="NewsStatus" Type="Boolean" />
                <asp:Parameter Name="NewsID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

