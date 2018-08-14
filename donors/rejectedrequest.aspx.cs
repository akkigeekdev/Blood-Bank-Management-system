using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class donors_rejectedrequest : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        bindgrid();


    }
    public void bindgrid()
    {
        string userId = Convert.ToString(Session["User"]);
        con.Open();
        SqlCommand com = new SqlCommand("SELECT request.id, bloodbank.bg, request.req_quantity, request.req_date, request.status, request.status_date FROM bloodbank INNER JOIN request ON bloodbank.id = request.bg WHERE (request.donorid = '"+userId+"') AND (request.status = 1)");
        com.Connection = con;
        SqlDataAdapter adpt = new SqlDataAdapter(com);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        int value = int.Parse(txtid.Text);
        con.Open();
        SqlCommand com = new SqlCommand("SELECT  bloodbank.bg, donors.name, request.bg AS Expr1, request.req_quantity, request.req_date, request.status,request.status_date ,request.donorid FROM  bloodbank INNER JOIN donors ON bloodbank.id = donors.bg INNER JOIN request ON bloodbank.id = request.bg AND donors.id = request.donorid where request.status=1 and request.id=" + value + "");
        com.Connection = con;
        SqlDataAdapter adpt = new SqlDataAdapter(com);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }
}