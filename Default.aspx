<%@ Page Language="C#" MasterPageFile="~/Cust2/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Cust2_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table  width="100%" style="border: medium solid #46669E">
            <tr>
                <td width="20%" bgcolor="#51648B" colspan="3" height="30">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
        DataKeyNames="CA_ID" DataSourceID="SqlDataSource1" Height="50px" Width="100%">
        <Fields>
            <asp:BoundField DataField="CA_ID" HeaderText="&#1585;&#1602;&#1605; &#1575;&#1604;&#1581;&#1587;&#1575;&#1576;" InsertVisible="False" 
                ReadOnly="True" SortExpression="CA_ID" />
            <asp:BoundField DataField="CA_NAME" HeaderText="&#1575;&#1587;&#1605; &#1575;&#1604;&#1593;&#1605;&#1610;&#1604;" 
                SortExpression="CA_NAME" />
            <asp:BoundField DataField="CA_PNO" HeaderText="&#1585;&#1602;&#1605; &#1575;&#1604;&#1576;&#1591;&#1575;&#1602;&#1577;" 
                SortExpression="CA_PNO" />
            <asp:BoundField DataField="CA_PASSPORT_NO" HeaderText="&#1585;&#1602;&#1605; &#1575;&#1604;&#1580;&#1608;&#1575;&#1586;" 
                SortExpression="CA_PASSPORT_NO" />
            <asp:BoundField DataField="CA_TEL" HeaderText="&#1585;&#1602;&#1605; &#1575;&#1604;&#1578;&#1604;&#1601;&#1608;&#1606;" 
                SortExpression="CA_TEL" />
            <asp:BoundField DataField="CA_EMAIL" HeaderText="&#1575;&#1604;&#1575;&#1610;&#1605;&#1610;&#1604;" 
                SortExpression="CA_EMAIL" />
            <asp:BoundField DataField="CA_Address" HeaderText="&#1575;&#1604;&#1593;&#1606;&#1608;&#1575;&#1606;" 
                SortExpression="CA_Address" />
            <asp:BoundField DataField="CA_NAT" HeaderText="&#1575;&#1604;&#1580;&#1606;&#1587;&#1610;&#1577;" 
                SortExpression="CA_NAT" />
            <asp:BoundField DataField="CA_JOB" HeaderText="&#1575;&#1604;&#1593;&#1605;&#1604;" 
                SortExpression="CA_JOB" />
            <asp:BoundField DataField="CA_GENDER" HeaderText="&#1575;&#1604;&#1580;&#1606;&#1587;" 
                SortExpression="CA_GENDER" />
            <asp:BoundField DataField="CA_STATUS" HeaderText="&#1575;&#1604;&#1581;&#1575;&#1604;&#1577;" 
                SortExpression="CA_STATUS" />
            <asp:BoundField DataField="CA_CURR" HeaderText="&#1575;&#1604;&#1593;&#1605;&#1604;&#1577;" 
                SortExpression="CA_CURR" />
            <asp:BoundField DataField="CA_OPEN_DATE" HeaderText="&#1578;&#1575;&#1585;&#1610;&#1582; &#1601;&#1578;&#1581; &#1575;&#1604;&#1581;&#1587;&#1575;&#1576;" 
                SortExpression="CA_OPEN_DATE" />
            <asp:BoundField DataField="CA_TYPE" HeaderText="&#1606;&#1608;&#1593; &#1575;&#1604;&#1581;&#1587;&#1575;&#1576;" 
                SortExpression="CA_TYPE" />
            <asp:BoundField DataField="CA_PASSWORD" HeaderText="&#1575;&#1604;&#1576;&#1575;&#1587;&#1608;&#1585;&#1583;" 
                SortExpression="CA_PASSWORD" />
            <asp:BoundField DataField="CA_DESC" HeaderText="&#1578;&#1601;&#1575;&#1589;&#1610;&#1604; &#1575;&#1604;&#1581;&#1587;&#1575;&#1576;" 
                SortExpression="CA_DESC" />
            <asp:BoundField DataField="Expr1" HeaderText="&#1575;&#1580;&#1605;&#1575;&#1604;&#1610; &#1575;&#1604;&#1589;&#1585;&#1601;" 
                SortExpression="Expr1" />
            <asp:BoundField DataField="Expr2" HeaderText="&#1575;&#1580;&#1605;&#1575;&#1604;&#1610; &#1575;&#1604;&#1575;&#1610;&#1583;&#1575;&#1593;" 
                SortExpression="Expr2" />
            <asp:BoundField DataField="Expr3" HeaderText="&#1575;&#1580;&#1605;&#1575;&#1604;&#1610; &#1575;&#1604;&#1578;&#1581;&#1608;&#1610;&#1604;" 
                SortExpression="Expr3" />
            <asp:BoundField DataField="Expr4" HeaderText="&#1575;&#1604;&#1585;&#1589;&#1610;&#1583; &#1575;&#1604;&#1581;&#1575;&#1604;&#1610;" 
                SortExpression="Expr4" />
        </Fields>
    </asp:DetailsView>
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
        ConnectionString="<%$ ConnectionStrings:Trans_DBConnectionString1 %>" 
        DeleteCommand="DELETE FROM [Customer_Accounts] WHERE [CA_ID] = @CA_ID" 
        InsertCommand="INSERT INTO [Customer_Accounts] ([CA_NAME], [CA_PNO], [CA_PASSPORT_NO], [CA_TEL], [CA_EMAIL], [CA_Address], [CA_NAT], [CA_JOB], [CA_GENDER], [CA_STATUS], [CA_CURR], [CA_SIGN1], [CA_SIGN2], [CA_OPEN_DATE], [CA_TYPE], [CA_PASSWORD], [CA_DESC]) VALUES (@CA_NAME, @CA_PNO, @CA_PASSPORT_NO, @CA_TEL, @CA_EMAIL, @CA_Address, @CA_NAT, @CA_JOB, @CA_GENDER, @CA_STATUS, @CA_CURR, @CA_SIGN1, @CA_SIGN2, @CA_OPEN_DATE, @CA_TYPE, @CA_PASSWORD, @CA_DESC)" 
        ProviderName="<%$ ConnectionStrings:Trans_DBConnectionString1.ProviderName %>" 
        SelectCommand="SELECT Customer_Accounts.CA_ID, Customer_Accounts.CA_NAME, Customer_Accounts.CA_PNO, Customer_Accounts.CA_PASSPORT_NO, Customer_Accounts.CA_TEL, Customer_Accounts.CA_EMAIL, Customer_Accounts.CA_Address, Customer_Accounts.CA_NAT, Customer_Accounts.CA_JOB, Customer_Accounts.CA_GENDER, Customer_Accounts.CA_STATUS, Customer_Accounts.CA_CURR, Customer_Accounts.CA_SIGN1, Customer_Accounts.CA_SIGN2, Customer_Accounts.CA_OPEN_DATE, Customer_Accounts.CA_TYPE, Customer_Accounts.CA_PASSWORD, Customer_Accounts.CA_DESC, cus_acc_details_report.Expr1, cus_acc_details_report.Expr2, cus_acc_details_report.Expr3, cus_acc_details_report.Expr4 FROM Customer_Accounts LEFT OUTER JOIN cus_acc_details_report ON Customer_Accounts.CA_ID = cus_acc_details_report.CA_ID WHERE (Customer_Accounts.CA_NAME = @Custname)" 
        
            
            
            UpdateCommand="UPDATE [Customer_Accounts] SET [CA_NAME] = @CA_NAME, [CA_PNO] = @CA_PNO, [CA_PASSPORT_NO] = @CA_PASSPORT_NO, [CA_TEL] = @CA_TEL, [CA_EMAIL] = @CA_EMAIL, [CA_Address] = @CA_Address, [CA_NAT] = @CA_NAT, [CA_JOB] = @CA_JOB, [CA_GENDER] = @CA_GENDER, [CA_STATUS] = @CA_STATUS, [CA_CURR] = @CA_CURR, [CA_SIGN1] = @CA_SIGN1, [CA_SIGN2] = @CA_SIGN2, [CA_OPEN_DATE] = @CA_OPEN_DATE, [CA_TYPE] = @CA_TYPE, [CA_PASSWORD] = @CA_PASSWORD, [CA_DESC] = @CA_DESC WHERE [CA_ID] = @CA_ID">
        <SelectParameters>
            <asp:CookieParameter CookieName="Custname" Name="Custname" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="CA_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CA_NAME" Type="String" />
            <asp:Parameter Name="CA_PNO" Type="String" />
            <asp:Parameter Name="CA_PASSPORT_NO" Type="String" />
            <asp:Parameter Name="CA_TEL" Type="String" />
            <asp:Parameter Name="CA_EMAIL" Type="String" />
            <asp:Parameter Name="CA_Address" Type="String" />
            <asp:Parameter Name="CA_NAT" Type="String" />
            <asp:Parameter Name="CA_JOB" Type="String" />
            <asp:Parameter Name="CA_GENDER" Type="String" />
            <asp:Parameter Name="CA_STATUS" Type="String" />
            <asp:Parameter Name="CA_CURR" Type="String" />
            <asp:Parameter Name="CA_SIGN1" Type="String" />
            <asp:Parameter Name="CA_SIGN2" Type="String" />
            <asp:Parameter DbType="Date" Name="CA_OPEN_DATE" />
            <asp:Parameter Name="CA_TYPE" Type="String" />
            <asp:Parameter Name="CA_PASSWORD" Type="String" />
            <asp:Parameter Name="CA_DESC" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CA_NAME" Type="String" />
            <asp:Parameter Name="CA_PNO" Type="String" />
            <asp:Parameter Name="CA_PASSPORT_NO" Type="String" />
            <asp:Parameter Name="CA_TEL" Type="String" />
            <asp:Parameter Name="CA_EMAIL" Type="String" />
            <asp:Parameter Name="CA_Address" Type="String" />
            <asp:Parameter Name="CA_NAT" Type="String" />
            <asp:Parameter Name="CA_JOB" Type="String" />
            <asp:Parameter Name="CA_GENDER" Type="String" />
            <asp:Parameter Name="CA_STATUS" Type="String" />
            <asp:Parameter Name="CA_CURR" Type="String" />
            <asp:Parameter Name="CA_SIGN1" Type="String" />
            <asp:Parameter Name="CA_SIGN2" Type="String" />
            <asp:Parameter DbType="Date" Name="CA_OPEN_DATE" />
            <asp:Parameter Name="CA_TYPE" Type="String" />
            <asp:Parameter Name="CA_PASSWORD" Type="String" />
            <asp:Parameter Name="CA_DESC" Type="String" />
            <asp:Parameter Name="CA_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>

