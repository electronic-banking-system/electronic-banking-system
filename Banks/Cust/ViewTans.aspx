<%@ Page Language="C#" MasterPageFile="~/Cust/MasterPage.master" AutoEventWireup="true" CodeFile="ViewTans.aspx.cs" Inherits="Cust_ViewTans" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table style="border: medium solid #7285AB" width="100%">
            <tr>
                <td bgcolor="#697BA1" colspan="3" height="30">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="30%">
                    &nbsp;</td>
                <td>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="tra_ID" DataSourceID="SqlDataSource1" Width="80%">
            <Fields>
                <asp:BoundField DataField="tra_ID" HeaderText="&#1585;&#1602;&#1605; &#1575;&#1604;&#1581;&#1608;&#1575;&#1604;&#1577;" ReadOnly="True" 
                    SortExpression="tra_ID" />
                <asp:BoundField DataField="tra_DATE" HeaderText="&#1578;&#1575;&#1585;&#1610;&#1582; &#1575;&#1604;&#1581;&#1608;&#1604;&#1575;&#1578;" 
                    SortExpression="tra_DATE" />
                <asp:BoundField DataField="tra_CURR" HeaderText="&#1575;&#1604;&#1593;&#1605;&#1604;&#1577;" 
                    SortExpression="tra_CURR" />
                <asp:BoundField DataField="tra_AMOUNT" HeaderText="&#1575;&#1604;&#1605;&#1576;&#1604;&#1594;" 
                    SortExpression="tra_AMOUNT" />
                <asp:BoundField DataField="TO_NAME" HeaderText="&#1575;&#1587;&#1605; &#1575;&#1604;&#1605;&#1587;&#1578;&#1601;&#1610;&#1583;" 
                    SortExpression="TO_NAME" />
                <asp:BoundField DataField="TO_EMAIL" HeaderText="&#1575;&#1604;&#1575;&#1610;&#1605;&#1610;&#1604;" 
                    SortExpression="TO_EMAIL" />
                <asp:BoundField DataField="tra_STATUS" HeaderText="&#1575;&#1604;&#1581;&#1575;&#1604;&#1577;" 
                    SortExpression="tra_STATUS" />
                <asp:BoundField DataField="TO_TEL" HeaderText="&#1578;&#1604;&#1601;&#1608;&#1606; &#1575;&#1604;&#1605;&#1587;&#1578;&#1601;&#1610;&#1583;" 
                    SortExpression="TO_TEL" />
                <asp:BoundField DataField="CA_ID" HeaderText="&#1585;&#1602;&#1605; &#1575;&#1604;&#1581;&#1587;&#1575;&#1576; &#1575;&#1604;&#1605;&#1585;&#1587;&#1604;" 
                    SortExpression="CA_ID" />
                <asp:BoundField DataField="CA_NAME" HeaderText="&#1575;&#1587;&#1605; &#1575;&#1604;&#1605;&#1585;&#1587;&#1604;" 
                    SortExpression="CA_NAME" />
                <asp:BoundField DataField="CA_PNO" HeaderText="&#1585;&#1602;&#1605; &#1575;&#1604;&#1578;&#1604;&#1601;&#1608;&#1606;" 
                    SortExpression="CA_PNO" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Trans_DBConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:Trans_DBConnectionString1.ProviderName %>" 
            SelectCommand="SELECT * FROM [transformaion_details] WHERE ([tra_ID] = @tra_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="tra_ID" QueryStringField="TransId" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>

