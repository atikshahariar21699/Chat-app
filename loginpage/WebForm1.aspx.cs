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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["registration_ConnectionString"].ConnectionString);
                conn.Open();
                String checkuser = "select count(*) from registration_info where USER_NAME='"+ TextBox1.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();
                if (temp==1)
                {
                    Response.Write("User Name already Exists");
                }
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["registration_ConnectionString"].ConnectionString);
                conn.Open();
                String insertQuery = "insert into registration_info (USER_NAME, EMAIL, PASSWORD , GENDER , COUNTRY , OCCUPATION ) values ( @name , @email , @pass , @gen , @ctry , @ocp  ) ";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@name" , TextBox1.Text);
                com.Parameters.AddWithValue("@email", TextBox2.Text);
                com.Parameters.AddWithValue("@pass", TextBox3.Text);
                com.Parameters.AddWithValue("@gen", DropDownList1.SelectedItem.ToString());
                com.Parameters.AddWithValue("@ctry", DropDownList2.SelectedItem.ToString());
                com.Parameters.AddWithValue("@ocp", TextBox5.Text);
                com.ExecuteNonQuery();
                Response.Redirect("login_page_webform.aspx");
                Response.Write("REGISTRATION SUCCESSFUL");

                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write("\nERROR:" +ex.ToString());
                
            }
          
            //Response.Write("REGISTRATION SUCCESSFULL");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }
    }
}