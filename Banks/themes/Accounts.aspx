<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Accounts.aspx.cs" Inherits="Admin_Accounts" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            margin-right: 0;
        }
        .style7
        {
            width: 100%;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table  width="100%">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style6">
                    <br />
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ebankConnectionString1 %>" 
                        DeleteCommand="DELETE FROM [Accounts] WHERE [acc_cust_no] = @original_acc_cust_no AND [cust_id] = @original_cust_id AND [act_branch_id] = @original_act_branch_id AND [cust_act_type_id] = @original_cust_act_type_id AND [act_opening_date] = @original_act_opening_date AND [current_balance] = @original_current_balance AND [opening_balance] = @original_opening_balance AND [act_status_id] = @original_act_status_id AND [act_nominee_name] = @original_act_nominee_name AND [other_details] = @original_other_details" 
                        InsertCommand="INSERT INTO [Accounts] ([acc_cust_no], [cust_id], [act_branch_id], [cust_act_type_id], [act_opening_date], [current_balance], [opening_balance], [act_status_id], [act_nominee_name], [other_details]) VALUES (@acc_cust_no, @cust_id, @act_branch_id, @cust_act_type_id, @act_opening_date, @current_balance, @opening_balance, @act_status_id, @act_nominee_name, @other_details)" 
                        ProviderName="<%$ ConnectionStrings:ebankConnectionString1.ProviderName %>" 
                        SelectCommand="SELECT acc_cust_no, cust_id, act_branch_id, cust_act_type_id, act_opening_date, current_balance, opening_balance, act_status_id, act_nominee_name, other_details FROM Accounts WHERE (cust_id = @cust_id)" 
                        
                        
                        UpdateCommand="UPDATE [Accounts] SET [cust_id] = @cust_id, [act_branch_id] = @act_branch_id, [cust_act_type_id] = @cust_act_type_id, [act_opening_date] = @act_opening_date, [current_balance] = @current_balance, [opening_balance] = @opening_balance, [act_status_id] = @act_status_id, [act_nominee_name] = @act_nominee_name, [other_details] = @other_details WHERE [acc_cust_no] = @original_acc_cust_no AND [cust_id] = @original_cust_id AND [act_branch_id] = @original_act_branch_id AND [cust_act_type_id] = @original_cust_act_type_id AND [act_opening_date] = @original_act_opening_date AND [current_balance] = @original_current_balance AND [opening_balance] = @original_opening_balance AND [act_status_id] = @original_act_status_id AND [act_nominee_name] = @original_act_nominee_name AND [other_details] = @original_other_details" 
                        ConflictDetection="CompareAllValues" 
                        OldValuesParameterFormatString="original_{0}">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="cust_id" 
                                PropertyName="SelectedValue" />
                        </SelectParameters>
                        <DeleteParameters>
                            <asp:Parameter Name="original_acc_cust_no" Type="Decimal" />
                            <asp:Parameter Name="original_cust_id" Type="Int32" />
                            <asp:Parameter Name="original_act_branch_id" Type="Int32" />
                            <asp:Parameter Name="original_cust_act_type_id" Type="Int32" />
                            <asp:Parameter Name="original_act_opening_date" Type="DateTime" />
                            <asp:Parameter Name="original_current_balance" Type="Decimal" />
                            <asp:Parameter Name="original_opening_balance" Type="Decimal" />
                            <asp:Parameter Name="original_act_status_id" Type="Int32" />
                            <asp:Parameter Name="original_act_nominee_name" Type="String" />
                            <asp:Parameter Name="original_other_details" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="acc_cust_no" Type="Decimal" />
                            <asp:Parameter Name="cust_id" Type="Int32" />
                            <asp:Parameter Name="act_branch_id" Type="Int32" />
                            <asp:Parameter Name="cust_act_type_id" Type="Int32" />
                             
                            <asp:Parameter Name="act_opening_date" Type="DateTime" />
                            <asp:Parameter Name="current_balance" Type="Decimal" />
                            <asp:Parameter Name="opening_balance" Type="Decimal" />
                            <asp:Parameter Name="act_status_id" Type="Int32" />
                            <asp:Parameter Name="act_nominee_name" Type="String" />
                            <asp:Parameter Name="other_details" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="cust_id" Type="Int32" />
                            <asp:Parameter Name="act_branch_id" Type="Int32" />
                            <asp:Parameter Name="cust_act_type_id" Type="Int32" />
                           
                            <asp:Parameter Name="act_opening_date" Type="DateTime" />
                            <asp:Parameter Name="current_balance" Type="Decimal" />
                            <asp:Parameter Name="opening_balance" Type="Decimal" />
                            <asp:Parameter Name="act_status_id" Type="Int32" />
                            <asp:Parameter Name="act_nominee_name" Type="String" />
                            <asp:Parameter Name="other_details" Type="String" />
                            <asp:Parameter Name="original_acc_cust_no" Type="Decimal" />
                            <asp:Parameter Name="original_cust_id" Type="Int32" />
                            <asp:Parameter Name="original_act_branch_id" Type="Int32" />
                            <asp:Parameter Name="original_cust_act_type_id" Type="Int32" />
                            <asp:Parameter Name="original_act_opening_date" Type="DateTime" />
                            <asp:Parameter Name="original_current_balance" Type="Decimal" />
                            <asp:Parameter Name="original_opening_balance" Type="Decimal" />
                            <asp:Parameter Name="original_act_status_id" Type="Int32" />
                            <asp:Parameter Name="original_act_nominee_name" Type="String" />
                            <asp:Parameter Name="original_other_details" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
&nbsp;
                    <br />
                    <table  width="100%">
                        <tr>
                            <td width=20%>
                                <asp:Label ID="Label1" runat="server" Text="Customers Name :" Width="200px"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                    DataSourceID="SqlDataSource2" DataTextField="Cust_Name" 
                                    DataValueField="Cust_id" Height="20px" Width="200px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ebankConnectionString2 %>" 
                                    SelectCommand="SELECT DISTINCT [Cust_id], [Cust_Name] FROM [Customer]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <hr />
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                    <br />
                    </td>
                <td>
                    <asp:Panel ID="Panel1" runat="server" Direction="LeftToRight" Height="364px" 
                        HorizontalAlign="Right" ScrollBars="Auto" Width="500px">
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                            BorderWidth="1px" CellPadding="2" DataKeyNames="acc_cust_no" 
                            DataSourceID="SqlDataSource1" 
                            EmptyDataText="There are no data records to display." ForeColor="Black" 
                            GridLines="Horizontal" PageSize="8" style="font-weight: 700" Width="100%">
                            <FooterStyle BackColor="Tan" />
                            <Columns>
                                <asp:TemplateField ShowHeader="False">
                                    <EditItemTemplate>
                                        &nbsp;<table class="style7">
                                            <tr>
                                                <td>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                                                        CommandName="Update" onclientclick="return confirm('are you sure?');" 
                                                        Text="Update" ValidationGroup="Update"></asp:LinkButton>
                                                </td>
                                                <td>
                                                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                                        CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        &nbsp;&nbsp;&nbsp; &nbsp;<table class="style7">
                                            <tr>
                                                <td>
                                                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" 
                                                        CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                </td>
                                                <td>
                                                    <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" 
                                                        CommandName="Delete" onclientclick="return confirm('are you sure?');" 
                                                        Text="Delete" ValidationGroup="Delete"></asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="acc_cust_no" HeaderText="acc_cust_no" 
                                    ReadOnly="True" SortExpression="acc_cust_no" />
                                <asp:BoundField DataField="cust_id" HeaderText="cust_id" 
                                    SortExpression="cust_id" />
                                <asp:BoundField DataField="act_branch_id" HeaderText="act_branch_id" 
                                    SortExpression="act_branch_id" />
                                <asp:BoundField DataField="cust_act_type_id" HeaderText="cust_act_type_id" 
                                    SortExpression="cust_act_type_id" />
                                 
                                <asp:BoundField DataField="act_opening_date" HeaderText="act_opening_date" 
                                    SortExpression="act_opening_date" />
                                <asp:BoundField DataField="opening_balance" HeaderText="opening_balance" 
                                    SortExpression="opening_balance" />
                                <asp:BoundField DataField="current_balance" HeaderText="current_balance" 
                                    SortExpression="current_balance" />
                                <asp:BoundField DataField="act_status_id" HeaderText="act_status_id" 
                                    SortExpression="act_status_id" />
                                <asp:BoundField DataField="act_nominee_name" HeaderText="act_nominee_name" 
                                    SortExpression="act_nominee_name" />
                                <asp:BoundField DataField="other_details" HeaderText="other_details" 
                                    SortExpression="other_details" />
                            </Columns>
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        </asp:GridView>
                    </asp:Panel>
                    <br />
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
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>

