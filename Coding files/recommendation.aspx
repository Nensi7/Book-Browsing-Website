<%@ Page Title="Recommended For You" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="recommendation.aspx.cs" Inherits="project.recommendation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        h2.page-title {
            font-size: 28px;
            margin-bottom: 15px;
        }

        p.subtitle {
            font-size: 16px;
            color: #444;
            margin-bottom: 30px;
        }

        .category-title {
            font-size: 22px;
            margin-top: 35px;
            margin-bottom: 15px;
            color: #333;
            border-bottom: 2px solid #ddd;
            padding-bottom: 8px;
        }

        .book-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
        }

        .book-table th, .book-table td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
            vertical-align: top;
        }

        .book-table th {
            background-color: #f9f9f9;
            font-weight: bold;
        }

        .book-title {
            font-size: 13px;
            margin: 0;
            color: #222;
        }

        .book-detail {
            margin: 4px 0;
            color: #555;
            font-size: 14px;
        }
    </style>

    <h2 class="page-title">📖 Recommended For You</h2>
    <p class="subtitle">Based on your interests, here’s what you should read next:</p>

    <%-- Novels --%>
    <h3 class="category-title">✨ Novels</h3>
    <table class="book-table">
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Description</th>
        </tr>
        <asp:Repeater ID="rptNovels" runat="server">
            <ItemTemplate>
                <tr>
                    <td><p class="book-title"><%# Eval("Title") %></p></td>
                    <td><p class="book-detail"><%# Eval("Author") %></p></td>
                    <td><p class="book-detail"><%# Eval("Description") %></p></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>

    <%-- Motivation Books --%>
    <h3 class="category-title">💡 Motivation Books</h3>
    <table class="book-table">
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Description</th>
        </tr>
        <asp:Repeater ID="rptMotivation" runat="server">
            <ItemTemplate>
                <tr>
                    <td><p class="book-title"><%# Eval("Title") %></p></td>
                    <td><p class="book-detail"><%# Eval("Author") %></p></td>
                    <td><p class="book-detail"><%# Eval("Description") %></p></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>

    <%-- Travel & Adventure --%>
    <h3 class="category-title">🌏 Travel & Adventure</h3>
    <table class="book-table">
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Description</th>
        </tr>
        <asp:Repeater ID="rptTravel" runat="server">
            <ItemTemplate>
                <tr>
                    <td><p class="book-title"><%# Eval("Title") %></p></td>
                    <td><p class="book-detail"><%# Eval("Author") %></p></td>
                    <td><p class="book-detail"><%# Eval("Description") %></p></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>

    <%-- Art & Creativity --%>
    <h3 class="category-title">🎨 Art & Creativity</h3>
    <table class="book-table">
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Description</th>
        </tr>
        <asp:Repeater ID="rptArt" runat="server">
            <ItemTemplate>
                <tr>
                    <td><p class="book-title"><%# Eval("Title") %></p></td>
                    <td><p class="book-detail"><%# Eval("Author") %></p></td>
                    <td><p class="book-detail"><%# Eval("Description") %></p></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>

    <%-- Technology & Innovation --%>
    <h3 class="category-title">🚀 Technology & Innovation</h3>
    <table class="book-table">
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Description</th>
        </tr>
        <asp:Repeater ID="rptTech" runat="server">
            <ItemTemplate>
                <tr>
                    <td><p class="book-title"><%# Eval("Title") %></p></td>
                    <td><p class="book-detail"><%# Eval("Author") %></p></td>
                    <td><p class="book-detail"><%# Eval("Description") %></p></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>

</asp:Content>
