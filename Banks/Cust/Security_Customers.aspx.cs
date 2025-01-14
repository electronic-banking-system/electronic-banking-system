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
using System.Data.SqlClient;

public partial class Customers_Security_Customers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            
                if (!Page.IsPostBack)
                {
                    MultiView1.ActiveViewIndex = 0;
                }


            
        }
        catch (Exception ex) { Response.Redirect("~/Default.aspx"); }
        

    }
    SqlConnection Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ebankConnectionString1"].ConnectionString);

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            Label2 .Text = ""; 
            SqlDataReader reder = null;
            string ss = "";
            string UserID = "";
            string sql = ("select *from Users where user_name='" + TextBox1.Text + "'");
            int result = -1;

            if (Connection.State != ConnectionState.Open)
            {
                Connection.Open();
            }
            SqlCommand Command = new SqlCommand(sql, Connection);

            reder = Command.ExecuteReader();
            if (reder.HasRows == true)
            {
                while (reder.Read())
                {
                    if (reder[6].ToString().ToUpper() == "FALSE")
                    {
                        ss = reder[1].ToString();
                        UserID = reder[0].ToString();
                        MultiView1.ActiveViewIndex = 1;
                        TextBox2.Text = reder[4].ToString();


                    }
                }
            }
            else
            {
                Label2.Text = "Not Found Like this Name";
            }
        }


        catch (Exception ex)
        { }

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Label2.Text = ""; 
        SqlDataReader reder=null;
        string sql = ("select *from Users where user_name='" + TextBox1.Text + "'");
        int result = -1;

        if (Connection.State != ConnectionState.Open)
        {
            Connection.Open();
        }
        SqlCommand Command = new SqlCommand(sql, Connection);

        reder = Command.ExecuteReader();
        if (reder.HasRows == true)
        {
            while (reder.Read())
            {
                if (reder[5].ToString().ToUpper() == TextBox3.Text.ToUpper())
                {



                    MultiView1.ActiveViewIndex = 2;



                }
                else
                {
                    Label2.Text = "Your Answer Is False";
                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Label2.Text = "";
        SqlDataReader reder = null;
        string sql = ("Update Users set cust_new_pwd='"+TextBox4.Text   +"' where  user_name='" + TextBox1.Text + "'");
        int result = -1;

        if (Connection.State != ConnectionState.Open)
        {
            Connection.Open();
        }
        SqlCommand Command = new SqlCommand(sql, Connection);

        reder = Command.ExecuteReader();     
        MultiView1.ActiveViewIndex = 0;
        Label2.Text = "Your Password is Updated";
                
            }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

        Label2.Text = "";
        SqlDataReader reder = null;
        string sql = ("Update Users set Password='" + TextBox4.Text + "' where user_name='" + TextBox1.Text + "'");
        int result = -1;

        if (Connection.State != ConnectionState.Open)
        {
            Connection.Open();
        }
        SqlCommand Command = new SqlCommand(sql, Connection);

        reder = Command.ExecuteReader();
        MultiView1.ActiveViewIndex = 0;
        Response.Redirect("~/Cust/Default.aspx");
        Label2.Text = "Your Password is Updated";
    }
}
    

