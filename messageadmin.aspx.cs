using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class twinkle_messageadmin : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=ADMIN-PC\\SQLEXPRESS;Initial Catalog=student;Integrated Security=True";
        con.Open();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into messages" + "(date,message) values(@date,@message)", con);
        cmd.Parameters.AddWithValue("@message", TextBox1.Text);
        cmd.Parameters.AddWithValue("@date", TextBox2.Text);
        cmd.ExecuteNonQuery();
        Label1.Text = "Message Successfully Send !";
        TextBox1.Text = "";
        TextBox2.Text = "";
        con.Close();

    }
}