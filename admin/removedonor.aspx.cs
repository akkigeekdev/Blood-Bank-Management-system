using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class admin_removedonor : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        bindgrid();


    }


    public void bindgrid()
    {

        con.Open();
        SqlCommand com = new SqlCommand("SELECT d.id,d.name, d.gender, bb.bg, d.number FROM donors AS d INNER JOIN bloodbank AS bb ON d.bg = bb.id");
        com.Connection = con;
        SqlDataAdapter adpt = new SqlDataAdapter(com);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        donorlist.DataSource = dt;
        donorlist.DataBind();
        con.Close();
        btnconfirm.Visible = false;
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {

        try
        {
            int value = int.Parse(txtid.Text);
            con.Open();
            SqlCommand com = new SqlCommand("SELECT d.id,d.name, d.gender, bb.bg, d.number FROM donors AS d INNER JOIN bloodbank AS bb ON d.bg = bb.id  where d.id =" + value + " ");
            com.Connection = con;
            SqlDataAdapter adpt = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                donorlist.DataSource = dt;
                donorlist.DataBind();
                btnconfirm.Visible = true;
            }
            else {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('No donor found')", true);
            }
            con.Close();

            

            
        }
        catch (Exception)
        {

        }

    }

    protected void btnconfirm_Click(object sender, EventArgs e)
    {
        int value = int.Parse(txtid.Text);
        con.Open();

        SqlCommand com = new SqlCommand("delete from request where donorid =" + value + " ",con);
        com.ExecuteNonQuery();
        com.CommandText = "delete from donors where id =" + value + " ";
        com.ExecuteNonQuery();
        
        con.Close();
        bindgrid();

    }
    protected void btnshowall_Click(object sender, EventArgs e)
    {
        bindgrid();
    }
}