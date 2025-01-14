<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Pools.aspx.cs" Inherits="Admin_Pools" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="right">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" 
            DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="100%">
            <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Q:
                <asp:TextBox ID="QTextBox" runat="server" Text='<%# Bind("Q") %>' />
                <br />
                a1:
                <asp:TextBox ID="a1TextBox" runat="server" Text='<%# Bind("a1") %>' />
                <br />
                a2:
                <asp:TextBox ID="a2TextBox" runat="server" Text='<%# Bind("a2") %>' />
                <br />
                a3:
                <asp:TextBox ID="a3TextBox" runat="server" Text='<%# Bind("a3") %>' />
                <br />
                r1:
                <asp:TextBox ID="r1TextBox" runat="server" Text='<%# Bind("r1") %>' />
                <br />
                r2:
                <asp:TextBox ID="r2TextBox" runat="server" Text='<%# Bind("r2") %>' />
                <br />
                r3:
                <asp:TextBox ID="r3TextBox" runat="server" Text='<%# Bind("r3") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table class="style1000005">
                    <tr>
                        <td align="center" bgcolor="#5D7B9D" colspan="4" height="30">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                                ForeColor="White" Text="&#1575;&#1587;&#1578;&#1601;&#1578;&#1575;&#1569;"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <span lang="ar-sa">&#1575;&#1604;&#1587;&#1572;&#1575;&#1604;</span><span lang="en-us"> </span>
                        </td>
                        <td>
                            <asp:TextBox ID="QTextBox" runat="server" Text='<%# Bind("Q") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="QTextBox" Display="Dynamic" ErrorMessage="*" 
                                ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <span lang="ar-sa">&#1575;&#1604;&#1575;&#1580;&#1575;&#1576;&#1577; &#1575;&#1604;&#1575;&#1608;&#1604;&#1609;</span></td>
                        <td>
                            <asp:TextBox ID="a1TextBox" runat="server" Text='<%# Bind("a1") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="a1TextBox" Display="Dynamic" ErrorMessage="*" 
                                ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <span lang="ar-sa">&#1575;&#1604;&#1575;&#1580;&#1575;&#1576;&#1577; &#1575;&#1604;&#1579;&#1575;&#1606;&#1610;&#1577;</span></td>
                        <td>
                            <asp:TextBox ID="a2TextBox" runat="server" Text='<%# Bind("a2") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="a2TextBox" Display="Dynamic" ErrorMessage="*" 
                                ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <span lang="ar-sa">&#1575;&#1604;&#1575;&#1580;&#1575;&#1576;&#1577; &#1575;&#1604;&#1579;&#1575;&#1604;&#1579;&#1577;</span></td>
                        <td>
                            <asp:TextBox ID="a3TextBox" runat="server" Text='<%# Bind("a3") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="a3TextBox" Display="Dynamic" ErrorMessage="*" 
                                ValidationGroup="v1"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;<asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="&#1575;&#1590;&#1575;&#1601;&#1577;" ValidationGroup="v1" 
                                Font-Size="Medium" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="&#1575;&#1604;&#1594;&#1575;&#1569;" 
                                Font-Size="Medium" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </InsertItemTemplate>
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Q:
                <asp:Label ID="QLabel" runat="server" Text='<%# Bind("Q") %>' />
                <br />
                a1:
                <asp:Label ID="a1Label" runat="server" Text='<%# Bind("a1") %>' />
                <br />
                a2:
                <asp:Label ID="a2Label" runat="server" Text='<%# Bind("a2") %>' />
                <br />
                a3:
                <asp:Label ID="a3Label" runat="server" Text='<%# Bind("a3") %>' />
                <br />
                r1:
                <asp:Label ID="r1Label" runat="server" Text='<%# Bind("r1") %>' />
                <br />
                r2:
                <asp:Label ID="r2Label" runat="server" Text='<%# Bind("r2") %>' />
                <br />
                r3:
                <asp:Label ID="r3Label" runat="server" Text='<%# Bind("r3") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    
 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." ForeColor="#333333" 
            GridLines="None" Width="100%" AllowPaging="True" AllowSorting="True">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                    SortExpression="Id" InsertVisible="False" />
                <asp:BoundField DataField="Q" HeaderText="Q" SortExpression="Q" />
                <asp:BoundField DataField="a1" HeaderText="a1" 
                    SortExpression="a1" />
                <asp:BoundField DataField="a2" HeaderText="a2" 
                    SortExpression="a2" />
                <asp:BoundField DataField="a3" HeaderText="a3" 
                    SortExpression="a3" />
                <asp:BoundField DataField="r1" HeaderText="r1" 
                    SortExpression="r1" />
                <asp:BoundField DataField="r2" HeaderText="r2" 
                    SortExpression="r2" />
                <asp:BoundField DataField="r3" HeaderText="r3" 
                    SortExpression="r3" />
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
            DeleteCommand="DELETE FROM [ope] WHERE [Id] = @Id" 
            InsertCommand="INSERT INTO ope(Q, a1, a2, a3) VALUES (@Q, @a1, @a2, @a3)" 
            ProviderName="<%$ ConnectionStrings:ebankConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [Id], [Q], [a1], [a2], [a3], [r1], [r2], [r3] FROM [ope]" 
            
            UpdateCommand="UPDATE [ope] SET [Q] = @Q, [a1] = @a1, [a2] = @a2, [a3] = @a3, [r1] = @r1, [r2] = @r2, [r3] = @r3 WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Q" Type="String" />
                <asp:Parameter Name="a1" Type="String" />
                <asp:Parameter Name="a2" Type="String" />
                <asp:Parameter Name="a3" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Q" Type="String" />
                <asp:Parameter Name="a1" Type="String" />
                <asp:Parameter Name="a2" Type="String" />
                <asp:Parameter Name="a3" Type="String" />
                <asp:Parameter Name="r1" Type="Int32" />
                <asp:Parameter Name="r2" Type="Int32" />
                <asp:Parameter Name="r3" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

