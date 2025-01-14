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

public partial class Admin_Currency_Exchange : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        e.Values.Add("cust_id", DateTime.Now.ToShortDateString());
        e.Values.Add("Status", "true");

    }
}
