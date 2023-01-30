using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string query = "Select * FROM login where name='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
        DBConnection con = new DBConnection();
        DataSet ds = con.isValid(query);
        if (ds.Tables[0].Rows.Count>0)
        {
            Session["admin"] = ds;
            Response.Redirect("Home.aspx");
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Invalid username or password";
        }
    }
}