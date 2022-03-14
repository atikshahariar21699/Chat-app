using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace loginpage
{
    public partial class login_page_WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["registration_ConnectionString"].ConnectionString);
            conn.Open();
            String checkuser = "select count(*) from registration_info where USER_NAME='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select password from registration_info where USER_NAME='" + TextBox1.Text + "'";
                SqlCommand pascom = new SqlCommand(checkPasswordQuery , conn);
                string password = pascom.ExecuteScalar().ToString().Replace(" ","");
                
                if("admin"== TextBox1.Text && "admin" == TextBox2.Text)
                {
                    Session["NEW"] = TextBox1.Text;
                    Response.Write("LOGIN SUCCESSFUL");
                    Response.Redirect("database_view_webform.aspx");
                }
                else if(password== TextBox2.Text)
                {
                    Session["NEW"] = TextBox1.Text;
                    if(TextBox1.Text=="ATIK_SHAHARIAR")
                    {
                        Response.Redirect("ATIK_SHAHARIAR.aspx");
                    }

                    else if (TextBox1.Text == "Ovishake_Sen")
                    {
                        Response.Redirect("Ovishake_Sen.aspx");
                    }

                    else if (TextBox1.Text == "Mirazul_Islam")
                    {
                        Response.Redirect("Mirazul_Islam.aspx");
                    }

                    //Response.Write("LOGIN SUCCESSFUL");
                    Response.Redirect("user_page_webform.aspx");
                }
                else
                {
                    Response.Write("INCORRECT PASSWORD");

                }
            }
            else
            {
                Response.Write("INCORRECT USERNAME");
            }
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("passwordrecovery.aspx");
        }
    }
}