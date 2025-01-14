<%@ Page Language="C#" MasterPageFile="~/Cust/MasterPage.master" AutoEventWireup="true" CodeFile="SendEmails.aspx.cs" Inherits="Cust_SendEmails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1000008
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border: medium solid #687AA0" width="100%">
        <tr>
            <td bgcolor="#687AA0" colspan="3" height="30">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <table class="style1000005">
                    <tr bgcolor="#E6E6E6">
                        <td class="style1000008">
                            <asp:Label ID="Label4" runat="server" Text="&#1575;&#1604;&#1575;&#1610;&#1605;&#1610;&#1604; &#1575;&#1604;&#1605;&#1585;&#1587;&#1604;"></asp:Label>
                        </td>
                        <td class="style1000008">
                            <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="&#1593;&#1606;&#1608;&#1575;&#1606; &#1575;&#1604;&#1585;&#1587;&#1575;&#1604;&#1577;"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Width="300px" 
                                ontextchanged="TextBox2_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                    <tr bgcolor="#E6E6E6">
                        <td valign="top">
                            <asp:Label ID="Label7" runat="server" Text="&#1606;&#1589; &#1575;&#1604;&#1585;&#1587;&#1575;&#1604;&#1577;"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" 
                                Width="500px" ontextchanged="TextBox3_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <asp:Label ID="Label5" runat="server" Text="&#1575;&#1604;&#1605;&#1604;&#1601;"></asp:Label>
                        </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr bgcolor="#E6E6E6">
                        <td>
                            &nbsp;</td>
                        <td>
                            <table class="style1000005">
                                <tr>
                                    <td width="50%">
                                        &nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" Height="22px" onclick="Button1_Click" 
                                            Text="&#1575;&#1585;&#1587;&#1575;&#1604;" Width="80px" />
                                    </td>
                                    <td width="200">
                                        <asp:Button ID="Button2" runat="server" Height="22px" Text="&#1575;&#1604;&#1594;&#1575;&#1569;" 
                                            Width="80px" onclick="Button2_Click" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            </td>
                        <td>
                            </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
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

