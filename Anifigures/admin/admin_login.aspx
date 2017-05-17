<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="Anifigures.admin.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="article" runat="server">

    <p>Return to the <a href="../default.aspx">main site</a>?</p>

     <div class="loginform">

            <p><b><asp:Label ID="unlabel" runat="server" Text="Username"></asp:Label></b></p>
            <asp:TextBox ID="u1" runat="server"></asp:TextBox>

            <p><b><asp:Label ID="passlabel" runat="server" Text="Password"></asp:Label></b></p>
            <asp:TextBox ID="p1" runat="server" TextMode="Password"></asp:TextBox>

            <div class="submitclass">
            <p><asp:Button ID="bl1" runat="server" Text="Login" OnClick="bl1_Click" /></p>
            </div>

            <asp:Label ID="loginLabel" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
