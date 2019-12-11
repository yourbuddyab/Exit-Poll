using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class Voting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session ["Name"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            lsession.Text ="Hello Admin " + Session["Name"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
    
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["exitpolConnectionString"].ConnectionString);
        if (FileUpload1.HasFile)
        {
            string strname = FileUpload1.FileName;
            string path = "~/image/" + TextBox1.Text +strname.Substring(strname.Length-4);
            string query = "insert into upload values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + path + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            try
            {
                cmd.ExecuteNonQuery();
                FileUpload1.SaveAs(Server.MapPath(path));
            }
            catch (Exception ex)
            {
               if(ex.Message.Substring(13,11)=="PRIMARY KEY")
                Label1.Text = "ID already exists";
               else
                   Label1.Text = "ERROR while uploading";
            }
            con.Close();
            
            if(Label1.Text.Length==0)
            Label1.Text = "Image Uploaded successfully";
            TextBox1.Text = "";
            TextBox2.Text = "";
         
        }
        else
        {
            // Label1.Visible = true; 
            Label1.Text = "Plz upload the image!!!!";
        } 
    }
}