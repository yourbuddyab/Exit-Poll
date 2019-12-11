using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    
    {
       // Response.Write(System.Configuration.ConfigurationManager.ConnectionStrings["exitpolConnectionString"].ConnectionString);
        Session["Name"] = tbUser.Text;
    }



    protected void blogin_Click(object sender, EventArgs e)
    {
      
        SqlConnection you = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["exitpolConnectionString"].ConnectionString);
        string query = "select * from Rigister_table where email='" + tbUser.Text + "' and password='" + tbpassword.Text + "'";
        SqlCommand me = new SqlCommand(query, you);
        you.Open();
        SqlDataReader him = me.ExecuteReader();
        
        
         if(him.Read())
         {
             Session["Name"] = tbUser.Text;
             Session["id"] = him["email"].ToString();
             you.Close();
            if (tbUser.Text == "arjunbhati180@gmail.com" || tbUser.Text == "ankurgrover054@gmail.com")
            {
                Response.Redirect("admin.aspx");
            }
            else
            {
                Response.Redirect("timeline.aspx");
            }
        }
            
        else
        {
            idinfo.Text = "Your E-mail is worng please check your Email and Password";   
        }
        
    
    }
    
}