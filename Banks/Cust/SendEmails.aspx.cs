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
using System.Net.Mail;

public partial class Cust_SendEmails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MailMessage mail = new MailMessage();
        mail.To.Add(TextBox1.Text  );
        mail.From = new MailAddress("ebanksystem@gmail.com");
        mail.Subject = TextBox2.Text  ;
        mail.Body = TextBox3.Text  ;
        mail.IsBodyHtml = true;
        if (FileUpload1.HasFile)
        {
            mail.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.FileName));
        }
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.UseDefaultCredentials = false;

        smtp.Credentials = new System.Net.NetworkCredential("ebanksystem@gmail.com", "733520084");

        smtp.EnableSsl = true;
        smtp.Send(mail);
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}
