using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DBConnection con = new DBConnection();
        string query = "INSERT INTO `booking`(`ID`, `cust_name`, `mob_no`,`adhar_no`,`date_from`,`date_to`,`no_of_person`) VALUES (NULL,'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.Text + "')";
        con.InsertRecord(query);
    }
}