<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="eBanking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1000026
        {
            font-size: large;
        }
        .style1000027
        {
            height: 210px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table width="100%">
            <tr bgcolor="#666699">
                <td  width="100%">
                 <marquee Direction="left" width="700">
                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" 
                        RepeatColumns="100" RepeatDirection="Vertical" Height="37px" style="text-align: right" RepeatLayout="Table" Width="200">
                   
                        <ItemTemplate>
                         
                            <table 
                              
                                <tr>
                                 
                                    <td>
                                        <asp:Image ID="Image1" runat="server" Height="19px" ImageAlign="Middle" 
                                            ImageUrl='<%# Eval("Currency_img") %>' Width="36px" />
                                           
                                    </td>
                                    <td>
                                        Sale&nbsp;<asp:Label ID="RateSaleLabel" runat="server" 
                                            Text='<%# Eval("RateSale") %>' BorderColor="White" />
                                        $</td>
                                    <td>
                                        &nbsp; Buy&nbsp; <asp:Label ID="RateBuyLabel" runat="server" Text='<%# Eval("RateBuy") %>' 
                                            BorderColor="White" />
                                        $</td>
                                    
                                </tr>
                                
                            </table>
                          
                            
                            
                            
                        </ItemTemplate>
                       
                    </asp:DataList></marquee>
                    <br />
                    </td>
                                                           </tr>
                                                           <tr>
                                                               <td>
                                                                   <table width="100%">
                                                                       <tr>
                                                                           <td class=" " colspan="3" bgcolor="#5A6C96">
                                                                               <asp:Label ID="Label5" runat="server" CssClass="style1000026" 
                                                                                   
                                                                                   Text="&#1575;&#1607;&#1604;&#1575; &#1576;&#1603; &#1601;&#1610; &#1575;&#1604;&#1576;&#1606;&#1603; &#1575;&#1604;&#1575;&#1604;&#1603;&#1578;&#1585;&#1608;&#1606;&#1610;  " 
                                                                                   Font-Bold="True" Font-Italic="False" Font-Size="X-Large" 
                                                                                   Font-Strikeout="False" ForeColor="Black"></asp:Label>
                                                                           </td>
                                                                       </tr>
                                                                       <tr>
                                                                           <td class="style1000027" colspan="3" valign="top" bgcolor="#859AC1">
                                                                              
                                                                               <asp:Label ID="Label4" runat="server" 
                                                                                   Text="&#1573;&#1582;&#1578;&#1610;&#1575;&#1585;&#1603; &#1575;&#1604;&#1575;&#1605;&#1606; &#1608;&#1575;&#1604;&#1575;&#1587;&#1607;&#1604; &#1608;&#1575;&#1604;&#1575;&#1603;&#1579;&#1585; &#1578;&#1608;&#1575;&#1601;&#1585;&#1575; &#1604;&#1605;&#1593;&#1575;&#1605;&#1604;&#1575;&#1578;&#1603; &#1575;&#1604;&#1576;&#1606;&#1603;&#1610;&#1607;" 
                                                                                    Font-Bold="True" Font-Overline="True" 
                                                                                   Font-Size="Large" ForeColor="#003366" BorderStyle="None" 
                                                                                   Font-Italic="True" Height="40px" Width="367px" 
                                                                                   style="font-size: large; font-family: 'Adobe Arabic'"></asp:Label>
                                                                               <br />
                                                                               <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" 
                                                                                   Font-Size="Large" ForeColor="Black" 
                                                                                   Text="*  &#1575;&#1605;&#1606;&#1610;&#1607; &#1601;&#1610; &#1575;&#1604;&#1578;&#1593;&#1575;&#1605;&#1604;"></asp:Label>
                                                                               <br />
                                                                               <br />
                                                                               <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" 
                                                                                   Font-Size="Large" ForeColor="Black" 
                                                                                   Text="* &#1582;&#1583;&#1605;&#1575;&#1578; &#1578;&#1608;&#1601;&#1585; &#1593;&#1604;&#1610;&#1603; &#1587;&#1607;&#1608;&#1604;&#1607; &#1575;&#1604;&#1575;&#1587;&#1578;&#1582;&#1583;&#1575;&#1605;"></asp:Label>
                                                                               <br />
                                                                               <br />
                                                                               <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" 
                                                                                   Font-Size="Large" ForeColor="Black" 
                                                                                   
                                                                                   Text="* &#1575;&#1604;&#1601;&#1585;&#1608;&#1593; &#1575;&#1604;&#1575;&#1603;&#1579;&#1585; &#1575;&#1606;&#1578;&#1588;&#1575;&#1585;&#1575; &#1604;&#1582;&#1583;&#1605;&#1578;&#1603; &#1601;&#1610; &#1603;&#1604; &#1605;&#1603;&#1575;&#1606;"></asp:Label>
                                                                           </td>
                                                                       </tr>
                                                                       <tr>
                                                                           <td>
                                                                               <asp:ImageButton ID="ImageButton5" runat="server" Height="150px" 
                                                                                   ImageUrl="~/images/3986341494_e28cfc2a1b_z.jpg" PostBackUrl="~/Services.aspx" 
                                                                                   Width="220px" />
                                                                           </td>
                                                                           <td>
                                                                               <span lang="en-us">1</span><asp:ImageButton ID="ImageButton6" runat="server" 
                                                                                   Height="150px" ImageUrl="~/images/19272120121230804.jpg" 
                                                                                   PostBackUrl="~/Services.aspx" Width="211px" />
                                                                           </td>
                                                                           <td>
                                                                               <span lang="en-us">2</span><asp:ImageButton ID="ImageButton7" runat="server" 
                                                                                   Height="150px" ImageUrl="~/images/220px-Assorted_United_States_coins.jpg" PostBackUrl="~/Services.aspx" 
                                                                                   Width="231px" />
                                                                           </td>
                                                                       </tr>
                                                                   </table>
                </td>
            </tr>
                                                           <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ebankConnectionString1 %>" 
                        ProviderName="<%$ ConnectionStrings:ebankConnectionString1.ProviderName %>" 
                        SelectCommand="SELECT Currency_Exchange.RateSale, Currency_Exchange.RateBuy, Currency.Currency_img FROM Currency_Exchange INNER JOIN Currency ON Currency_Exchange.Curr_No = Currency.Curr_no WHERE (Currency_Exchange.Status = 'true')">
                    </asp:SqlDataSource>
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
                                                           </table>
    </p>
</asp:Content>

