using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class donors_changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string userId = Convert.ToString(Session["User"]);
        string old, password, confirm;
        old = txtoldpass.Text;
        password = txtpass.Text;
        confirm = txtcpass.Text;

      
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);

        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select Id from donors where id='" + userId + "' and Password ='" + old + "' ");
            cmd.Connection = con;
           string result = (cmd.ExecuteScalar() ?? "").ToString();
            con.Close();


            if (result != "")
            {
                con.Open();
                SqlCommand update = new SqlCommand("update donors set password ='"+password+"' where id='" + userId + "' ");
                update.Connection = con;
                update.ExecuteNonQuery();
                con.Close();
                string script = "Password changed successfully";
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + script + "' );", true);
            }
            else
            {
                string script = "invalid old Password";
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + script + "' );", true);

            }

        }
        catch (Exception)
        {

        }
 
    }
}