using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DBConnection con = new DBConnection();
        //string query ="INSERT INTO `enquiry`(`ID`, `name`, `con_number`, `email_add`, `message`) VALUES (NULL,'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        string query ="INSERT INTO `enquiry`(`ID`, `name`, `mobile_number`, `email`, `enquiry`) VALUES (NULL,'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        con.InsertRecord(query);
    }
}