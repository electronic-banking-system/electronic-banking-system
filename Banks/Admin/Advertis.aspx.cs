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
using System.Drawing;
using System.Drawing.Imaging;

public partial class Admin_Advertis : System.Web.UI.Page
{
    
    public static System.Drawing.Image ScaleImage(System.Drawing.Image image, int maxHeight,int h,int w)
    {
        var ratio = (double)maxHeight / image.Height;

        var newWidth = (int)(image.Width * ratio);
        var newHeight = (int)(image.Height * ratio);

        var newImage = new Bitmap(h, w);
        using (var g = Graphics.FromImage(newImage))
        {
            g.DrawImage(image, 0, 0, h, w);
        }
        return newImage;
    }

    protected void Page_Load(object sender, EventArgs e)
    { 
    }
    protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
    
                                          
        FileUpload file = (FileUpload)FormView1.FindControl("FileUpload1");
        TextBox Text = (TextBox)FormView1.FindControl("Adve_NameTextBox0");
        if (Text.Text.Trim() != "")
        {
            System.Drawing.Bitmap bmpPostedImage = new System.Drawing.Bitmap(file.PostedFile.InputStream);
            System.Drawing.Image objImage = ScaleImage(bmpPostedImage, 150, 200, 200);
            string spath = Server.MapPath("~") + "/images/thumbs/" + file.FileName;
            objImage.Save(spath, ImageFormat.Jpeg);

            objImage = ScaleImage(bmpPostedImage, 150, 650, 320);
            spath = Server.MapPath("~") + "/images/img/" + file.FileName;
            objImage.Save(spath, ImageFormat.Jpeg);


            e.Values.Add("Adve_Phote", "images/img/" + file.FileName);
            e.Values.Add("Adve_Thumb", "images/thumbs/" + file.FileName);

            e.Values.Add("Adve_Date", DateTime.Now.ToShortDateString());
           
         


             
}
}



    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        Response.Redirect("~/admin/Advertis.aspx");   
        
    }
    protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
    {

    }
}
