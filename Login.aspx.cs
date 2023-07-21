using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (rdButtonSelect.SelectedValue == "1")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Registration where regi_Username=@username  and regi_Password=@password1", con);

            cmd.Parameters.AddWithValue("@username", txtUname.Text);
            cmd.Parameters.AddWithValue("@password1", txtPassword.Text);

            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["Username"] = txtUname.Text;
                Response.Redirect("HomeUser.aspx");
            }
            else
            {
                lblstatus.Text = "username or password incorrect";
                lblstatus.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
        }
        else if (rdButtonSelect.SelectedValue == "2")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Admin where UserName=@username  and Password=@password1", con);

            cmd.Parameters.AddWithValue("@username", txtUname.Text);
            cmd.Parameters.AddWithValue("@password1", txtPassword.Text);

            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["username"] = txtUname.Text;
                Response.Redirect("HomeAdmin.aspx");
            }
            else
            {
                lblstatus.Text = "username or password incorrect";
                lblstatus.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
        }
        else
        {
            lblstatus.Text = "Please select Option";
            lblstatus.ForeColor = System.Drawing.Color.Red;
        }
    }
}