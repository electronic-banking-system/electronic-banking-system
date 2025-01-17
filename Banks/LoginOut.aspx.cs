﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class LoginOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cookies["username"].Expires = DateTime.Now.AddDays(-1);
        Response.Cookies["AccountId"].Expires = DateTime.Now.AddDays(-1);
        Response.Cookies["AccountNO"].Expires = DateTime.Now.AddDays(-1);
        Response.Cookies["Custname"].Expires = DateTime.Now.AddDays(-1);

        Response.Redirect("~/Default.aspx");
    }
}
