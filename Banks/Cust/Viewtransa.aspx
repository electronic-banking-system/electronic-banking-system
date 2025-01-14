<%@ Page Language="C#" MasterPageFile="~/Cust/MasterPage.master" AutoEventWireup="true" CodeFile="Viewtransa.aspx.cs" Inherits="Cust_Viewtransa" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

     
        

     
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table width="100%">
                    <tr>
                        <td width="100%" bgcolor="#687AA0" colspan="4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td width="20%">
                            &nbsp;</td>
                        <td  width="10%">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                        <td width="80%">
                            <asp:Button ID="Button3" runat="server" 
                                onclick="Button3_Click" Text="&#1576;&#1581;&#1579;" Width="67px" />
                        </td>
                        <td >
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
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="CA_ID,tra_ID" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." ForeColor="#333333" 
        GridLines="None" Width="100%">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
        <Columns>
            <asp:TemplateField HeaderText="&#1585;&#1602;&#1605; &#1575;&#1604;&#1581;&#1608;&#1575;&#1604;&#1577;" SortExpression="tra_ID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("tra_ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl='<%# Eval("tra_ID", "~/Cust/ViewTans.aspx?TransId={0}") %>' 
                        Text='<%# Eval("tra_ID") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CA_ID" HeaderText="&#1585;&#1602;&#1605; &#1575;&#1604;&#1581;&#1587;&#1575;&#1576;" 
                SortExpression="CA_ID" ReadOnly="True" Visible="False" />
            <asp:BoundField DataField="CA_NAME" HeaderText="&#1575;&#1587;&#1605; &#1575;&#1575;&#1575;&#1604;&#1605;&#1585;&#1587;&#1604;" 
                SortExpression="CA_NAME" />
            <asp:BoundField DataField="tra_DATE" HeaderText="&#1578;&#1575;&#1585;&#1610;&#1582; &#1575;&#1575;&#1604;&#1581;&#1608;&#1575;&#1604;&#1577;" 
                SortExpression="tra_DATE" DataFormatString="{0:d}" />
            <asp:BoundField DataField="tra_CURR" HeaderText="&#1575;&#1604;&#1593;&#1605;&#1604;&#1577;" 
                SortExpression="tra_CURR" />
            <asp:BoundField DataField="tra_AMOUNT" HeaderText="&#1575;&#1604;&#1605;&#1576;&#1604;&#1594;" 
                SortExpression="tra_AMOUNT" />
            <asp:BoundField DataField="TO_NAME" HeaderText="&#1575;&#1587;&#1605; &#1575;&#1604;&#1605;&#1587;&#1578;&#1601;&#1610;&#1583;" 
                SortExpression="TO_NAME" />
            <asp:BoundField DataField="tra_STATUS" HeaderText="&#1575;&#1604;&#1581;&#1575;&#1604;&#1577;" 
                SortExpression="tra_STATUS" />
            <asp:BoundField DataField="TO_TEL" HeaderText="&#1575;&#1604;&#1578;&#1604;&#1601;&#1608;&#1606;" 
                SortExpression="TO_TEL" />
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Trans_DBConnectionString1 %>" 
        ProviderName="<%$ ConnectionStrings:Trans_DBConnectionString1.ProviderName %>" 
        SelectCommand="SELECT * FROM [tran_gr_dmy]">
    </asp:SqlDataSource>
</asp:Content>

