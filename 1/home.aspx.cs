using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;

public partial class twinkle_home : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
       


    }
    public void bind()
    {
        DataSet ds = dm.ForAdapter("SELECT username FROM studentreg WHERE username = '" + TextBox9.Text + "'");
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Write("<script>alert('Username already taken');</script>");
        }
        else
        {
            string gender = string.Empty;
            if (rbMale.Checked)
            {
                gender = "M";

            }
            else if (rbFemale.Checked)
            {
                gender = "F";
            }

            dm.Execute("INSERT INTO studentreg (name,age,dob,gender,address,addate,parentname,gmail,phone,username,password,cpassword) VALUES('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "','" + gender + "', '" + TextBox4.Text + "','" + TextBox5.Text + "', '" + TextBox6.Text + "', '" + TextBox7.Text + "','" + TextBox8.Text + "', '" + TextBox9.Text + "', '" + TextBox10.Text + "','" + TextBox11.Text + "')");
            Response.Write("<script>alert('Successfully registered.Please wait for approve.');</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
        }
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        bind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        bind();
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {

    }
    protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length == 6)
        {
            args.IsValid = true;

        }
        else
        {
            args.IsValid = false;
        }
    }

   
}