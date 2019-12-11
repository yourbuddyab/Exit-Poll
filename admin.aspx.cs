using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("login.aspx");
        }
        lsession.Text = Session["Name"].ToString();

        if (Page.IsPostBack)
        {
            larjun.Text = "Re-Enter Password";
        }
        else
        {

            Random r = new Random();
            int x = r.Next(1000, 9999);
            codeweb.Text = x.ToString();

        }
        if (Session["Name"].ToString() == "arjunbhati180@gmail.com")
        {
            getresult.Text = ("Arjun verify yourself ");
            //imgadmin.ImageUrl = "http://localhost:49675/My Project/pics/arjun.jpg";
            imgadmin.ImageUrl = "~/pics/arjun.jpg";
        }
        else if (Session["Name"].ToString() == "ankurgrover054@gmail.com")
        {
            getresult.Text = ("Ankur verify yourself ");
            imgadmin.ImageUrl = "~/pics/ankur.jpg";
        }
    }

    protected void bresult_Click(object sender, EventArgs e)
    {
        if (tbcodeweb.Text == codeweb.Text)
        {
            if (Session["Name"].ToString() == "arjunbhati180@gmail.com")
            {
                if (tbkeywordab.Text == "1432")
                {
                    Response.Redirect("adminpanel.aspx");
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
            else if (Session["Name"].ToString() == "ankurgrover054@gmail.com")
            {
                if (tbkeywordag.Text == "7976")
                {
                    Response.Redirect("adminpanel.aspx");
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }
        else
        {
            larjun.Text = ("Re-enter your captcha and your password");

        }
    }
}

