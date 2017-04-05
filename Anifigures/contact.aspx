<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Anifigures.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">

    <h1>Contact Us</h1>

    <p>For any queries, please refer to the <a href="faq.aspx">FAQ</a> page first. Otherwise, feel free to use the form below.</p>

    <div class="contact">
        
       <div class="info">
            <h2>Call Us</h2>

             <p>+673 123 4567</p>

            <h2>Address</h2>

            <p>Roof Top, Plaza Abdul Razak, Jalan Laksamana Abdul Razak, Bandar Seri Begawan, Negara Brunei Darussalam</p>
            <!-- LCB address retrieved from http://www.lcb.edu.bn/ -->

            <h2>Our location</h2>

                <img src="images/location.png" alt="Our location">
       </div>

       
       <div class="contactform">

            <p><b>Name:</b></p>
                <input id="name" type="text" placeholder="Your name">

            <p><b>Email Address:</b></p>
                <input id="email" type="text" placeholder="username@example.com">

            <p><b>Subject:</b></p>
                <input id="subject" type="text" placeholder="Your subject">


              <p><b>Comment:</b></p>
                 <textarea rows="8" id="comment" placeholder="Type out your comment here"></textarea>


            <div class="submit">
               <p><input id="submit" type="submit" value="Send" /></p>
            </div>

        </div>  
        
    </div>


</asp:Content>
