using System;
using System.Configuration;
using System.Data.SqlClient;

namespace RegistrationSite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkUser = "select count(*) from Users where UserName = '" + txtLoginUserName.Text + "'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select password from Users where UserName= '" + txtLoginUserName.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string password = passComm.ExecuteScalar().ToString().Replace(" ","");
                if(password == txtLoginPassword.Text)
                {
                    Session["New"] = txtLoginUserName.Text;
                    Response.Redirect("UserPage.aspx");
                }
                else
                {
                    Response.Write("Hello World");
                }
            }
            else
            {
                Response.Write("Password is not correct");
            }
           
        }
    }
}