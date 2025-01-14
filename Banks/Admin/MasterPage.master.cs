﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        try
        {
            LinkButton3.Visible = false;  
            Label2.Visible =false ;
            Label3.Visible = false;
            LinkButton1.Visible = true ;
            LinkButton2.Visible =false ;
            if (Request.Cookies["username"] == null)
            {
                LinkButton3.Visible = false;  


            }
            else if (Request.Cookies["username"] != null)
            {
                 
                Label2.Visible = true ;
                Label3.Visible = true  ;
                Label3.Text = "اسم المستخدم  : " + Request.Cookies["username"].Value;
               
                LinkButton1.Visible = false;
                LinkButton2.Visible = true;
          
                LinkButton3.Visible = true ;
                
                if (Request.Cookies["IsAdmin"].Value == "false")
                {
                    LinkButton3.PostBackUrl = "~/Cust/Default.aspx";
                }
                else if (Request.Cookies["IsAdmin"].Value == "true")
                {
                    LinkButton3.PostBackUrl = "~/admin/Default.aspx";
                }
            }
        }
        catch (Exception ex)
        {
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
}