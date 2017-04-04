<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Anifigures.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">

    <h1>Contact Us</h1>

    <p>For any queries, please refer to the <a href="/faq.aspx/">FAQ</a> page first. Otherwise, feel free to use the form below.</p>

    <div class="contact">
        <div class="map">
            <p><b>Our location</b></p>
        <img src="/images/location.png" alt="Located at LCB">
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
