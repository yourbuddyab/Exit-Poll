using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
public partial class Register : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            for (int y = 1990; y <= 2010; y++)
                ddlyear.Items.Add(y.ToString());


           // SqlConnection add = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Arjun Bhati\\Documents\\exitpol.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
            SqlConnection add = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["exitpolConnectionString"].ConnectionString);
            SqlCommand addcom = new SqlCommand("COUNTRY_SELECT", add);
            addcom.CommandType =CommandType.StoredProcedure;

            SqlDataAdapter ad = new SqlDataAdapter(addcom);
            DataSet dt = new DataSet();
            ad.Fill(dt);
            ddlcountry.DataSource = dt.Tables[0];
            ddlcountry.DataTextField = "Country_name";
            ddlcountry.DataValueField = "CID";
            ddlcountry.DataBind();
            ddlcountry.Items.Insert(0,"Sclect your country");
            
        }


    }
    
    protected void brighters_Click(object sender, EventArgs e)
    {
       // SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Arjun Bhati\\Documents\\exitpol.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["exitpolConnectionString"].ConnectionString);
        string query = "insert into Rigister_table values('" + tbnamef.Text + "','" + tbnamel.Text + "','" + tbmailid.Text + "','" + rblgender.Text + "','" + ddldob.Text + "','" + ddlmonth.Text + "','" + ddlyear.Text+ "','" + tbaddress.Text + "','" + tbpincode.Text + "','" + ddlcountry.Text + "','" + ddlstate.Text + "','" + ddlcity.Text + "','" + tbcontactno.Text + "','" + tbpassword.Text + "')";
        SqlCommand com = new SqlCommand(query, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        Response.Redirect("login.aspx");
        
    }
    protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlcountry.SelectedIndex != 0)
        {
           // SqlConnection add = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Arjun Bhati\\Documents\\exitpol.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
            SqlConnection add = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["exitpolConnectionString"].ConnectionString);
            SqlCommand addcom = new SqlCommand("STATE_SELECT_BY_CID", add);
            addcom.CommandType = CommandType.StoredProcedure;
            addcom.Parameters.AddWithValue("@CID", Convert.ToInt32(ddlcountry.SelectedValue));

            SqlDataAdapter ad = new SqlDataAdapter(addcom);
            DataSet dt = new DataSet();
            ad.Fill(dt);
            ddlstate.DataSource = dt.Tables[0];
            ddlstate.DataTextField = "State_name";
            ddlstate.DataValueField = "SID";
            ddlstate.DataBind();
            ddlstate.Items.Insert(0,"Selcet your state");
            //ddlcity.Items.Clear();
        }
            if (ddlcountry.SelectedItem.Text == "INDIA")
            {
                lccode.Text = ("+91");
            }
            else if (ddlcountry.SelectedItem.Text == "USA")
            {
                lccode.Text = ("+1");
            }
            else if (ddlcountry.SelectedItem.Text == "England")
            {
                lccode.Text = ("+44");
            }
            else if (ddlcountry.SelectedItem.Text == "Australia")
            {
                lccode.Text = ("+61");
            }
            else if (ddlcountry.SelectedItem.Text == "Japan")
            {
                lccode.Text = ("+81");
            }
            else if (ddlcountry.SelectedItem.Text == "Chaina")
            {
                lccode.Text = ("+86");
            }
            else
            {
                lccode.Text = ("Enter with country Code");
                
            }

        
    }
   
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {

   if (ddlcountry.SelectedIndex != 0)
        {
         
            SqlConnection add = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["exitpolConnectionString"].ConnectionString);
            SqlCommand addcom = new SqlCommand("CITY_SELECT_BY_SID", add);
            addcom.CommandType = CommandType.StoredProcedure;
            addcom.Parameters.AddWithValue("@SID", Convert.ToInt32(ddlstate.SelectedValue));

            SqlDataAdapter ad = new SqlDataAdapter(addcom);
            DataSet dt = new DataSet();
            ad.Fill(dt);
            ddlcity.DataSource = dt.Tables[0];
            ddlcity.DataTextField = "City_name";
            ddlcity.DataValueField = "CityID";
            ddlcity.DataBind();
            ddlcity.Items.Insert(0, "Selcet your City");
            
            
        } 
    }
    protected void ddlmonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        int m = Int32.Parse(ddlmonth.SelectedValue);
        if (m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12)
            fill(31);
        else if (m == 2)
            fill(28);
        //else if (ddlyear.SelectedValue / 4)
          //  fill(29);
        else
            fill(30);

        }
        void fill(int n)
        {
            ddldob.Items.Clear();
            for (int i=1;i<=n;i++)
                ddldob.Items.Add(i.ToString());
        }



        public object convert { get; set; }
}