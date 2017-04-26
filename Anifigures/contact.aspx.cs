using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Anifigures
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void send_Click(object sender, EventArgs e)
        {

            SmtpClient form = new SmtpClient();
            form.Host = "smtp.gmail.com";
            form.Port = 587;
            form.EnableSsl = true;

            System.Net.NetworkCredential useraccess = new System.Net.NetworkCredential();
            useraccess.UserName = "anifigures@gmail.com";
            useraccess.Password = "CO5027p4ss;";

            form.Credentials = useraccess;

            MailMessage message = new MailMessage("anifigures@gmail.com", "anifigures@gmail.com");

            message.Subject = "[Contact Form Enquiry]" + " " + subject.Text;
            message.Body = "This message was sent by " + name.Text + "" + "(" + email.Text + "):" + "" + "\n"
                           + "\n" + comment.Text;

            form.Send(message);

            name.Text = "";
            email.Text = "";
            subject.Text = "";
            comment.Text = "";

        }
    }
}