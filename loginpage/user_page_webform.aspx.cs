using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace loginpage
{
    
    public partial class user_page_webform : System.Web.UI.Page
    {
        string usn;
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Session["New"]!=null)
            {
                Label1.Text += Session["New"].ToString();
                usn= Session["New"].ToString();
            }
            else
            {
                Response.Redirect("login_page_webform.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("login_page_webform.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("WebForm1.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("demo2.html");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["New"] = usn;
            Response.Redirect("chat.aspx");
        }
    }
}