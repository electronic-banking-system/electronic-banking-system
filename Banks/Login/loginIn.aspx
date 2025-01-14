<%@ Page Language="C#" MasterPageFile="~/cust/MasterPage.master" AutoEventWireup="true" CodeFile="loginIn.aspx.cs" Inherits="loginIn" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style19
        {
            height: 20px;
        }
    .style1000007
    {
        width: 157px;
    }
    .style1000008
    {
        width: 77px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1000005">
        <tr bgcolor="#384154">
            <td colspan="3" height="30">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="5%">
                &nbsp;</td>
            <td width="30%">
                &nbsp;</td>
            <td width="5%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="5%">
                &nbsp;</td>
            <td width="30%">
                &nbsp;</td>
            <td width="5%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="5%">
                &nbsp;</td>
            <td width="30%">
    <table width="100%" style="border: thin solid #003366">
        <tr >
            <td align="center" bgcolor="#49546D" colspan="4" height="30" width="60%">
                <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Login"></asp:Label>
            </td>
        </tr>
        <tr height="15px">
            <td class=" " align="center" rowspan="5" valign="middle">
                <asp:Image ID="Image1" runat="server" Height="105px" 
                    ImageUrl="~/images/ManIcon.png" Width="103px" />
            </td>
            <td class=" ">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class=" ">
                <asp:Label ID="Label1" runat="server" Text="&#1575;&#1604;&#1575;&#1587;&#1605;"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class=" ">
                <asp:Label ID="Label2" runat="server" Text="&#1575;&#1604;&#1576;&#1575;&#1587;&#1608;&#1585;&#1583;"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class=" ">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" Visible="False" Font-Bold="True" 
                    ForeColor="#CC0000"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1000008">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Log" 
                    Width="100px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
            </td>
            <td width="5%">
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

