using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Timers;


public partial class Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Session["Name"] == null)
        {
            Response.Redirect("login.aspx");
        }
        
    }
    protected void bresult_Click(object sender, EventArgs e)
    {
      
        SqlConnection you = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["exitpolConnectionString"].ConnectionString);
        SqlCommand addcom = new SqlCommand("UPLOAD_SELECT_BY_POLLING", you);
        addcom.CommandType = CommandType.StoredProcedure;
        you.Open();
        SqlDataAdapter ad = new SqlDataAdapter(addcom);
        DataSet dta = new DataSet();
        ad.Fill(dta);
         {
            lid.Text = dta.Tables[0].Rows[0]["fname"].ToString();
            lid1.Text = dta.Tables[0].Rows[0]["sname"].ToString();
            lvote.Text = dta.Tables[0].Rows[0]["fvote"].ToString();
            lvote2.Text = dta.Tables[0].Rows[0]["svote"].ToString();
            
            int a = Convert.ToInt32(lvote.Text.ToString());
            int b = Convert.ToInt32(lvote2.Text.ToString());
            if(a>b)
            {
                lcong.Text = "Congratulation  " + lid.Text.ToString();
                wincandidate.Text = dta.Tables[0].Rows[0]["fname"].ToString();
                losscandidate.Text = dta.Tables[0].Rows[0]["sname"].ToString();
            }
            else if (a == b)
            {

                lcong.Text = "Sorry " + lid.Text.ToString() + " And " + lid1.Text.ToString() + " Its a TIE";
                wincandidate.Text = "No one";
                losscandidate.Text = "No one";
            }
            else
            {
                lcong.Text = "Congratulation  " + lid1.Text.ToString();
                wincandidate.Text = dta.Tables[0].Rows[0]["sname"].ToString();
                losscandidate.Text = dta.Tables[0].Rows[0]["fname"].ToString();
            
            }
            you.Close();
            
        }
    }/*

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        int min;
        if (Convert.ToString(lcong.Text) != "")
        {
            min = int.Parse(lcong.Text);
        }
        else
            min=Convert.ToInt32(default Timer);
    }*/
    

   
  
}