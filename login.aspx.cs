using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class login : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string name, pass;
        string result;
        name = username.Text;
        pass = password.Text;


        if (name == "admin" && pass == "admin")
        {
            Response.Redirect("~/admin/donorslist.aspx");

        }
        else { 
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select Id from donors where Name='" + name + "' and Password ='" + pass + "' ");
                cmd.Connection = con;
                result = (cmd.ExecuteScalar() ?? "").ToString();
                con.Close();


                if (result != "")
                {
                    Session["User"] = result;
                    Response.Redirect("~/donors/request.aspx");
                }
                else
                {
                    string script = "Incorrect Username or Password";
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + script + "' );", true);

                }
        
            }
            catch (Exception)
            {

            }


        }
        
               
    }

}