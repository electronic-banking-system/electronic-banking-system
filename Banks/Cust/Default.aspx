<%@ Page Language="C#" MasterPageFile="~/Cust/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Cust_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style18
        {
            width: 100%;
        }
        .style1000019
        {
            margin-left: 0px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border: medium solid #51648B" width="100%">
        <tr>
            <td bgcolor="#384B7C" colspan="3" height="30">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" bgcolor="#2A4C71">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="104px" 
                    Width="166px" CssClass="style1000019" 
                    ImageUrl="~/images/ManIcon.png" 
                    PostBackUrl="~/Cust/CustomerAccounts.aspx" />
            </td>
            <td align="center" bgcolor="#E3E3E1">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="104px" 
                    Width="166px" ImageUrl="~/tryimage/Default Document.png" 
                    PostBackUrl="~/Cust/Deposite.aspx" />
            </td>
            <td align="center" bgcolor="#2A4C71" width="30%">
                <asp:ImageButton ID="ImageButton6" runat="server" Height="104px" 
                    Width="166px" ImageUrl="~/tryimage/EMOTICON MONEY.png" 
                    PostBackUrl="~/Cust/CashBill.aspx" />
            </td>
        </tr>
        <tr bgcolor="#6B6B63">
            <td align="center">
                <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="White" 
                    PostBackUrl="~/Cust/AccountDetails.aspx">&#1575;&#1604;&#1593;&#1605;&#1604;&#1575;&#1569;</asp:LinkButton>
            </td>
            <td align="center" width="30%">
                <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="White" 
                    PostBackUrl="~/Cust/Bill.aspx">&#1575;&#1610;&#1583;&#1575;&#1593;&#1575;&#1578;</asp:LinkButton>
            </td>
            <td align="center">
                <asp:LinkButton ID="LinkButton9" runat="server" ForeColor="White" 
                    PostBackUrl="~/Cust/ViewALLTranscation.aspx">&#1575;&#1608;&#1575;&#1605;&#1585; &#1575;&#1604;&#1589;&#1585;&#1601;</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td align="center" bgcolor="#E3E3E1">
                <asp:ImageButton ID="ImageButton4" runat="server" Height="104px" 
                    Width="166px" ImageUrl="~/tryimage/494545649.jpg" 
                    PostBackUrl="~/Cust/Rates_Enquiry.aspx" />
            </td>
            <td align="center" bgcolor="#2A4C71">
                <asp:ImageButton ID="ImageButton5" runat="server" Height="104px" 
                    Width="166px" ImageUrl="~/tryimage/2072325313wer774.jpg" 
                    PostBackUrl="~/Cust/Viewtransa.aspx" />
            </td>
            <td align="center" bgcolor="#E3E3E1">
                <asp:ImageButton ID="ImageButton10" runat="server" Height="104px" 
                    Width="166px" ImageUrl="~/Admin/tryimage/news.png" 
                    PostBackUrl="~/Admin/News.aspx" />
            </td>
        </tr>
        <tr bgcolor="#6B6B63">
            <td align="center">
                <asp:LinkButton ID="LinkButton7" runat="server" ForeColor="White" 
                    PostBackUrl="~/Cust/Rates_Enquiry.aspx">&#1593;&#1585;&#1590; &#1575;&#1587;&#1593;&#1575;&#1585; &#1575;&#1604;&#1589;&#1585;&#1601;</asp:LinkButton>
            </td>
            <td align="center">
                <asp:LinkButton ID="LinkButton8" runat="server" ForeColor="White" 
                    PostBackUrl="~/Cust/Transfer.aspx">&#1575;&#1604;&#1581;&#1608;&#1604;&#1575;&#1578;</asp:LinkButton>
            </td>
            <td align="center">
                <asp:HyperLink ID="HyperLink14" runat="server" Font-Size="Medium" 
                    ForeColor="White" NavigateUrl="~/Admin/News.aspx" style="font-weight: 700">&#1575;&#1582;&#1576;&#1575;&#1585;</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:ImageButton ID="ImageButton7" runat="server" Height="104px" 
                    Width="166px" ImageUrl="~/Admin/tryimage/coins_stack_43_lg.jpeg" 
                    PostBackUrl="~/Admin/Currency_Exchange.aspx" />
            </td>
            <td align="center">
                <asp:ImageButton ID="ImageButton9" runat="server" Height="104px" 
                    Width="166px" ImageUrl="~/Admin/tryimage/FILE POWERPOINT 2.png" 
                    PostBackUrl="~/Admin/Advertis.aspx" />
            </td>
            <td>
                <asp:ImageButton ID="ImageButton11" runat="server" Height="104px" 
                    Width="166px" ImageUrl="~/Admin/tryimage/Vote.jpg" 
                    PostBackUrl="~/Admin/Pools.aspx" />
            </td>
        </tr>
        <tr bgcolor="#6B6B63">
            <td align="center">
                <asp:HyperLink ID="HyperLink6" runat="server" Font-Size="Medium" 
                    ForeColor="White" NavigateUrl="~/Admin/Currency_Exchange.aspx" 
                    style="font-weight: 700"> &#1575;&#1590;&#1575;&#1601;&#1577; &#1575;&#1587;&#1593;&#1575;&#1585; &#1575;&#1604;&#1589;&#1585;&#1601;</asp:HyperLink>
            </td>
            <td align="center">
                <asp:HyperLink ID="HyperLink11" runat="server" Font-Size="Medium" 
                    ForeColor="White" NavigateUrl="~/Admin/Advertis.aspx" 
                    style="font-weight: 700">&#1593;&#1604;&#1575;&#1606;&#1575;&#1578;</asp:HyperLink>
            </td>
            <td align="center">
                <asp:HyperLink ID="HyperLink12" runat="server" Font-Size="Medium" 
                    ForeColor="White" NavigateUrl="~/Admin/Pools.aspx" style="font-weight: 700">&#1575;&#1604;&#1578;&#1589;&#1608;&#1610;&#1578;</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:ImageButton ID="ImageButton12" runat="server" Height="104px" 
                    Width="166px" ImageUrl="~/Admin/tryimage/HOME FOLDER.png" 
                    PostBackUrl="~/Cust/SendEmails.aspx" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr bgcolor="#999999">
            <td align="center">
                <asp:HyperLink ID="HyperLink15" runat="server" Font-Size="Medium" 
                    ForeColor="White" NavigateUrl="~/Cust/SendEmails.aspx" 
                    style="font-weight: 700">&#1575;&#1604;&#1575;&#1610;&#1605;&#1610;&#1604;</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
  
</asp:Content>

