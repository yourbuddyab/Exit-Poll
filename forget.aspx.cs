using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class forget : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void forbutton_Click(object sender, EventArgs e)
    {
        if (forgmail.Text == ""|| forpin.Text=="")
        {
            heading.Visible = true;
            heading.Text = ("Please Enter Your Email and Pincode");
        }
        else
        {

            SqlConnection sir = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["exitpolConnectionString"].ConnectionString);
            string query = "select * from Rigister_table where email='" + forgmail.Text + "' and pincode= '" + forpin.Text + "'";
            SqlCommand jmk = new SqlCommand(query, sir);
            sir.Open();
            SqlDataReader fr = jmk.ExecuteReader();
            heading.Visible = true;
            forl.Text = ("what is your New Password");
            forpass.Visible = true;
            forconform.Visible = true;
            lreenter.Visible = true;
            tbreepass.Visible = true;
            fr.Close();
            jmk.CommandText = "select fname from Rigister_table where email='" + forgmail + "'";
            Name.Text = jmk.ExecuteNonQuery().ToString();
            
            sir.Close();
        }
    }
    protected void forconform_Click(object sender, EventArgs e)
    {
        SqlConnection sir = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["exitpolConnectionString"].ConnectionString);
        string query = "update Rigister_table set password='" + forpass.Text + "'where email='" + forgmail.Text + "'";
        SqlCommand jmk = new SqlCommand(query, sir);
        sir.Open();
        jmk.ExecuteNonQuery();
        newpass.Text = ("your Password has been change.  Try login ");
        // Response.Redirect("Homepage.aspx");
      
    }
   
}