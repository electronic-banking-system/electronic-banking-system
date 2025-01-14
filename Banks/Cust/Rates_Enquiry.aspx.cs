using System;
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

public partial class Customers_Rates_Enquiry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Request.Cookies["username"].Value.ToString() == "")
            {
                Response.Redirect("~/Default.aspx");
            }
            else if (Request.Cookies["username"] != null)
            {




            }
        }
        catch (Exception ex) { Response.Redirect("~/Default.aspx"); }
    }
}
