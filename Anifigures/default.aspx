<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Anifigures.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">

         <p><img src="images/banners/welcome.png" alt="Welcome" /></p>
        <!-- Original image was edited from http://vignette1.wikia.nocookie.net/k-on/images/f/f3/Band_name_secured.png/revision/latest?cb=20130402113808 -->
    <div class="welcome">

            <p>You have just stumbled upon a store dedicated to bringing you your lovelies! All figure-collectors are welcome here!</p>

    </div>

    <div class="products">

        <asp:Repeater ID="rp1" runat="server">
            <HeaderTemplate>

            </HeaderTemplate>
            <ItemTemplate>
            <div class="pro">
                
                  
                        <a href="product.aspx?id=<%# Eval("ProductId")%>"><h2><%# Eval("ProductName") %> </h2>
                        
                    
                    <img src="<%# Eval("ProductImage") %>" alt="<%# Eval("ProductName")%>"/></a>
                        <h3>$<%# Eval("ProductPrice") %></h3>
                        <h3><%# Eval("ProductStock") %></h3>

                    
             </div>
            </ItemTemplate>
            <FooterTemplate></FooterTemplate>

         </asp:Repeater>

             </div>

</asp:Content>
