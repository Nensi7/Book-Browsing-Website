<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="project.registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <head>
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

            /* Navbar styling (full width — matching ExploreByCategory) */
            .navbar {
                background-color: #4CAF50;
                width: 100%;
                padding: 15px 30px;
                display: flex;
                justify-content: space-between;
                align-items: center;
                position: fixed;
                top: 0;
                left: 0;
                z-index: 1000;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }

            .navbar a {
                color: white;
                text-decoration: none;
                font-size: 18px;
                padding: 10px 15px;
                margin-right: 20px;
                transition: background-color 0.3s ease;
            }

            .navbar a:hover {
                background-color: #45a049;
                border-radius: 4px;
            }

            .navbar .logo {
                font-size: 22px;
                font-weight: bold;
                color: white;
            }

            /* Header section */
            h2 {
                font-size: 2rem;
                color: #333;
                text-align: center;
                margin-bottom: 25px;
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

            /* Buttons */
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

            /* Registration Form Container */
            .container {
                width: 100%;
                max-width: 450px;
                padding: 35px;
                background-color: #ffffff;
                border-radius: 8px;
                box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
                margin: 80px auto 40px; /* added top margin for fixed navbar */
                border: 1px solid #ddd;
            }

            .form-group {
                margin-bottom: 20px;
            }

            label {
                font-size: 16px;
                color: #444;
                margin-bottom: 8px;
                display: block;
            }

            .form-control {
                width: 100%;
                padding: 12px 15px;
                margin-top: 5px;
                border: 1px solid #ddd;
                border-radius: 8px;
                font-size: 16px;
                background-color: #f9f9f9;
                transition: all 0.3s ease;
            }

            .form-control:focus {
                border-color: #4CAF50;
                outline: none;
                background-color: #fff;
            }

            .btn {
                width: 100%;
                padding: 12px;
                background-color: #4CAF50;
                color: #fff;
                border: none;
                border-radius: 8px;
                font-size: 18px;
                cursor: pointer;
                transition: background-color 0.3s ease;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }

            .btn:hover {
                background-color: #45a049;
                box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
            }

            .error {
                color: #e74c3c;
                font-size: 14px;
                margin-top: 15px;
                text-align: center;
                display: block;
            }

            .success {
                color: #2ecc71;
                font-size: 14px;
                margin-top: 15px;
                text-align: center;
                display: block;
            }

            .container p {
                text-align: center;
                font-size: 14px;
                color: #888;
                margin-top: 20px;
            }

            .container p a {
                color: #4CAF50;
                text-decoration: none;
            }

            .container p a:hover {
                text-decoration: underline;
            }
        </style>
    </head>

    <!-- Registration Form -->
    <div class="container">
        <h2>Register</h2>

        <div class="form-group">
            <label for="txt1">Name:</label>
            <asp:TextBox ID="txt1" runat="server" SkinID="StandardTextBox" Placeholder="Full Name" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="txt2">Email:</label>
            <asp:TextBox ID="txt2" runat="server" SkinID="StandardTextBox" Placeholder="Email" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="txtPassword">Password:</label>
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" SkinID="StandardTextBox" Placeholder="Password" CssClass="form-control" />
        </div>

        <asp:Button ID="btnRegister" runat="server" Text="Register" SkinID="PrimaryButton" CssClass="btn" OnClick="btnRegister_Click" />

        <asp:Label ID="Label1" runat="server" CssClass="error" />
        <asp:Label ID="LabelSuccess" runat="server" CssClass="success" />
        
        <p>Already have an account? <a href="login.aspx">Login here</a></p>
    </div>
</asp:Content>
