using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_Changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet ds = (DataSet)Session["admin"];
        if (TextBox1.Text == ds.Tables[0].Rows[0][2].ToString())
        {
            if (TextBox2.Text == TextBox3.Text)
            {
                string query = "update login set password='" + TextBox2.Text + "' where id=" + ds.Tables[0].Rows[0][0].ToString();
                DBConnection con = new DBConnection();
                con.UpdatetRecord(query);
                ds = con.isValid("select * from login where id=" + ds.Tables[0].Rows[0][0].ToString());
                Session["admin"] = ds;
                Label1.Visible = true;
                Label1.Text = "Password Change Successful";

                LinkButton1_Click(sender, e);
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Your New Password & Confirm Password Not Match";
            }
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Old Password Not Match";
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["admin"] = null;
        Response.Redirect("Default.aspx");
    }
}