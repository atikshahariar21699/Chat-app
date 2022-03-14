using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;



namespace loginpage
{
    public partial class passwordrecovery : System.Web.UI.Page
    {
        string lm = "cgj2mcftxyw4rbjbwtgbvh2cb";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["registration_ConnectionString"].ConnectionString);
            conn.Open();
            String checkuser = "select count(*) from registration_info where USER_NAME='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if(temp==1)
            {
                conn.Open();
                string checkPasswordQuery = "select password from registration_info where USER_NAME='" + TextBox1.Text + "'";
                SqlCommand pascom = new SqlCommand(checkPasswordQuery, conn);
                string password = pascom.ExecuteScalar().ToString().Replace(" ", "");
                string checkEmailQuery = "select EMAIL from registration_info where USER_NAME='" + TextBox1.Text + "'";
                SqlCommand emailcom = new SqlCommand(checkEmailQuery, conn);
                string email = emailcom.ExecuteScalar().ToString().Replace(" ", "");
                MailMessage mm = new MailMessage("rottenskull21699@gmail.com", email);
                mm.Subject = "RECOVERY PASSWORD ";
                mm.Body = string.Format("HELLO " + TextBox1.Text + " YOUR RECOVERY PASSWORD IS <h1>"+ password + "</h1>");
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;NetworkCredential nc = new NetworkCredential();
                nc.UserName = "rottenskull21699@gmail.com";
                nc.Password = lm;
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = nc;
                smtp.Port = 587;
                smtp.Send(mm);
                Response.Write("Recovery password has been sent");
            

            }
            else
            {
                Response.Write("USERNAME NOT FOUND");
            }

        }
    }
}