<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Kontakt.aspx.cs" Inherits="Kontakt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content">
         <h1 style="text-align:center; color:white; background-color:#E60002; padding:5px;">KONTAKTIRAJTE NAS</h1>

        <div id="kontakt">

            <table border = "0" style="width: 409px">

    <tr>

        <td>

            <asp:Label ID="Label1" runat="server" Text="IME:"></asp:Label><br />

        </td>

        <td>

            <asp:TextBox ID="txtName" runat="server" ValidationGroup = "contact" AutoCompleteType="Disabled"></asp:TextBox><br />

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"

             ControlToValidate = "txtName"></asp:RequiredFieldValidator>

        </td>

    </tr>

    <tr>

        <td>

            <asp:Label ID="Label2" runat="server" Text="TEMA:"></asp:Label><br />

        </td>

        <td>

            <asp:TextBox ID="txtSubject" runat="server" AutoCompleteType="Disabled"></asp:TextBox><br />

            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"

             ControlToValidate = "txtSubject"></asp:RequiredFieldValidator>

        </td>

    </tr>

    <tr>

        <td>

            <asp:Label ID="Label3" runat="server" Text="EMAIL:"></asp:Label><br />

        </td>

        <td>

            <asp:TextBox ID="txtEmail" runat="server" AutoCompleteType="Disabled"></asp:TextBox><br />

            <asp:RegularExpressionValidator id="valRegEx" runat="server"

            ControlToValidate="txtEmail"

            ValidationExpression=".*@.*\..*"

            ErrorMessage="*Invalid Email address."

            display="dynamic">

            </asp:RegularExpressionValidator>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"

            ControlToValidate = "txtEmail"></asp:RequiredFieldValidator>

        </td>

    </tr>

    <tr>

        <td valign = "top" >

            <asp:Label ID="Label4" runat="server" Text="PORUKA:"></asp:Label>

        </td>

        <td>

            <asp:TextBox ID="txtBody" runat="server" TextMode = "MultiLine" ></asp:TextBox><br />

            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"

            ControlToValidate = "txtBody"></asp:RequiredFieldValidator>

        </td>

    </tr>

     <tr>

        <td></td>

        <td>

       </td>

    </tr>

    <tr>

        <td></td>

        <td>

            <asp:Button ID="btnSend" runat="server" Text="POŠALJI" OnClick="btnSend_Click" />

       </td>

    </tr>

    <tr>

        <td></td>

        <td>

            <asp:Label  ID="lblMessageKontakt"  runat="server" Text="" ForeColor = "Green"></asp:Label>

       </td>

    </tr>

</table>
        </div>

    </div>
</asp:Content>

