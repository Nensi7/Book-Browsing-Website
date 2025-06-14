<%@ Page Title="Explore by Category" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="exploreByCategory.aspx.cs" Inherits="project.exploreByCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Explore by Category</h2>
    <p>Select a category to discover books you'll love:</p>

    <!-- Repeater to display categories -->
    <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate>
            <div class="category-list-header">
                <h3>Categories</h3>
            </div>
        </HeaderTemplate>

        <ItemTemplate>
            <div class="category-card">
                <h3><%# Eval("Name") %></h3>
                <p><%# Eval("Description") %></p>
                <!-- Button to explore category with CategoryID as CommandArgument -->
                <asp:Button ID="btnExplore" runat="server" Text="Explore" CommandArgument='<%# Eval("CategoryID") %>' OnClick="btnExplore_Click" />
            </div>
        </ItemTemplate>

        <FooterTemplate>
            <div class="category-list-footer">
                <p>End of Categories</p>
            </div>
        </FooterTemplate>
    </asp:Repeater>

    <style>
    /* General page styling */
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    /* Main content container */
    #MainContent {
        margin: 30px auto;
        width: 80%;
    }

    /* Header section */
    h2 {
        font-size: 2rem;
        color: #333;
        text-align: center;
        margin-bottom: 15px;
    }

    p {
        text-align: center;
        font-size: 1.1rem;
        color: #666;
    }

    /* Category list section */
    .category-list-header h3 {
        font-size: 1.5rem;
        color: #333;
        text-align: center;
        margin-bottom: 20px;
    }

    /* Repeater styling */
    .category-card {
        background-color: #fff;
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 20px;
        margin: 10px 0;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease-in-out;
    }

    

    /* Category card content */
    .category-card h3 {
        font-size: 1.4rem;
        color: #333;
        margin-bottom: 10px;
    }

    .category-card p {
        font-size: 1rem;
        color: #666;
        margin-bottom: 15px;
    }

    /* Button styling */
    button, .category-card button {
        background-color: #4CAF50;
        color: #fff;
        border: none;
        padding: 10px 15px;
        font-size: 1rem;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    button:hover, .category-card button:hover {
        background-color: #45a049;
    }

    /* Footer section */
    .category-list-footer {
        text-align: center;
        font-size: 1rem;
        color: #999;
        margin-top: 20px;
    }
</style>
</asp:Content>
