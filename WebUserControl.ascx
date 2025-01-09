<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="WebUserControl" %>
                    <style type="text/css">
                        .style1000001
                        {
                            background-color: #E9F3FF;
                        }
                        .style1000002
                        {
                            height: 297px;
                        }
                        .style1000003
                        {
                            height: 81px;
                        }
                        .style1000004
                        {
                            height: 147px;
                        }
                    </style>
                    <div  style="vertical-align: top">
                            <table width="250"  >
                                <tr>
                                    <td bgcolor="#7DB0E3" height="30" align="center">
                                        <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="White" 
                                            Text="الاستفتاء"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1000001"  >
                                        <table width="100%" class="style1000002"  >
                                            <tr>
                                                <td  >
                                                    &nbsp;</td>
                                                <td bgcolor="#D5E8FF" height="30" align="right"  >
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" 
                            Text="Label" Font-Italic="False"></asp:Label>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td  >
                                                    &nbsp;</td>
                                                <td bgcolor="White"  >
         
                        <table align="center" width="100%" class="style1000004">
                            <tr>
                                <td align="right">
                                    <asp:RadioButton ID="RadioButton1" runat="server" 
                                        Font-Bold="False" Font-Size="Small" ForeColor="Black" GroupName="xx" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:RadioButton ID="RadioButton2" runat="server" 
                                        Font-Bold="False" Font-Size="Small" ForeColor="Black" GroupName="xx" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:RadioButton ID="RadioButton3" runat="server" 
                                        Font-Bold="False" Font-Size="Small" ForeColor="Black" GroupName="xx" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                        <h1 style="font-size:small; color: #000000;">
                            &nbsp;</h1>
                                </td>
                            </tr>
                        </table>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td rowspan="2"  >
                                                    &nbsp;</td>
                                                <td bgcolor="#D5E8FF" align="left" class="style1000003"  >
                                    <asp:Button ID="Button4" runat="server" 
                                        onclick="Button4_Click" Text="صوت" Width="122px" BackColor="#F58905" Font-Bold="True" 
                                                        ForeColor="White" />
                                                </td>
                                                <td rowspan="2">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left"  >
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" 
                                        ForeColor="Red" Text="انت صوت من قبل" Visible="False"  ></asp:Label>
                                                    <br />
                                                    <br />
                                                </td>
                                            </tr>
                                            </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                    <asp:Panel ID="Panel1" runat="server">
                        <table width="100%" style="color: #000000" bgcolor="#E9F3FF">
                            <tr valign="middle">
                                <td   valign="top" colspan="2">
                                    &nbsp;</td>
                                <td  valign="top">
                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="النتائج"></asp:Label>
                                </td>
                            </tr>
                            <tr valign="middle">
                                <td valign="top">
                                    <asp:Label ID="rr1" runat="server" Css Font-Bold="False" 
                                        Font-Size="X-Small" ForeColor="Black" Text="Label"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="h1" runat="server" ForeColor="Black"></asp:Label>
                                    &nbsp; &nbsp;&nbsp;<asp:Label ID="h5" runat="server" ForeColor="Black">%</asp:Label>
                                    <br />
                                </td>
                                <td valign="top">
                                    <asp:Label ID="v1" runat="server" Font-Bold="True" Font-Size="XX-Small" 
                                        ForeColor="Black" Text="99 Voit"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td   colspan="3" valign="top">
                                    <asp:Image ID="Image1" runat="server"  
                                        ImageUrl="~/images/nprog.jpg" Width="91px" Height="8px" />
                                </td>
                            </tr>
                            <tr>
                                <td  >
                                    <asp:Label ID="rr2" runat="server" Font-Bold="False" Font-Size="X-Small" 
                                        ForeColor="Black" Text="Label"></asp:Label>
                                </td>
                                <td  valign="bottom">
                                    <asp:Label ID="h2" runat="server" ForeColor="Black"></asp:Label>
                                    &nbsp; &nbsp;<asp:Label ID="h6" runat="server" ForeColor="Black">%</asp:Label>
                                    <br />
                                </td>
                                <td   valign="top">
                                    <asp:Label ID="v2" runat="server" Font-Bold="True" Font-Size="XX-Small" 
                                        ForeColor="Black" Text="99 Voit"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td  colspan="3" valign="top">
                                    <asp:Image ID="Image2" runat="server"  
                                        ImageUrl="~/images/nprog.jpg" Width="91px" Height="8px" />
                                </td>
                            </tr>
                            <tr>
                                <td   valign="top">
                                    <asp:Label ID="rr3" runat="server" Font-Bold="False" Font-Size="X-Small" 
                                        ForeColor="Black" Text="Label"></asp:Label>
                                </td>
                                <td >
                                    <asp:Label ID="h3" runat="server" ForeColor="Black"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="h7" runat="server" ForeColor="Black">%</asp:Label>
                                    <br />
                                </td>
                                <td   valign="top">
                                    <asp:Label ID="v3" runat="server" Font-Bold="True" Font-Size="XX-Small" 
                                        ForeColor="Black" Text="99 Voit"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td   colspan="3" valign="top">
                                    <asp:Image ID="Image3" runat="server" 
                                        ImageUrl="~/images/nprog.jpg"   Height="8px" />
                                </td>
                            </tr>
                        </table>
</asp:Panel>
                                    </td>
                                </tr>
                            </table>
</div>
         
                
