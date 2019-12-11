using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Data.Sql;

public partial class createpoll : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
        
            SqlConnection add = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["exitpolConnectionString"].ConnectionString);
            SqlCommand addcom = new SqlCommand("SELECT_FID", add);
            addcom.CommandType = CommandType.StoredProcedure;
            //addcom.Parameters.AddWithValue("@ID", Convert.ToInt32(DropDownList1.SelectedValue));

            SqlDataAdapter ad = new SqlDataAdapter(addcom);
            DataSet dt = new DataSet();
            ad.Fill(dt);
            DropDownList1.DataSource = dt.Tables[0];
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "ID";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "Selcet Candidate");
            DropDownList2.DataSource = dt.Tables[0];
            DropDownList2.DataTextField = "Name";
            DropDownList2.DataValueField = "ID";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "Selcet Candidate");
        }
    }
    protected void bvs_Click(object sender, EventArgs e)
    {
    
        SqlConnection you = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["exitpolConnectionString"].ConnectionString);
        string query = "select max(pid) from polling";
        SqlCommand me = new SqlCommand(query, you);
        you.Open();
        SqlDataReader him = me.ExecuteReader();
        int id = 1;
        if (him.Read())
        {
           // Response.Write(him[0].ToString());
         //   bvs.Text = him[0].ToString();
           if(him[0].ToString().Trim()!="")
                id = Int32.Parse(him[0].ToString()) + 1;
        }
        him.Close();
        me.CommandText = "update polling set status='Close'";
        me.ExecuteNonQuery();
        me.CommandText = "insert into polling values(" + id.ToString() + "," + DropDownList1.SelectedValue + ",0," + DropDownList2.SelectedValue + ",0,'Active')";
        me.ExecuteNonQuery();
        you.Close();
           }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        fcon.ImageUrl = "~/image/" + DropDownList1.SelectedValue + ".jpg";
      
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        scon.ImageUrl = "~/image/" + DropDownList2.SelectedValue + ".jpg";
      
    }
    protected void Bnot_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminpanel.aspx");
    }
}
