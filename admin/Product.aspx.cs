using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["admin"] = null;
        Response.Redirect("Default.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DBConnection con = new DBConnection();
        string query = "INSERT INTO `manage_room`(`ID`, `room_no`, `room_type`, `bed_type`, `free`, `Price`) VALUES (NULL,'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
        con.InsertRecord(query);
       // Label1.Visible = true;

    }
}