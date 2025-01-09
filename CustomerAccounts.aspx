<%@ Page Language="C#" MasterPageFile="~/Cust2/MasterPage.master" AutoEventWireup="true" CodeFile="CustomerAccounts.aspx.cs" Inherits="Cust_CustomerAccounts" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
 
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<div style="border: medium solid #67799F">
                <table width="100%">
                    <tr>
                        <td bgcolor="#5D7097" colspan="4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td width="20%">
                            </td>
                        <td class="style1000020" width="10%">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                        <td width="80%">
                            <asp:Button ID="Button3" runat="server" 
                                onclick="Button3_Click" Text="&#1576;&#1581;&#1579;" Width="67px" 
                                Font-Bold="True" Font-Size="11pt" Height="22px" />
                        </td>
                        <td class="style1000020">
                        </td>
                    </tr>
                    <tr bgcolor="#D6D6D4">
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="CA_ID" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." AllowPaging="True" 
        AllowSorting="True" CellPadding="4" ForeColor="#333333" 
        Width="100%">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
        <Columns>
            <asp:BoundField DataField="CA_ID" HeaderText="&#1585;&#1602;&#1605; &#1575;&#1604;&#1581;&#1587;&#1575;&#1576;" ReadOnly="True" 
                SortExpression="CA_ID" >
                <ControlStyle Width="50px" />
                <ItemStyle Width="50px" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="&#1575;&#1587;&#1605; &#1575;&#1604;&#1593;&#1605;&#1610;&#1604;" SortExpression="CA_NAME">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CA_NAME") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl='<%# Eval("CA_ID", "~/Cust/Customer_Views.aspx?CA_ID={0}") %>' 
                        Text='<%# Eval("CA_NAME") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CA_TEL" HeaderText="&#1585;&#1602;&#1605; &#1575;&#1604;&#1578;&#1604;&#1601;&#1608;&#1606;" 
                SortExpression="CA_TEL" >
                <ControlStyle Width="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="CA_EMAIL" HeaderText="&#1575;&#1604;&#1575;&#1610;&#1605;&#1610;&#1604;" 
                SortExpression="CA_EMAIL" Visible="False" />
            <asp:BoundField DataField="CA_Address" HeaderText="&#1575;&#1604;&#1593;&#1606;&#1608;&#1575;&#1606;" 
                SortExpression="CA_Address" />
            <asp:BoundField DataField="CA_GENDER" HeaderText="&#1575;&#1604;&#1580;&#1606;&#1587;" 
                SortExpression="CA_GENDER" />
            <asp:BoundField DataField="CA_STATUS" HeaderText="&#1575;&#1604;&#1581;&#1575;&#1604;&#1577;" 
                SortExpression="CA_STATUS" />
            <asp:BoundField DataField="CA_CURR" HeaderText="&#1575;&#1604;&#1593;&#1605;&#1604;&#1577;" 
                SortExpression="CA_CURR" />
            <asp:BoundField DataField="CA_TYPE" HeaderText="&#1606;&#1608;&#1593; &#1575;&#1604;&#1581;&#1587;&#1575;&#1576;" 
                SortExpression="CA_TYPE" />
            <asp:BoundField DataField="CA_OPEN_DATE" DataFormatString="{0:d}" 
                HeaderText="&#1578;&#1575;&#1585;&#1582; &#1601;&#1578;&#1581; &#1575;&#1604;&#1581;&#1587;&#1575;&#1576;" SortExpression="CA_OPEN_DATE">
                <ControlStyle Width="80px" />
                <HeaderStyle Width="100px" />
                <ItemStyle Width="50px" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Trans_DBConnectionString1 %>" 
        DeleteCommand="DELETE FROM [Customer_Accounts] WHERE [CA_ID] = @CA_ID" 
        InsertCommand="INSERT INTO [Customer_Accounts] ([CA_NAME], [CA_PNO], [CA_PASSPORT_NO], [CA_TEL], [CA_EMAIL], [CA_Address], [CA_NAT], [CA_JOB], [CA_GENDER], [CA_STATUS], [CA_CURR], [CA_SIGN1], [CA_SIGN2], [CA_OPEN_DATE], [CA_TYPE], [CA_PASSWORD], [CA_DESC]) VALUES (@CA_NAME, @CA_PNO, @CA_PASSPORT_NO, @CA_TEL, @CA_EMAIL, @CA_Address, @CA_NAT, @CA_JOB, @CA_GENDER, @CA_STATUS, @CA_CURR, @CA_SIGN1, @CA_SIGN2, @CA_OPEN_DATE, @CA_TYPE, @CA_PASSWORD, @CA_DESC)" 
        ProviderName="<%$ ConnectionStrings:Trans_DBConnectionString1.ProviderName %>" 
        SelectCommand="SELECT [CA_ID], [CA_NAME], [CA_PNO], [CA_PASSPORT_NO], [CA_TEL], [CA_EMAIL], [CA_Address], [CA_NAT], [CA_JOB], [CA_GENDER], [CA_STATUS], [CA_CURR], [CA_SIGN1], [CA_SIGN2], [CA_OPEN_DATE], [CA_TYPE], [CA_PASSWORD], [CA_DESC] FROM [Customer_Accounts]" 
        
    UpdateCommand="UPDATE [Customer_Accounts] SET [CA_NAME] = @CA_NAME, [CA_PNO] = @CA_PNO, [CA_PASSPORT_NO] = @CA_PASSPORT_NO, [CA_TEL] = @CA_TEL, [CA_EMAIL] = @CA_EMAIL, [CA_Address] = @CA_Address, [CA_NAT] = @CA_NAT, [CA_JOB] = @CA_JOB, [CA_GENDER] = @CA_GENDER, [CA_STATUS] = @CA_STATUS, [CA_CURR] = @CA_CURR, [CA_SIGN1] = @CA_SIGN1, [CA_SIGN2] = @CA_SIGN2, [CA_OPEN_DATE] = @CA_OPEN_DATE, [CA_TYPE] = @CA_TYPE, [CA_PASSWORD] = @CA_PASSWORD, [CA_DESC] = @CA_DESC WHERE [CA_ID] = @CA_ID">
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
            <asp:Parameter Name="CA_OPEN_DATE" Type="DateTime" />
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
            <asp:Parameter Name="CA_OPEN_DATE" Type="DateTime" />
            <asp:Parameter Name="CA_TYPE" Type="String" />
            <asp:Parameter Name="CA_PASSWORD" Type="String" />
            <asp:Parameter Name="CA_DESC" Type="String" />
            <asp:Parameter Name="CA_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

