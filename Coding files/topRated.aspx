<%@ Page Title="Top Rated Books" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="topRated.aspx.cs" Inherits="project.topRated" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <head>
        <style>
            body {
                font-family: 'Segoe UI', sans-serif;
                background-color: #f4f4f4;
                margin: 0;
            }

            .container {
                max-width: 1000px;
                margin: 30px auto;
                background-color: #fff;
                padding: 30px;
                border-radius: 12px;
                box-shadow: 0 4px 16px rgba(0,0,0,0.1);
            }

            h2.page-title {
                font-size: 32px;
                margin-bottom: 30px;
                color: #333;
                text-align: center;
            }

            .book-table {
                width: 100%;
                border-collapse: separate;
                border-spacing: 0 12px;
            }

            .book-table th {
                background-color: #4CAF50;
                color: black;
                font-weight: bold;
                padding: 14px;
                text-align: left;
                border-top-left-radius: 8px;
                border-top-right-radius: 8px;
            }

            .book-table td {
                background-color: #fff;
                padding: 16px;
                border: 1px solid #ddd;
                border-top: none;
                vertical-align: top;
                border-radius: 8px;
                box-shadow: 0 2px 8px rgba(0,0,0,0.05);
            }

            .book-title {
                font-size: 20px;
                font-weight: 600;
                color: #222;
                margin: 0 0 8px;
            }

            .book-detail {
                margin: 4px 0;
                color: #555;
                font-size: 15px;
            }

            @media (max-width: 768px) {
                .book-table th, .book-table td {
                    padding: 12px;
                    font-size: 14px;
                }

                .book-title {
                    font-size: 18px;
                }
            }
        </style>
    </head>

    <div class="container">
        <h2 class="page-title">⭐ Top Rated Books</h2>

        <table class="book-table">
            <tr>
                <th>Title</th>
                <th>Author</th>
                <th>Rating</th>
                <th>Description</th>
            </tr>

            <asp:Repeater ID="rptTopRatedBooks" runat="server">
                <ItemTemplate>
                    <tr>
                        <td>
                            <p class="book-title"><%# Eval("Title") %></p>
                            <p class="book-detail">by <%# Eval("Author") %></p>
                        </td>
                        <td>
                            <p class="book-detail"><%# Eval("Author") %></p>
                        </td>
                        <td>
                            <p class="book-detail"><%# Eval("Rating") %> ⭐</p>
                        </td>
                        <td>
                            <p class="book-detail"><%# Eval("Description") %></p>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
</asp:Content>
