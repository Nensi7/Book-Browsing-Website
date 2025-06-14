using System;
using System.Data.SqlClient;
using System.Web.Services.Description;
using System.Web.UI;

namespace project
{
    public partial class registration : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Get the values entered by the user in the text boxes
            string name = txt1.Text.Trim();
            string email = txt2.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Validate user input
            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                Response.Write("<script>alert('All fields are required!');</script>");
                return;
            }

            // Check if email already exists in the database
            if (IsEmailExists(email))
            {
                Response.Write("<script>alert('Email already exists. Please use a different email.');</script>");
                return;
            }

            // Hash the password for security
            string hashedPassword = HashPassword(password);

            // Insert the new user into the database
            if (RegisterUser(name, email, hashedPassword))
            {
                // If successful, redirect to the login page or some other page
                Response.Redirect("Login.aspx");
            }
            else
            {
                // Show error message if registration fails
                Response.Write("<script>alert('An error occurred during registration.');</script>");
            }
        }

        // Check if the email is already in the database
        private bool IsEmailExists(string email)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\DC\\OneDrive\\Documents\\Readapp.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False"; // Update with your actual connection string
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM Users WHERE Email = @Email";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Email", email);

                conn.Open();
                int count = (int)cmd.ExecuteScalar();
                return count > 0; // If count > 0, email already exists
            }
        }

        // Insert the user into the database
        private bool RegisterUser(string name, string email, string password)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\DC\\OneDrive\\Documents\\Readapp.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False"; // Update with your actual connection string
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO UserTable (Name, Email, Password) VALUES (@Name, @Email, @Password)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password); // Store the hashed password

                try
                {
                    conn.Open();
                    int result = cmd.ExecuteNonQuery();
                    return result > 0; // Return true if the insertion was successful
                }
                catch (Exception ex)
                {
                    // Handle exception (e.g., log the error)
                    Console.WriteLine("Error: " + ex.Message);
                    return false;
                }
            }
        }

        // Hash the password for security
        private string HashPassword(string password)
        {
            using (var sha256 = System.Security.Cryptography.SHA256.Create())
            {
                byte[] bytes = System.Text.Encoding.UTF8.GetBytes(password);
                byte[] hash = sha256.ComputeHash(bytes);
                return Convert.ToBase64String(hash); // Return the hashed password
            }
        }
    }
}
