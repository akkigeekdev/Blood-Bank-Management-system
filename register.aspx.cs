using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string name, dob, gender, addr, email, password, number;
        int bg;

        name = txtname.Text;
        dob = txtdob.Text;
        gender = cmbGender.SelectedValue;
        bg = int.Parse(cmbbg.SelectedValue.ToString());     
        addr = txtaddress.Text;
        number = txtmobile.Text;
        email = txtemail.Text;
        password = txtpassword.Text;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);

        try {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into donors values('"+name+"','"+dob+"','"+gender+"',"+bg+",'"+addr+"','"+number+"','"+email+"','"+password+"')");
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();

        }
        catch(Exception ex){
            
        }
 

    }
}