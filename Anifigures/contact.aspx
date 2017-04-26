<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Anifigures.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">

    <h1>Contact Us</h1>

    <p>For any queries, please refer to the <a href="faq.aspx">FAQ</a> page first. Otherwise, feel free to use the form below for any other questions.</p>

    <div class="contact">
        
       <div class="info">
            <h2>Call Us</h2>

             <p>+673 123 4567</p>

            <h2>Address</h2>

            <p>Roof Top, Plaza Abdul Razak, Jalan Laksamana Abdul Razak, Bandar Seri Begawan, Negara Brunei Darussalam</p>
            <!-- LCB address retrieved from http://www.lcb.edu.bn/ -->

            <h2>Our location</h2>
            
           <div id="maplocation">
               <script src="js/map.js"></script>   
               <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBboMNiVVPU0p-u7txzVGxBv1kRVX9b7tw&callback=initMap" async defer></script>
                
                 <!-- The code above was retrieved from https://developers.google.com/maps/documentation/javascript/adding-a-google-map -->
           </div>

       </div>

       
       <div class="contactform">

            <p><b><asp:Label ID="lname" runat="server" Text="Name"></asp:Label></b></p>

                <p><asp:TextBox ID="name" runat="server" placeholder="Name"></asp:TextBox></p>
                <p><asp:RequiredFieldValidator ID="namevalidate" runat="server" ErrorMessage="Required" ControlToValidate="name" ForeColor="Red"></asp:RequiredFieldValidator></p>
           

            <p><b><asp:Label ID="lemail" runat="server" Text="Your Email"></asp:Label></b></p>
                <p><asp:TextBox ID="email" runat="server" placeholder="username@example.com"></asp:TextBox></p>
               
                <p><asp:RequiredFieldValidator ID="emailvalidate" runat="server" ErrorMessage="Required" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator></p>

                <p><asp:RegularExpressionValidator ID="emailcheck" runat="server" ErrorMessage="Enter a valid email" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator></p>
               

            <p><b><asp:Label ID="lsubject" runat="server" Text="Subject"></asp:Label></b></p>
                <p><asp:TextBox ID="subject" runat="server" placeholder="Your subject"></asp:TextBox></p>
                <p><asp:RequiredFieldValidator ID="subjectvalidate" runat="server" ErrorMessage="Required" ControlToValidate="subject" ForeColor="Red"></asp:RequiredFieldValidator></p>               
               

            <p><b><asp:Label ID="lcomment" runat="server" Text="Comment"></asp:Label></b></p>
                 <p><asp:TextBox ID="comment" runat="server" placeholder="Enter your message here" Height="250px" TextMode="MultiLine"></asp:TextBox></p>        
                 <p><asp:RequiredFieldValidator ID="commentvalidate" runat="server" ErrorMessage="Required" ControlToValidate="comment" ForeColor="Red"></asp:RequiredFieldValidator></p>
                

            <div class="submit">
                <p><asp:Button class="button" ID="send" runat="server" Text="Send" OnClick="send_Click" /></p>
              
            </div>

        </div>  
        
    </div>


</asp:Content>
