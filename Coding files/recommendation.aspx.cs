using System;
using System.Collections.Generic;
using System.Web.UI;

namespace project
{
    public partial class recommendation : System.Web.UI.Page
    {
        public class Book
        {
            public string Title { get; set; }
            public string Author { get; set; }
            public string Description { get; set; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBooks();
            }
        }

        private void BindBooks()
        {
            rptNovels.DataSource = GetNovels();
            rptNovels.DataBind();

            rptMotivation.DataSource = GetMotivationBooks();
            rptMotivation.DataBind();

            rptTravel.DataSource = GetTravelBooks();
            rptTravel.DataBind();

            rptArt.DataSource = GetArtBooks();
            rptArt.DataBind();

            rptTech.DataSource = GetTechBooks();
            rptTech.DataBind();
        }

        private List<Book> GetNovels()
        {
            return new List<Book>
            {
                new Book { Title = "The Great Gatsby", Author = "F. Scott Fitzgerald", Description = "A story of the jazz age and lost love in the 1920s." },
                new Book { Title = "Pride and Prejudice", Author = "Jane Austen", Description = "A classic romance highlighting wit, class, and courtship." },
                new Book { Title = "To Kill a Mockingbird", Author = "Harper Lee", Description = "A powerful novel on racial injustice and childhood in the Deep South." },
                new Book { Title = "1984", Author = "George Orwell", Description = "A dystopian tale of surveillance, control, and resistance." },
                new Book { Title = "The Alchemist", Author = "Paulo Coelho", Description = "A magical story about pursuing your dreams." }
            };
        }

        private List<Book> GetMotivationBooks()
        {
            return new List<Book>
            {
                new Book { Title = "Atomic Habits", Author = "James Clear", Description = "Practical guide to building good habits and breaking bad ones." },
                new Book { Title = "The 7 Habits of Highly Effective People", Author = "Stephen R. Covey", Description = "Timeless lessons on personal and professional effectiveness." },
                new Book { Title = "You Are a Badass", Author = "Jen Sincero", Description = "How to stop doubting your greatness and start living." },
                new Book { Title = "Can't Hurt Me", Author = "David Goggins", Description = "Lessons on mental toughness from a Navy SEAL." },
                new Book { Title = "Think and Grow Rich", Author = "Napoleon Hill", Description = "The classic guide to personal success." }
            };
        }

        private List<Book> GetTravelBooks()
        {
            return new List<Book>
            {
                new Book { Title = "Into the Wild", Author = "Jon Krakauer", Description = "The story of Chris McCandless’s Alaskan odyssey." },
                new Book { Title = "Vagabonding", Author = "Rolf Potts", Description = "An uncommon guide to the art of long-term world travel." },
                new Book { Title = "On the Road", Author = "Jack Kerouac", Description = "A beatnik classic road trip adventure." },
                new Book { Title = "The Beach", Author = "Alex Garland", Description = "A gripping tale of backpackers in search of paradise." },
                new Book { Title = "Wild", Author = "Cheryl Strayed", Description = "One woman's solo journey along the Pacific Crest Trail." }
            };
        }

        private List<Book> GetArtBooks()
        {
            return new List<Book>
            {
                new Book { Title = "Steal Like an Artist", Author = "Austin Kleon", Description = "10 things nobody told you about being creative." },
                new Book { Title = "The War of Art", Author = "Steven Pressfield", Description = "Break through creative blocks and win your inner battles." },
                new Book { Title = "Big Magic", Author = "Elizabeth Gilbert", Description = "Creative living beyond fear." },
                new Book { Title = "Drawing on the Right Side of the Brain", Author = "Betty Edwards", Description = "A classic guide to unlocking your artistic potential." },
                new Book { Title = "Show Your Work!", Author = "Austin Kleon", Description = "A guide to self-promotion for creatives." }
            };
        }

        private List<Book> GetTechBooks()
        {
            return new List<Book>
            {
                new Book { Title = "The Innovators", Author = "Walter Isaacson", Description = "How a group of hackers, geniuses, and geeks created the digital revolution." },
                new Book { Title = "Zero to One", Author = "Peter Thiel", Description = "Notes on startups and building the future." },
                new Book { Title = "Hooked", Author = "Nir Eyal", Description = "How to build habit-forming products." },
                new Book { Title = "Life 3.0", Author = "Max Tegmark", Description = "Being human in the age of artificial intelligence." },
                new Book { Title = "AI Superpowers", Author = "Kai-Fu Lee", Description = "China, Silicon Valley, and the new world order of AI." }
            };
        }
    }
}
