using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.IO;
using System.Text.RegularExpressions;
using System.Web.Configuration;
using System.Configuration;

public partial class Rezervacije : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionToKino"].ConnectionString);

    protected void Page_Init(object sender, EventArgs e)
    {
        if (Page.User.Identity.Name == "")
        {
            login_form_anonymus.Visible = true;
            login_form_logged.Visible = false;
            divRezervacije.Visible = false;

        }
        else
        {
            login_form_anonymus.Visible = false;
            login_form_logged.Visible = true;
            divRezervacije.Visible = true;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
       
        Label1.Text = User.Identity.Name;
    }
    protected void btnRez_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand command_insert = con.CreateCommand();
         command_insert.CommandText = "insert into Rezervacije(user_,ime_prezime,kino,film,datum) values(@user_,@ime_prezime,@kino,@film,@datum)";

        command_insert.Parameters.AddWithValue("@user_", Page.User.Identity.Name);
        command_insert.Parameters.AddWithValue("@ime_prezime", txtIme.Text);
        command_insert.Parameters.AddWithValue("@kino",rblKino.SelectedValue);
        command_insert.Parameters.AddWithValue("@film", ddlFilm.SelectedValue);
        command_insert.Parameters.AddWithValue("@datum", txtDatum.Text);

        if(txtIme.Text=="" || rblKino.SelectedValue=="" || ddlFilm.SelectedValue=="" || txtDatum.Text==""){
            lblError.Visible=true;
        }
        else{
            command_insert.ExecuteNonQuery();
            txtIme.Text = "";
            rblKino.SelectedIndex = -1;
            ddlFilm.SelectedIndex = -1;
            txtDatum.Text = "";
            lblError.Visible = false;
            lblMessage.Visible = true;
            gridRezervacije.DataBind();
        }
        con.Close();

    }

}