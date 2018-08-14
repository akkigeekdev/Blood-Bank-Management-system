using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class donors_updateinfo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        string userId =  Convert.ToString(Session["User"]);
       
        con.Open();
        String b = "select * from Donors where Id='" + userId.Trim() + "'";
        SqlCommand cmd = new SqlCommand(b, con);
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            txtname.Text = dr["Name"].ToString();
            txtaddress.Text = dr["Address"].ToString();
            txtmobile.Text = dr["Number"].ToString();
            txtemail.Text = dr["Email"].ToString();
            cmbGender.Text = dr["Gender"].ToString();
            cmbbg.Text = dr["BG"].ToString();
            //txtdob.Text = dr["DOB"].ToString().Substring(0,10);
          
        }
        if (dr.IsClosed == false)
        {
            dr.Close();
        }
        con.Close();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string name = ((TextBox)form.FindControl("txtname")).Text;

           int  bg = int.Parse(cmbbg.SelectedValue.ToString()); 
            con.Open();
            string query = "update Donors set name='" +  name + "' , dob='', gender='" + cmbGender.SelectedValue + "', bg='" + bg + "', address='" + txtaddress.Text + "', number='" + txtmobile.Text + "',email='" + txtemail.Text + "' where id='" + Convert.ToString(Session["User"]) +"'";
            SqlCommand cmd = new SqlCommand(query,con);
            cmd.ExecuteNonQuery();
            con.Close();

        }
        catch (Exception)
        {

        }
    }
}