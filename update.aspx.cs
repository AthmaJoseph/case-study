using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class twinkle_update : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sql = "select username,address,phone,gmail,name from studentreg where username='" + Session["username"].ToString() + "'";
            DataSet ds = dm.ForAdapter(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                TextBox1.Text = ds.Tables[0].Rows[0][0].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0][1].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0][2].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0][3].ToString();
            }
        }

    }
    
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string sql = "update studentreg set name='" + TextBox1.Text + "',address='" + TextBox2.Text + "',phone='" + TextBox3.Text + "',gmail='" + TextBox4.Text + "'  where username='" + Session["username"].ToString() + "'";
        dm.Execute(sql);
        Label1.Text = "Successfully Inserted";
        
    }
}