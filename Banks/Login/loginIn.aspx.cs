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

public partial class loginIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Trans_DBConnectionString1"].ConnectionString);
    public string SearchInSql(string sql)
    {
        string StrState = null;
        if (Connection.State == ConnectionState.Open)
        {
            Connection.Close();
        }
        Connection.Open();
        SqlCommand com = new SqlCommand(sql, Connection);

        SqlDataReader red = com.ExecuteReader();
        while (red.Read())
        {
            StrState = red[0].ToString();

        }
        return StrState;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Label3.Text = "";
            Label3.Visible = true;

            SqlDataReader reder = null;
            SqlDataReader reder2 = null;
            string ss = "";
            string UserID = "";
            
            string sql = ("SELECT   U_ID,U_NAME  from Users WHERE     U_NAME ='" + TextBox1.Text.Trim() + "' AND U_PASSWORD ='" + TextBox2.Text.Trim() + "'");
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


                    ss = reder[1].ToString();
                    UserID = reder[0].ToString();
                    TextBox1.Visible = false;
                    TextBox2.Visible = false;
                    Label1.Visible = false;
                    Label2.Visible = false;
                    Label3.Visible = true;
                    Label3.Text = "Wellcom : " + ss;
                    HttpCookie uname = new HttpCookie("username");
                    uname.Value = TextBox1.Text;
                    Response.Cookies.Add(uname);
                    Response.Cookies["username"].Expires = DateTime.Now.AddDays(10);
                    Response.Redirect("~/cust/Default.aspx");
                   
                }

            }

            else
            {
                string str = SearchInSql("select count(*) from Customer_Accounts where  CA_NAME='"+TextBox1.Text   +"' and CA_PASSWORD='"+TextBox2.Text   +"'");
                if(str!="0")
                {
                    HttpCookie Cust = new HttpCookie("Custname");
                    Cust.Value = TextBox1.Text;
                    Response.Cookies.Add(Cust);
                    Response.Cookies["Custname"].Expires = DateTime.Now.AddDays(10);
                    Response.Redirect("~/cust2/Default.aspx");
                
                }
                else
                {
                Label3.Visible = true;
                Label3.ForeColor = System.Drawing.Color.Red;
                Label3.Text = "خطا في اسم المستخدم او كلمة المرور";
            }
            }
        }
        catch (Exception ex) { }


    }
}

