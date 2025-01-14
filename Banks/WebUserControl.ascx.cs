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
using System.Data.Sql;
using System.Data.SqlClient;

public partial class WebUserControl : System.Web.UI.UserControl
{
    SqlConnection Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ebankConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Visible = false  ;
        Panel1.Visible = false;
        SqlCommand cmd2 = new SqlCommand("select id,Q,a1,a2,a3  from ope ORDER BY Id DESC", Connection);
        Connection.Open();
        SqlDataReader dr = cmd2.ExecuteReader();
        if (dr.Read())
        {
            Label4.Text = dr[1].ToString();
            RadioButton1.Text = dr[2].ToString();
            RadioButton2.Text = dr[3].ToString();
            RadioButton3.Text = dr[4].ToString();
            
        }
        dr.Close();
        Connection.Close();

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        int i = 0;
        try
        {
            if (Request.Cookies["voit"].Value != null)
            {
                i = 0;
                Label5.Visible = true;
                Label5.Text = "You are voit before that";
            }
        }
        catch (Exception ex)
        {
            i = 1;

        }
        if (i == 1)
        {
            if ((RadioButton1.Checked == false && RadioButton2.Checked == false) && (RadioButton3.Checked == false))
            {
                Label5.Text = "Choose The One on answer please";
                Label5.Visible = true;
                
            }
            else
            {


                byte[] y = new byte[3];
                byte x = 0;
                if (RadioButton1.Checked)
                {
                    x = 0;
                }
                if (RadioButton2.Checked)
                { x = 1; }
                if (RadioButton3.Checked)
                { x = 2; }

                SqlCommand cmd = new SqlCommand("select id,r1,r2,r3 from ope ORDER BY Id DESC", Connection);
                Connection.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    y[0] = Convert.ToByte(dr[1].ToString());
                    y[1] = Convert.ToByte(dr[2].ToString());
                    y[2] = Convert.ToByte(dr[3].ToString());

                }
                dr.Close();
                Connection.Close();
                y[x] += 1;
                SqlCommand cmd2 = new SqlCommand("update ope set r" + Convert.ToString(x + 1) + " = " + Convert.ToString(y[x]), Connection);
                int updated;
                Connection.Open();
                updated = cmd2.ExecuteNonQuery();
                Connection.Close();


                Panel1.Visible = true;
                int tx = y[0] + y[1] + y[2];
                rr1.Text = RadioButton1.Text;
                rr2.Text = RadioButton2.Text;
                rr3.Text = RadioButton3.Text;

                v1.Text = Convert.ToString(y[0]) + "Voit";
                string s = (Convert.ToDouble(y[0].ToString()) / tx).ToString();
                h1.Text = Convert.ToString((int)((Convert.ToDouble(y[0].ToString()) / tx) * 100));
                Image1.Width = (int)(Convert.ToDouble(h1.Text) * 2);
                v2.Text = Convert.ToString(y[1]) + "   " + "Voit";
                h2.Text = "  " + Convert.ToString((int)((Convert.ToDouble(y[1].ToString()) / tx) * 100));
                Image2.Width = (int)(Convert.ToDouble(h2.Text) * 2);
                v3.Text = Convert.ToString(y[2]) + "Voit";
                h3.Text = Convert.ToString((int)((Convert.ToDouble(y[2].ToString()) / tx) * 100));
                Image3.Width = (int)(Convert.ToDouble(h3.Text) * 2);
                HttpCookie voit = new HttpCookie("voit");
                voit.Value = "voit";
                Response.Cookies.Add(voit);
                Response.Cookies["voit"].Expires = DateTime.Now.AddDays(1);



            }
        }
    }
}
