using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class admin_acceptedrequest : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        bindgrid();
    }

    public void bindgrid()
    {
        
            //SELECT  bloodbank.bg, donors.name, request.bg AS Expr1, request.req_quantity, request.req_date, request.status,request.status_date ,request.donorid FROM  bloodbank INNER JOIN donors ON bloodbank.id = donors.bg INNER JOIN request ON bloodbank.id = request.bg AND donors.id = request.donorid where request.status=0
        con.Open();
        SqlCommand com = new SqlCommand("SELECT request.id, donors.name, bloodbank.bg, request.req_date, request.req_quantity, request.status_date FROM bloodbank INNER JOIN request ON bloodbank.id = request.bg INNER JOIN donors ON request.donorid = donors.id where request.status=0");
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
        int value = int.Parse(txtvalue.Text);
        con.Open();
        SqlCommand com = new SqlCommand("SELECT  bloodbank.bg, donors.name, request.bg AS Expr1, request.req_quantity, request.req_date, request.status,request.status_date ,request.donorid FROM  bloodbank INNER JOIN donors ON bloodbank.id = donors.bg INNER JOIN request ON bloodbank.id = request.bg AND donors.id = request.donorid where request.status=0 and request.id="+value+"");
        com.Connection = con;
        SqlDataAdapter adpt = new SqlDataAdapter(com);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }
}