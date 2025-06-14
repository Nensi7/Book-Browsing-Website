using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class exploreByCategory : System.Web.UI.Page
    {
        // Method called when the page is loaded
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Call the method to bind categories to the repeater
                BindCategories();
            }
        }

        // Method to bind categories data to the Repeater control
        private void BindCategories()
        {
            try
            {
                // Sample data - In a real-world scenario, this data would come from a database
                var categories = GetCategories();

                // Set the data source for the Repeater control
                Repeater1.DataSource = categories;
                Repeater1.DataBind();
            }
            catch (Exception ex)
            {
                // Handle any errors that occur while binding data
                // For example, logging the error or showing a user-friendly message
                Console.WriteLine($"Error binding categories: {ex.Message}");
            }
        }

        // Simulated method to retrieve categories (typically from a database)
        private List<Category> GetCategories()
        {
            return new List<Category>
            {
                new Category { CategoryID = 1, Name = "For Kids", Description = "Fun and educational books for children." },
                new Category { CategoryID = 2, Name = "For Young Adults", Description = "Exciting reads for teens and young readers." },
                new Category { CategoryID = 3, Name = "Thriller", Description = "Nail-biting thrillers and suspense stories." },
                new Category { CategoryID = 4, Name = "Romance", Description = "Heartwarming and dramatic love stories." },
                new Category { CategoryID = 5, Name = "Anime", Description = "Explore popular manga and light novels." },
                new Category { CategoryID = 6, Name = "Novels", Description = "Classic and contemporary novels from all genres." }
            };
        }

        // Event handler for category exploration
        protected void btnExplore_Click(object sender, EventArgs e)
        {
            try
            {
                // Get the category ID (passed through CommandArgument)
                Button btn = (Button)sender;
                int categoryID = Convert.ToInt32(btn.CommandArgument);

                // Redirect to another page for category exploration (e.g., CategoryDetails.aspx)
                Response.Redirect($"CategoryDetails.aspx?categoryID={categoryID}");
            }
            catch (Exception ex)
            {
                // Handle any errors that occur during button click
                Console.WriteLine($"Error during category exploration: {ex.Message}");
            }
        }

        // Category class to store category data
        public class Category
        {
            public int CategoryID { get; set; }  // Added CategoryID
            public string Name { get; set; }
            public string Description { get; set; }
        }
    }
}
