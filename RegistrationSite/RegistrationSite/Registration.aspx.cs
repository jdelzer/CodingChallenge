using System;
using System.Configuration;
using System.Data.SqlClient;

namespace RegistrationSite
{
    public partial class Registration : System.Web.UI.Page
    {
        private int id = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string checkUser = "select count(*) from Users where UserName = '" + txtUserName.Text + "'";
                SqlCommand com = new SqlCommand(checkUser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User already exists.");
                }
                conn.Close();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into Users (UserName,Email,Password) values (@username, @email, @password)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@username", txtUserName.Text);
                com.Parameters.AddWithValue("@email", txtEmail.Text);
                com.Parameters.AddWithValue("@password", txtPassword.Text);
                com.ExecuteNonQuery();

                Response.Write("Registration is successful");
                Response.Redirect("UserPage.aspx");
                conn.Close();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUserName.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";

            RequiredFieldUserName.Visible = false;
            RequiredFieldEmail.Visible = false;
            RequiredFieldPassword.Visible = false;
            RequiredFieldConfirm.Visible = false;
        }
    }
}