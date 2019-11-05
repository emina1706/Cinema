<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Clanstvo.aspx.cs" Inherits="Clanstvo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <div id="content">
           <h1 style="text-align:center; color:white; background-color:#E60002; padding:5px;">CINE STAR CLANSTVO</h1>
             <p style="margin-top:50px;">Ostvari više pri svakom posjetu kinu! Za svaku 0.1 KM koju potrošiš na kino blagajni ili pri kupovini artikala na 
                 blagajni hrane i pića, ostvaruješ<strong>1 bonus bod</strong> . Svoje bodove možeš zamijeniti za atraktivne nagrade. 
                 Kad svoj Bonus Card nadoplaćuješ s iznosom od minimalno 45,00 KM, možeš ostvariti<strong>do 20% popusta</strong>  na cijene ulaznica,
                <strong>gratis kino ulaznice</strong>   i posebnu cijenu četvrtkom od samo <strong>4KM*!</strong> </p>
        <div id="card"> <img id="card_img" src="slike/classic_kartica_web.jpg"></div>     
            <p><strong>TVOJE POGODNOSTI</strong></p> 
             <p>- 1 bonus bod za svaku potrošenu kunu* <br />
                - atraktivne nagrade u zamjenu za bodove >> PREGLED NAGRADA<br />
                - provjera stanja bodova online</p>

             <p style="text-align:center; font-size:20px;"><strong>Da bi postali član potrebno je da se registrujete na našu stranicu.</strong></p>
     <div id="registracija_form">
         <asp:CreateUserWizard ID="CreateUserWizard5" runat="server" ContinueDestinationPageUrl="~/Default.aspx" FinishDestinationPageUrl="~/Default.aspx" LoginCreatedUser="False">
             <WizardSteps>
                 <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                     <ContentTemplate>
                         <table>
                             <tr>
                                 <td align="center" colspan="2"></td>
                             </tr>
                             <tr>
                                 <td align="right">
                                     <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User:</asp:Label>
                                 </td>
                                 <td>
                                     <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard5">*</asp:RequiredFieldValidator>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right">
                                     <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Sifra:</asp:Label>
                                 </td>
                                 <td>
                                     <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard5">*</asp:RequiredFieldValidator>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right">
                                     <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Potvrdite sifru:</asp:Label>
                                 </td>
                                 <td>
                                     <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard5">*</asp:RequiredFieldValidator>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right">
                                     <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                 </td>
                                 <td>
                                     <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard5">*</asp:RequiredFieldValidator>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right">
                                     <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Sigurnosno pitanje:</asp:Label>
                                 </td>
                                 <td>
                                     <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ToolTip="Security question is required." ValidationGroup="CreateUserWizard5">*</asp:RequiredFieldValidator>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right">
                                     <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Sigurnosni odgovor:</asp:Label>
                                 </td>
                                 <td>
                                     <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ToolTip="Security answer is required." ValidationGroup="CreateUserWizard5">*</asp:RequiredFieldValidator>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="center" colspan="2">
                                     <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard5"></asp:CompareValidator>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="center" colspan="2" style="color:Red;">
                                     <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                 </td>
                             </tr>
                         </table>
                     </ContentTemplate>
                 </asp:CreateUserWizardStep>
                 <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                     <ContentTemplate>
                         <table>
                             <tr>
                                 <td align="center">Complete</td>
                             </tr>
                             <tr>
                                 <td>Your account has been successfully created.</td>
                             </tr>
                             <tr>
                                 <td align="right">
                                     <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" CommandName="Continue" Text="Continue" ValidationGroup="CreateUserWizard5" />
                                 </td>
                             </tr>
                         </table>
                     </ContentTemplate>
                 </asp:CompleteWizardStep>
             </WizardSteps>
         </asp:CreateUserWizard>
     </div>
         </div>
</asp:Content>

