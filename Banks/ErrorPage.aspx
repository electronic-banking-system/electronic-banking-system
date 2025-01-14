<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ErrorPage.aspx.cs" Inherits="ErrorPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style2
        {
            font-size: xx-large;
            font-weight: bold;
        }
        .style3
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style3">
    
        <asp:Label ID="Label1" runat="server" CssClass="style2" ForeColor="#CC0000" 
            Text="Your Account Is Locked" Width="100%"></asp:Label>
    
    </div>
    </form>
</body>
</html>
