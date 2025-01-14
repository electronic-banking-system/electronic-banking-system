<%@ Page Language="C#" MasterPageFile="~/Cust/MasterPage.master" AutoEventWireup="true" CodeFile="CashBill.aspx.cs" Inherits="Cust_CashBill" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1000005">
        <tr>
            <td>
                <table width="100%">
                    <tr>
                        <td bgcolor="#6C7EA4" colspan="4" height="30">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td width="20%">
                            &nbsp;</td>
                        <td width="10%">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                        <td width="80%">
                            <asp:Button ID="Button3" runat="server" CssClass="style1000008" 
                                onclick="Button3_Click" Text="&#1576;&#1581;&#1579;" Width="67px" />
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                RepeatDirection="Horizontal" Width="200px">
                                <asp:ListItem Value="0">&#1576;&#1575;&#1604;&#1585;&#1602;&#1605;</asp:ListItem>
                                <asp:ListItem Value="1">&#1576;&#1575;&#1604;&#1575;&#1587;&#1605;</asp:ListItem>
                                <asp:ListItem Value="2">&#1575;&#1604;&#1578;&#1575;&#1585;&#1610;&#1582;</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td width="500">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CA_ID,CASH_ID" 
            DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." ForeColor="#333333" 
            GridLines="None" Width="100%" AllowSorting="True">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
            <Columns>
                <asp:BoundField DataField="CASH_ID" HeaderText="&#1585;&#1602;&#1605; &#1575;&#1604;&#1589;&#1585;&#1601;" ReadOnly="True" 
                    SortExpression="CASH_ID" />
                <asp:BoundField DataField="CA_ID" HeaderText="&#1585;&#1602;&#1605; &#1581;&#1587;&#1575;&#1576;" ReadOnly="True" 
                    SortExpression="CA_ID" />
                <asp:BoundField DataField="CA_NAME" HeaderText="&#1575;&#1587;&#1605; &#1575;&#1604;&#1581;&#1587;&#1575;&#1576;" 
                    SortExpression="CA_NAME" />
                <asp:BoundField DataField="SH_NO" HeaderText="&#1585;&#1602;&#1605; &#1575;&#1604;&#1588;&#1610;&#1603;" 
                    SortExpression="SH_NO" />
                <asp:BoundField DataField="BEN_NAME" HeaderText="&#1604;&#1589;&#1575;&#1604;&#1581;" 
                    SortExpression="BEN_NAME" />
                <asp:BoundField DataField="CASH_DATE" HeaderText="&#1578;&#1575;&#1585;&#1610;&#1582;" 
                    SortExpression="CASH_DATE" DataFormatString="{0:d}" />
                <asp:BoundField DataField="CASH_AMOUNT" HeaderText="&#1575;&#1604;&#1605;&#1576;&#1604;&#1594;" 
                    SortExpression="CASH_AMOUNT" />
                <asp:BoundField DataField="CASH_CURR" HeaderText="&#1575;&#1604;&#1593;&#1605;&#1604;&#1577;" 
                    SortExpression="CASH_CURR" />
            </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
            </td>
        </tr>
    </table>
    <p>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Trans_DBConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:Trans_DBConnectionString1.ProviderName %>" 
            SelectCommand="SELECT * FROM [cashs_gr_dmy]"></asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>

