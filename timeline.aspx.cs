using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Configuration.Internal;
public partial class timeline : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("login.aspx");
        }

        userid.Text = "Hello " + Session["Name"].ToString();

        if (Session["Name"].ToString() == "arjunbhati180@gmail.com" || Session["Name"].ToString() == "ankurgrover054@gmail.com")
            {
                hladmin.Visible = true;
            }

        SqlConnection add = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["exitpolConnectionString"].ConnectionString);
        SqlCommand addcom = new SqlCommand("POLLING_COND", add);
        addcom.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter ad = new SqlDataAdapter(addcom);
        DataSet dt = new DataSet();
        ad.Fill(dt);

        lone.Text = dt.Tables[0].Rows[0]["fname"].ToString();
        Label1.Text = dt.Tables[0].Rows[0]["sname"].ToString();
        RadioButtonList1.Items[0].Text = dt.Tables[0].Rows[0]["fname"].ToString();
        RadioButtonList1.Items[1].Text = dt.Tables[0].Rows[0]["sname"].ToString();
        Ib1.ImageUrl = "~/image/" + dt.Tables[0].Rows[0]["fid"].ToString() + ".jpg";
        Ib2.ImageUrl = "~/image/" + dt.Tables[0].Rows[0]["sid"].ToString() + ".jpg";
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
     
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["exitpolConnectionString"].ConnectionString);
        string query="";
        if (RadioButtonList1.SelectedIndex == 0)
        {
            query = "update polling set fvote=fvote+1 where status='Active'";
        }
        else
        {
           query = "update polling set svote=svote+1 where status='Active'";
        }
        SqlConnection add = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["exitpolConnectionString"].ConnectionString);
        SqlCommand addcom = new SqlCommand(query, add);
        add.Open();
        addcom.ExecuteNonQuery();
        add.Close();
        Button1.Visible = false;
        Image1.Visible = false;
        lthanks.Text = "Thanks for voting";
        
  
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("login.aspx");
    }
}