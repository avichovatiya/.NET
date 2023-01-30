using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Enquiry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        if (!Page.IsPostBack)
        {

            DBConnection con = new DBConnection();
            con.SelectRecord("select * from enquiry", GridView1);
        }

    }

    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        string query = "DELETE FROM enquiry where id=" + GridView1.Rows[e.RowIndex].Cells[1].Text;
        DBConnection con = new DBConnection();
        con.DeleteRecord(query);
        con.SelectRecord("select * from enquiry", GridView1);
    }
    protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            foreach (DataControlFieldCell cell in e.Row.Cells)
            {

                foreach (Control control in cell.Controls)
                {
                    LinkButton button = control as LinkButton;

                    if (button != null && button.CommandName == "Delete")

                        button.OnClientClick = "return confirm('Are you sure you want to delete this record?');";
                }
            }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["admin"] = null;
        Response.Redirect("Default.aspx");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        DBConnection con = new DBConnection();
        con.SelectRecord("select * from enquiry", GridView1);
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
