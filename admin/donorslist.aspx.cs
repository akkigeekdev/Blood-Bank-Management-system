using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class admin_donorslist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);

             con.Open();
             SqlCommand com = new SqlCommand("SELECT d.id, d.name, d.gender, bb.bg, d.number FROM donors AS d INNER JOIN bloodbank AS bb ON d.bg = bb.id");
             com.Connection = con;
             SqlDataAdapter adpt = new SqlDataAdapter(com);
             DataTable dt = new DataTable();
             adpt.Fill(dt);
             donorlist.DataSource = dt;
             donorlist.DataBind();
       
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);

       
            if (cmbsearchby.SelectedValue == "id")
            {
                 int value = int.Parse(txtvalue.Text);              
                con.Open();
                SqlCommand com = new SqlCommand("SELECT d.id,d.name, d.gender, bb.bg, d.number FROM donors AS d INNER JOIN bloodbank AS bb ON d.bg = bb.id  where d.id =" + value + " ");
                com.Connection = con;
                SqlDataAdapter adpt = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                donorlist.DataSource = dt;
                donorlist.DataBind();
            }
          
            if (cmbsearchby.SelectedValue == "name")
            {
                string value = txtvalue.Text;
                con.Open();
                SqlCommand com = new SqlCommand("SELECT d.id,d.name, d.gender, bb.bg, d.number FROM donors AS d INNER JOIN bloodbank AS bb ON d.bg = bb.id  where d.name ='" + value + "' ");
                com.Connection = con;
                SqlDataAdapter adpt = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                donorlist.DataSource = dt;
                donorlist.DataBind();

            }
            else { }
            if (cmbsearchby.SelectedValue == "bloodgroup")
            {
                string value = txtvalue.Text;
                con.Open();
                SqlCommand com = new SqlCommand("SELECT d.id,d.name, d.gender, bb.bg, d.number FROM donors AS d INNER JOIN bloodbank AS bb ON d.bg = bb.id where bb.bg='" + value + "' ");
                com.Connection = con;
                SqlDataAdapter adpt = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                donorlist.DataSource = dt;
                donorlist.DataBind();

            }
            else { }
        }
      
}