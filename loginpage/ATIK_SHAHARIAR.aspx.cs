using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace loginpage
{
    public partial class Friend_list : System.Web.UI.Page
    {
        
        //string usn;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["New"] != null)
            {
                Label1.Text += Session["New"].ToString();
                // usn = Session["New"].ToString();
                HttpCookie cookie = new HttpCookie("userinfo");
                cookie["USER_NAME"] = Session["New"].ToString();
                Response.Cookies.Add(cookie);



            }
            else
            {
                Response.Redirect("login_page_webform.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("chat.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("chat.aspx");
        }
    }
}