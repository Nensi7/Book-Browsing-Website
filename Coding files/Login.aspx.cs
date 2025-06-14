using System;
using System.Web.UI;

namespace project
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Handle page load logic
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Handle login logic
            string email = TextBox1.Text;
            string password = TextBox2.Text;

            // Add your authentication logic here (e.g., check credentials)

            if (email == "admin" && password == "password") // Example check
            {
                Response.Redirect("HomePage.aspx"); // Redirect on successful login
            }
            else
            {
                Label1.Text = "Invalid login credentials!";
            }
        }
    }
}
