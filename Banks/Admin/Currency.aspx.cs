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

public partial class Admin_Currency : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        FileUpload file = (FileUpload)FormView1.FindControl("FileUpload1");
        e.Values.Add("Currency_img", "~/images/" + file.FileName);
        

        
        
        file.SaveAs(Server.MapPath("~/") + "/images/" + file.FileName);
    }
}
