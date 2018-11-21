﻿using System;
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
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Drawing;

public partial class twinkle_home : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Name"] == null)
            Response.Redirect("frmLogin.aspx");
        else
        {
            String userid = Convert.ToString((int)Session["userid"]);
            String username = Session["Name"].ToString();
            String userrole = Session["Role"].ToString();

            lbluserInfo.Text = "Welcome, " + username + ".";
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["Name"] = null;
        Session["Role"] = null;
        Response.Redirect("frmLogin.aspx");
    }
           
}
