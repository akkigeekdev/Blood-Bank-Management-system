using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class donors_request : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string userId = Convert.ToString(Session["User"]);

        int bg, quantity;
        string remark;

        bg = int.Parse(cmbbg.SelectedValue.ToString());
        quantity = int.Parse(txtquantity.Text);
        remark = txtremarks.Text;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);

        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Request(BG,Req_Quantity,Remark,DonorId,Req_Date) values (" + bg + "," + quantity + ",'" + remark + "'," + userId + ",getDate())");
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Request sent')", true);
        }
        catch (Exception)
        {

        }
 
    }
}