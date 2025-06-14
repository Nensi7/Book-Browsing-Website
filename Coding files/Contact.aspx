<%@ Page Title="Contact" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="project.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Contact Us</h2>
    <asp:TextBox ID="txtName" runat="server" Placeholder="Your Name" />
    <asp:TextBox ID="txtEmail" runat="server" Placeholder="Your Email" />
    <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="5" />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    <asp:Label ID="lblResponse" runat="server" Text="" />
</asp:Content>
