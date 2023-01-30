using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_services : System.Web.UI.Page
{

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["admin"] = null;
        Response.Redirect("Default.aspx");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DBConnection con = new DBConnection();
        string query = "INSERT INTO `service`(`ID`, `name`, `price`, `qty`) VALUES (NULL,'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
        con.InsertRecord(query);
    }
}