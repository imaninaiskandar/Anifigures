<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Anifigures.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">

    <h1>Login</h1>

    <p>New to the site? Click <a href="register.aspx">here</a> to register.</p>

       <p><b><asp:Label ID="emlogin" runat="server" Text="Email"></asp:Label></b></p>
       <asp:TextBox ID="email" runat="server"></asp:TextBox>

      <p><b><asp:Label ID="passlogin" runat="server" Text="Password"></asp:Label></b></p>
      <asp:TextBox ID="password" runat="server"></asp:TextBox>

      <div class="submit">
         <p><asp:Button class="button" ID="buttonlogin" runat="server" Text="Log In" /></p>
      </div>

</asp:Content>
