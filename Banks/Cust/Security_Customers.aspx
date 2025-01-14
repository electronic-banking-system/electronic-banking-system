<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Security_Customers.aspx.cs" Inherits="Customers_Security_Customers" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
        .style8
        {
            background-color: #FAFAD2;
        }
        .style20
        {
            vertical-align: baseline;
        }
        .style24
        {
            background-color: #FFFFFF;
        }
        .style26
        {
            height: 22px;
            background-color: #FFFFFF;
        }
        .style27
        {
            background-color: #FFFFFF;
            color: #2E2E2E;
   
        }
        .style28
        {
            background-color: #FFFFFF;
        
        }
        .style29
        {
            color: #FF0000;
        }
        .style30
        {
            background-color: #FFFFFF;
            height: 23px;
        }
        .style31
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
        <br />
        <asp:Label ID="Label8" runat="server" Font-Size="X-Large" 
            Text="Recovery Password" 
            ></asp:Label> 
        <br />
    </div>
    <div>
        
    
        <asp:MultiView ID="MultiView1" runat="server">
           
          
            <asp:View ID="View1" runat="server">
                <table border="0" cellpadding="0"  width="100%">
                    <tr >
                        <td width="20%" xml:lang="User Name" >
                            &nbsp;</td>
                        <td >
                            &nbsp;</td>
                    </tr>
                    <tr >
                        <td width="20%" xml:lang="User Name" class="style27">
                            <asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="Black" 
                                Text="User Name" Width="140px"></asp:Label>
                        </td>
                        <td  bgcolor="White">
                            <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="150px"></asp:TextBox>
                           
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                           
                        </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td >
                            &nbsp;</td>
                    </tr>
                    <tr  >
                        <td >
                            &nbsp;</td>
                        <td >
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
                                ImageUrl="~/Customers/images/p_Next1.gif" onclick="ImageButton1_Click" 
                                Width="110px" />
                        </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td >
                            &nbsp;</td>
                    </tr>
                </table>
                &nbsp;<br />
            </asp:View>
           
           
            <asp:View ID="View2" runat="server">
                <br />
                <table  width="100%">
                    <tr  >
                        <td width="20%" >
                            &nbsp;</td>
                        <td >
                            &nbsp;</td>
                    </tr>
                    <tr >
                        <td width="20%" class="style28">
                            <asp:Label ID="Label4" runat="server" Font-Size="Small" 
                                Text="Question&nbsp; is" Width="140px"></asp:Label>
                        </td>
                      
                        <td bgcolor="White">
                            <asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="150px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox2" CssClass="style29" Display="Dynamic" 
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                   
                    <tr >
                        <td class="style28" width="20%">
                            <asp:Label ID="Label5" runat="server" Font-Size="Small" Text="Answer"></asp:Label>
                        </td>
                        <td bgcolor="White">
                            <asp:TextBox ID="TextBox3" runat="server" Height="16px" Width="150px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox3" CssClass="style29" Display="Dynamic" 
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                  
                    <tr>
                        <td class="style28" width="20%">
                            &nbsp;</td>
                        <td bgcolor="White">
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" 
                                ImageUrl="~/Customers/images/p_Next1.gif" onclick="ImageButton2_Click" 
                                Width="110px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style28" width="20%">
                            &nbsp;</td>
                        <td bgcolor="White">
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>
           
           
            <br />
            <asp:View ID="View3" runat="server">
                <table width="100%">
                    <tr >
                        <td class="style26" width="20%">
                        </td>
                        <td class="style26">
                        </td>
                    </tr>
                    <tr >
                        <td  width="20%">
                            <asp:Label ID="Label6" runat="server" Font-Size="Small" Text="New Password" 
                                Width="140px"></asp:Label>
                        </td>
                        <td bgcolor="White" >
                            <asp:TextBox ID="TextBox4" runat="server" Height="16px" Width="150px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr >
                        <td >
                            <asp:Label ID="Label7" runat="server" Font-Size="Small" Text="Confirm Password" 
                                Width="140px"></asp:Label>
                        </td>
                        <td bgcolor="White" >
                            <asp:TextBox ID="TextBox5" runat="server" Height="16px" Width="150px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr >
                        <td >
                            &nbsp;</td>
                        <td >
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="TextBox4" ControlToValidate="TextBox5" Display="Dynamic" 
                                ErrorMessage="Compare Between Password is  different"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td>
                            <asp:ImageButton ID="ImageButton3" runat="server" 
                                ImageUrl="~/Customers/images/a_Finshed1.gif" onclick="ImageButton3_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>
          
         
        </asp:MultiView>
     
    
        <asp:Label ID="Label2" runat="server" ForeColor="Red" Text=" "></asp:Label>
        </div>
</asp:Content>

