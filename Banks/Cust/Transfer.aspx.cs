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
using System.Drawing  ;
public partial class Customers_Transfer : System.Web.UI.Page
{

    SqlConnection Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ebankConnectionString1"].ConnectionString);
    SqlConnection Connection2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ebankConnectionString1"].ConnectionString);
    SqlConnection Connection3 = new SqlConnection(ConfigurationManager.ConnectionStrings["ebankConnectionString1"].ConnectionString);
    private bool  searchFunction()
    {
        SqlDataReader reder = null;
        bool Search = false ;
        TextBox TextBox4 = (TextBox)DetailsView1.FindControl("TextBox4");
        string sql = ("select *from Accounts where acc_cust_no='" + TextBox4 .Text + "'");
        { 
            if (Connection.State == ConnectionState.Open)
            {
                Connection.Close();
            }
            Connection.Open();
            SqlCommand Command = new SqlCommand(sql, Connection);

            reder = Command.ExecuteReader();
            if (reder.HasRows == true)
            {
                Search = true;
            }
        }
        return Search;
    }
    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        try
        {
            SqlDataReader reder = null;

            DropDownList DropDownList1 = (DropDownList)DetailsView1.FindControl("DropDownList1");

            TextBox TextBox1 = (TextBox)DetailsView1.FindControl("TextBox1");
            TextBox TextBox4 = (TextBox)DetailsView1.FindControl("TextBox4");
            Label3.Text = "";
            if (searchFunction() == true)
            {
                string sql = ("select *from Accounts where acc_cust_no='" + DropDownList1.Text + "'");
                int result = -1;

                if (Connection2.State == ConnectionState.Open)
                {
                    Connection2.Close();
                }
                Connection2.Open();
                SqlCommand Command = new SqlCommand(sql, Connection2);

                reder = Command.ExecuteReader();
                if (reder.HasRows == true)
                {
                    while (reder.Read())
                    {
                        double s = Convert.ToDouble(reder[6].ToString());

                        if (s < Convert.ToDouble(TextBox1.Text))
                        {
                            e.Cancel = true;
                            Label3.ForeColor = Color.Red;
                            Label3.Text = " the balance in this  account less then transfer";
                        }
                        else
                        {
                            if (Connection.State == ConnectionState.Open)
                            {
                                Connection.Close();

                            }
                            Connection.Open();
                            double currentaccount = s - Convert.ToDouble(TextBox1.Text);
                            SqlCommand Command1 = new SqlCommand("update Accounts set current_balance='" + currentaccount + "' where acc_cust_no='" + DropDownList1.Text + "'", Connection);
                            Command1.ExecuteNonQuery();
                            sql = ("select *from Accounts where acc_cust_no='" + TextBox4.Text + "'");

                            if (Connection3.State == ConnectionState.Open)
                            {
                                Connection3.Close();
                            }
                            Connection3.Open();
                            Command = new SqlCommand(sql, Connection3);

                            reder = Command.ExecuteReader();
                            if (reder.HasRows == true)
                            {   
                                while (reder.Read())
                                {
                                    double s1 = Convert.ToDouble(reder[6].ToString());
                                    if (Connection.State == ConnectionState.Open)
                                    {
                                        Connection.Close();

                                    }
                                    Connection.Open();
                                    double currentaccount1 = s1 + Convert.ToDouble(TextBox1.Text);
                                    Command1 = new SqlCommand("update Accounts set current_balance='" + currentaccount1 + "' where acc_cust_no='" + TextBox4.Text + "'", Connection);
                                    Command1.ExecuteNonQuery();
                                    if (Connection.State == ConnectionState.Open)
                                    {
                                        Connection.Close();
                                    }
                                    Connection.Open();
                                    string _transfar = "Transfere To " + TextBox4.Text;

                                    SqlCommand insert = new SqlCommand("insert into Transactions(cust_act_no , trans_type_id,trans_date_time,Debit,Descripation,Balance) values('" + DropDownList1.Text + "','" + "1" + "','" + DateTime.Now.ToShortDateString() + "','" + TextBox1.Text + "','" + _transfar + "','"+currentaccount  +"')", Connection);

                                    insert.ExecuteNonQuery();

                                    if (Connection.State == ConnectionState.Open)
                                    {
                                        Connection.Close();
                                    }
                                    Connection.Open();
                                    _transfar = "Transfere From " + DropDownList1 .Text;

                                    insert = new SqlCommand("insert into Transactions(cust_act_no , trans_type_id,trans_date_time,Credit,Descripation,Balance) values('" + TextBox4.Text + "','" + "1" + "','" + DateTime.Now.ToShortDateString() + "','" + TextBox1.Text + "','" + _transfar +"','"+ currentaccount1 + "')", Connection);

                                    insert.ExecuteNonQuery();



                                    e.Values.Add("fund_trans_date_time", DateTime.Now.ToShortDateString());
                                    
                                }
                            }
                            


                        }
                    }
                }
                else
                {
                    Label3.Text = " the account less then money";
                }
            }
            else { Label3.Text = " Not Found  account like this number "; }
        }

        catch (Exception ex) { }
    }
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}
