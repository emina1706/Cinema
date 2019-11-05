using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class Kontakt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {

        MailMessage mm = new MailMessage("cinestar64@gmail.com", "cinestar64@gmail.com");

        mm.Subject = txtSubject.Text;

        mm.Body = "Name: " + txtName.Text + "<br /><br />Email: " + txtEmail.Text + "<br /> Sadržaj poruke:" + txtBody.Text;

     
        mm.IsBodyHtml = true;

        SmtpClient smtp = new SmtpClient();

        smtp.Host = "smtp.gmail.com";

        smtp.EnableSsl = true;

        System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();

        NetworkCred.UserName = "cinestar64@gmail.com";

        NetworkCred.Password = "starcine64";

        smtp.UseDefaultCredentials = true;

        smtp.Credentials = NetworkCred;

        smtp.Port = 587;

        smtp.Send(mm);

        lblMessageKontakt.Text = "Poruka je uspješno poslana.";

        txtName.Text = "";
        txtEmail.Text = "";
        txtSubject.Text = "";
        txtBody.Text = "";

    }
}