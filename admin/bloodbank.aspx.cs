using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class admin_bloodbank : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        int quantity;

       
        string bg = cmbbg.SelectedValue;
        quantity = int.Parse(txtquantity.Text);
    

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);

        try
        {
            con.Open();
            
            SqlDataAdapter da = new SqlDataAdapter("select quantity from bloodbank where BG ='"+ bg +"'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            int total = int.Parse(dt.Rows[0][0].ToString()) + quantity;



            SqlCommand cmd = new SqlCommand("update bloodbank set Quantity =" + total + " where BG='" + bg + "' ", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/admin/bloodbank.aspx");


        }
        catch (Exception ex)
        {

        }


    }
}