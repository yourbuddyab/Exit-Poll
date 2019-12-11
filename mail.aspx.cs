using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class mail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("login.aspx");
        }
        userid.Text = Session["Name"].ToString();
    }
    protected void bsend_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["exitpolConnectionString"].ConnectionString);
        if (FileUpload1.HasFile || FileUpload2.HasFile)
        {
            string strname = FileUpload1.FileName;
            string str = FileUpload2.FileName;
            string path = "~/message/" +tbfirst.Text + strname.Substring(strname.Length - 4);
            string img = "~/message/" + tbsecond.Text + str.Substring(str.Length - 4);
            string query = "insert into message values('" + ddlmail.Text + "','" + ddlcc.Text + "','" +tbmsg.Text+ "','" +tbfirst.Text+ "','" + path + "','"+tbsecond.Text+ "','"  + img + "','" + Session["Name"].ToString() + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            try
            {
                cmd.ExecuteNonQuery();
                FileUpload1.SaveAs(Server.MapPath(path));
                cmd.ExecuteNonQuery();
                FileUpload2.SaveAs(Server.MapPath(img));
            }
            catch
            {
                Label1.Text = "Uploading error!!";
            }
            con.Close();
            ddlmail.Text = "";
            ddlcc.Text = "";
        }
        else
        {
            Label1.Text = "Plz upload the image!!!!";
        }
        sendmsg.Text = "Your message send to admin. Admin Never reply you !! <br> Thank you"; 
    }
}
