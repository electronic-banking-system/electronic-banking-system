<%@ Page Language="C#" MasterPageFile="~/cust/MasterPage.master" AutoEventWireup="true" CodeFile="ViewALLTranscation.aspx.cs" Inherits="Cust_ViewALLTranscation" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table  width="100%">
            <tr>
                <td align="center" bgcolor="#5D7B9D" colspan="3" height="30">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="White" Text="View All Transcation"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td height="35">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                        DataSourceID="SqlDataSource1" EmptyDataText="No Founded" ForeColor="#333333" 
                        GridLines="None" Width="100%">
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                        <Columns>
                            <asp:BoundField DataField="trans_type_name" HeaderText="Trans_type" 
                                SortExpression="trans_type_name" />
                            <asp:BoundField DataField="trans_date_time" DataFormatString="{0:d}" 
                                HeaderText="Date" SortExpression="trans_date_time" />
                            <asp:BoundField DataField="cust_act_no" HeaderText="Accounts no" 
                                SortExpression="cust_act_no" />
                            <asp:BoundField DataField="Descripation" HeaderText="Desc" 
                                SortExpression="Descripation" />
                            <asp:BoundField DataField="Credit" HeaderText="Credit" 
                                SortExpression="Credit" />
                            <asp:BoundField DataField="Debit" HeaderText="Debit" SortExpression="Debit" />
                            <asp:BoundField DataField="Balance" HeaderText="Balance" 
                                SortExpression="Balance" />
                        </Columns>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
                            HorizontalAlign="Center" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ebankConnectionString1 %>" 
            DeleteCommand="DELETE FROM [Transactions] WHERE [trans_id] = @trans_id" 
            InsertCommand="INSERT INTO [Transactions] ([trans_type_id], [trans_date_time], [Amount]) VALUES (@trans_type_id, @trans_date_time, @Amount)" 
            ProviderName="<%$ ConnectionStrings:ebankConnectionString1.ProviderName %>" 
            SelectCommand="SELECT trans_type.trans_type_name, Transactions.trans_date_time, Transactions.Descripation, Transactions.cust_act_no, Transactions.Credit, Transactions.Debit, Transactions.Balance FROM Transactions INNER JOIN trans_type ON Transactions.trans_type_id = trans_type.trans_type_id WHERE (Transactions.cust_act_no = @cust_act_no)" 
            UpdateCommand="UPDATE [Transactions] SET [trans_type_id] = @trans_type_id, [trans_date_time] = @trans_date_time, [Amount] = @Amount WHERE [trans_id] = @trans_id">
            <SelectParameters>
                <asp:CookieParameter CookieName="AccountID" Name="cust_act_no" Type="Int32" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="trans_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="trans_type_id" Type="Int32" />
                <asp:Parameter Name="trans_date_time" Type="DateTime" />
                <asp:Parameter Name="Amount" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="trans_type_id" Type="Int32" />
                <asp:Parameter Name="trans_date_time" Type="DateTime" />
                <asp:Parameter Name="Amount" Type="Decimal" />
                <asp:Parameter Name="trans_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>

