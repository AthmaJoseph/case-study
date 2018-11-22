using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

public partial class twinkle_parlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=admin-pc\sqlexpress;Initial Catalog=student;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from studentreg where username=@username and password=@password", con);
        cmd.Parameters.AddWithValue("@username", txtusername.Text.ToString());
        cmd.Parameters.AddWithValue("@password", txtpassword.Text.ToString());
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            
            Session["username"] = reader["username"].ToString();
            
            reader.Close();
            cmd.Dispose();
            con.Close();
            Response.Redirect("parentworld.aspx");
        }
        else
        {
            reader.Close();
            cmd.Dispose();
            con.Close();
            lblMessage.Text = "Invalid username and password";
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtpassword.Text = "";
        txtusername.Text = "";
    }
}