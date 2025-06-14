using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class topRated : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var topRatedBooks = new List<Book>
                {
                    new Book { Title = "To Kill a Mockingbird", Author = "Harper Lee", Rating = 4.9, Description = "A classic tale of racial injustice and moral growth." },
                    new Book { Title = "The Catcher in the Rye", Author = "J.D. Salinger", Rating = 4.8, Description = "A story of teenage angst and rebellion." },
                    new Book { Title = "The Great Gatsby", Author = "F. Scott Fitzgerald", Rating = 4.7, Description = "A tragic love story set in the Roaring Twenties." }
                };

                rptTopRatedBooks.DataSource = topRatedBooks;  // Set the DataSource
                rptTopRatedBooks.DataBind();  // Bind the data to the Repeater
            }
        }

        public class Book
        {
            public string Title { get; set; }
            public string Author { get; set; }
            public double Rating { get; set; }
            public string Description { get; set; }
        }
    }
}
