using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_request : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack) {
            bindgrid();
        }
        

    }
    public void bindgrid()
    {

        con.Open();
        SqlCommand com = new SqlCommand("SELECT request.id, donors.name, bloodbank.bg, request.req_date, request.req_quantity FROM bloodbank INNER JOIN request ON bloodbank.id = request.bg INNER JOIN donors ON request.donorid = donors.id where request.status IS NULL");
        com.Connection = con;
        SqlDataAdapter adpt = new SqlDataAdapter(com);
        DataTable dt = new DataTable();
        adpt.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
            lblcount.Text = dt.Rows.Count.ToString();
        }
        else {
            GridView1.DataSource = dt;
            GridView1.DataBind();
            lblcount.Text = dt.Rows.Count.ToString();
        }
        
        con.Close();
    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName.IndexOf("Accept") != -1)
        {
            string value = e.CommandName.Split(':')[1];
            string id = value.Split(',')[0];
            string quantity = value.Split(',')[1];

            con.Open();
            SqlCommand com = new SqlCommand("update request set status =0 ,  status_date = GETDATE() where id='" + id + "'", con);
            SqlCommand upd = new SqlCommand("update bloodbank set quantity  = (quantity -  '"+quantity+"'  ) where id='" + id + "'", con);
            com.ExecuteNonQuery();
            con.Close();
        }
        else 
        {
            string value = e.CommandName.Split(':')[1];
            string id = value.Split(',')[0];
            string quantity = value.Split(',')[1];
            con.Open();
            SqlCommand com = new SqlCommand("update request set status =1 ,  status_date =GETDATE() where id='" + id + "'", con);
            com.ExecuteNonQuery();
            con.Close();
        }

        bindgrid();
    }
}