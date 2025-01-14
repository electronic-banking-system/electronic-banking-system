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

public partial class Cust_CustomerAccounts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string str = null;
        if (RadioButtonList1.SelectedValue == "0")
        {
            SqlDataSource1.FilterExpression = "CA_ID ='" + TextBox4.Text + "'";
            GridView1.DataBind();

        }
        else if (RadioButtonList1.SelectedValue == "1")
        {
            SqlDataSource1.FilterExpression = "CA_NAME like '" + TextBox4.Text + "%'";
            GridView1.DataBind();
        }
        else if (RadioButtonList1.SelectedValue == "2")
        {
            SqlDataSource1.FilterExpression = "CA_OPEN_DATE ='" + TextBox4.Text + "'";
            GridView1.DataBind();
        }

    }
}
