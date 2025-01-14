<%@ Page Language="C#" MasterPageFile="~/Cust/MasterPage.master" AutoEventWireup="true" CodeFile="Rates_Enquiry.aspx.cs" Inherits="Customers_Rates_Enquiry" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1000017
        {
           
        }
        .style1000018
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <table  width="100%" align="left">
        <tr>
            <td colspan="3" align="center" bgcolor="#284775">
                <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="&#1575;&#1587;&#1593;&#1575;&#1585; &#1575;&#1604;&#1593;&#1605;&#1604;&#1575;&#1578;" 
                    Font-Bold="True" ForeColor="White" 
            ></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3" height="30">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="&#1575;&#1587;&#1593;&#1575;&#1585; &#1575;&#1604;&#1589;&#1585;&#1601; &#1605;&#1602;&#1575;&#1576;&#1604; &#1575;&#1604;&#1585;&#1610;&#1575;&#1604; &#1575;&#1604;&#1610;&#1605;&#1606;&#1610;" 
                        style="font-family: 'Times New Roman', Times, serif; text-align: center" 
                        Width="100%"  ></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="100%" colspan="3">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
                        ForeColor="#333333" GridLines="None" ShowFooter="True" 
                        Width="100%" AllowSorting="True"  >
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                    <Columns>
                        <asp:TemplateField HeaderText="&#1585;&#1605;&#1586; &#1575;&#1604;&#1593;&#1605;&#1604;&#1577;" SortExpression="Currency_img">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Currency_img") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="23px" ImageAlign="Middle" 
                                        ImageUrl='<%# Eval("Currency_img") %>' Width="26px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="RateSale" HeaderText="&#1587;&#1593;&#1585; &#1575;&#1604;&#1576;&#1610;&#1593;" 
                                SortExpression="RateSale" />
                        <asp:BoundField DataField="RateBuy" HeaderText="&#1587;&#1593;&#1585; &#1575;&#1604;&#1588;&#1585;&#1575;&#1569;" 
                                SortExpression="RateBuy" />
                    </Columns>
                    <PagerStyle BackColor="#284775" ForeColor="White" 
                            HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                    &nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ebankConnectionString1 %>" 
                        DeleteCommand="DELETE FROM [Currency_Exchange] WHERE [Exc_No] = @Exc_No" 
                        InsertCommand="INSERT INTO [Currency_Exchange] ([Curr_No], [Curr_date], [RateSale], [RateBuy], [Status]) VALUES (@Curr_No, @Curr_date, @RateSale, @RateBuy, @Status)" 
                        ProviderName="<%$ ConnectionStrings:ebankConnectionString1.ProviderName %>" 
                        SelectCommand="SELECT Currency.Currency_img, Currency.Currency_name, Currency_Exchange.RateSale, Currency_Exchange.RateBuy, Currency_Exchange.Status FROM Currency_Exchange INNER JOIN Currency ON Currency_Exchange.Curr_No = Currency.Curr_no WHERE (Currency_Exchange.Status = 'true')" 
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
</asp:Content>

