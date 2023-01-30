using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;
using System.Web.UI.WebControls;

public class DBConnection
{
    MySqlConnection con;
    MySqlCommand cmd;
    MySqlDataAdapter da;
    public DBConnection()
    {
        try
        {
            con = new MySqlConnection();
            con.ConnectionString = "SERVER=localhost;DATABASE=hm;UID=root;password=;";
            con.Open();
        }
        catch (Exception ex)
        {
            HttpContext.Current.Response.Write("<h1>" + ex.Message.ToString() + "</h1>");

        }

    }
    public void InsertRecord(string Query)
    {
        try
        {
            cmd = new MySqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = Query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            HttpContext.Current.Response.Write("<h1>" + ex.Message.ToString() + "</h1><h2>" + Query + "</h2>");

        }
    }
    public void DeleteRecord(string Query)
    {
        try
        {
            cmd = new MySqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = Query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            HttpContext.Current.Response.Write("<h1>" + ex.Message.ToString() + "</h1><h2>" + Query + "</h2>");

        }
    }
    public void UpdatetRecord(string Query)
    {
        try
        {
            cmd = new MySqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = Query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            HttpContext.Current.Response.Write("<h1>" + ex.Message.ToString() + "</h1><h2>" + Query + "</h2>");

        }
    }
    public void SelectRecord(string Query, GridView gv)
    {
        try
        {
            da = new MySqlDataAdapter(Query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            gv.DataSource = ds.Tables[0];
            gv.DataBind();
        }
        catch (Exception ex)
        {
            HttpContext.Current.Response.Write("<h1>" + ex.Message.ToString() + "</h1><h2>" + Query + "</h2>");

        }
    }
    public DataSet isValid(string Query)
    {
        DataSet ds = new DataSet();
        try
        {
            da = new MySqlDataAdapter(Query, con);
            da.Fill(ds);
            return ds;
        }
        catch (Exception ex)
        {
            HttpContext.Current.Response.Write("<h1>" + ex.Message.ToString() + "</h1><h2>" + Query + "</h2>");

        }
        return ds;
    }
}