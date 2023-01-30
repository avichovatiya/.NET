using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        DBConnection con = new DBConnection();
        //con.SelectRecord("select Name,Mobile_number,Email from enquiry order by id desc", GridView1);
        //con.SelectRecord("select Email,Subject from feedback order by id desc", GridView2);
        //con.SelectRecord("select Car_Name,Fuel_Type,Colour,Price from product order by id desc", GridView3);
        //con.SelectRecord("select Name,Mobile_number,Place,Time from test_drive_request order by id desc", GridView4);


    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["admin"] = null;
        Response.Redirect("Default.aspx");
    }
}