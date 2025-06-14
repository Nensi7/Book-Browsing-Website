<%@ Page Title="Login" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="project.Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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
        
        form {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: auto;
        }

        label {
            font-size: 14px;
            margin-bottom: 10px;
            display: block;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        .error {
            color: red;
            font-size: 12px;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
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

        .form-group {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Login</h2>
            <div class="form-group">
                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your email" class="form-control" />
            </div>
            <div class="form-group">
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Enter your password" class="form-control" />
            </div>
            <asp:Label ID="Label1" runat="server" ForeColor="Red" class="error" />
            <div class="form-group">
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="btnLogin_Click" class="btn btn-primary" />
            </div>
        </div>
    </form>
</body>
</html>
