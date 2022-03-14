using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace loginpage
{
    public partial class chat : System.Web.UI.Page
    {
        //string usn;
       public string usn { get; set; }
       
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["userinfo"];
            if (cookie != null)
            {
                Label1.Text += cookie["USER_NAME"].ToString();
                usn = cookie["USER_NAME"].ToString();
            }
            else
            {
                Response.Redirect("login_page_webform.aspx");
            }
        }
    }
}