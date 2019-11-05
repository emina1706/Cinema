<%@ Page Title="" Language="C#" MasterPageFile="~\MasterPage.master" AutoEventWireup="true" CodeFile="Rezervacije.aspx.cs" Inherits="Rezervacije" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content">
           <h1 style="text-align:center; color:white; background-color:#E60002; padding:5px;">REZERVISI SVOJE MJESTO</h1>
        <div id="login_form_anonymus" runat="server" >
                    <p style="text-align:center;font-size:20px;">
                        <strong>Da bi rezervisali svoje mjesto potrebno je da se prijavite.</strong></p>
                        <asp:Login ID="Login6" runat="server">
                            <LayoutTemplate>
                                <table cellpadding="1"  cellspacing="0" style="border-collapse:collapse;">
                                    <tr>
                                        <td>
                                            <table cellpadding="0">
                                                <tr>
                                                    <td align="center" colspan="2">Log In</td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="UserName" runat="server" AutoCompleteType="None"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Sifra:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <asp:CheckBox ID="RememberMe" runat="server" Text="Zapamti me." />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2" style="color:Red;">
                                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" colspan="2">
                                                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                    </asp:Login>
                    
               </div>
        <div id="login_form_logged" runat="server">
             <p style="text-align:center;font-size:20px;"><strong>Ulogovani ste kao: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> </strong></p>
            <p style="text-align:center;font-size:20px;"><strong>Izvršite registraciju tako što će te popuniti sljedeća polja.</strong></p>
            <table>
                <tr>
                    <th>IME I PREZIME:</th>
                    <td><asp:TextBox ID="txtIme" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <th>KINO:</th>
                    <td><asp:RadioButtonList ID="rblKino" runat="server" DataSourceID="SqlDataSource1" DataTextField="naziv_kina" DataValueField="kinoID"></asp:RadioButtonList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionToKino %>" SelectCommand="SELECT [naziv_kina], [kinoID] FROM [Kina]"></asp:SqlDataSource>
                     </td>
                     
                </tr>
                 <tr>
                     
                    <th>FILM:</th>
                    <td><asp:DropDownList ID="ddlFilm" runat="server" DataSourceID="SqlDataSource2" DataTextField="naziv_filma" DataValueField="filmID"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionToKino %>" SelectCommand="SELECT [filmID], [naziv_filma] FROM [Filmovi]"></asp:SqlDataSource>
                     </td>
                </tr>
                 <tr>
                     
                    <th>DATUM:</th>
                    <td><asp:TextBox ID="txtDatum" runat="server" TextMode="Date"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td colspan="2"> <asp:Button ID="btnRez" runat="server" Text="REZERVIŠI" OnClick="btnRez_Click" /></td>
                </tr>
                <tr>
                    <td colspan="2"> <asp:Label ID="lblMessage" runat="server" Visible="false" Text="Rezervacija je bila uspješna"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2"> <asp:Label ID="lblError" runat="server" Visible="false" Text="Unesite i odaberite sve podatke."></asp:Label></td>
                </tr>
                
            </table>
              <asp:LoginStatus ID="LoginStatus2" runat="server" />
                
            </div>
        <div id="divRezervacije" runat="server"><asp:GridView ID="gridRezervacije" runat="server" AutoGenerateColumns="False" DataKeyNames="rezervacijaID" DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="rezervacijaID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="rezervacijaID" />
                        <asp:BoundField DataField="user_" HeaderText="USER" SortExpression="user_" />
                        <asp:BoundField DataField="ime_prezime" HeaderText="IME I PREZIME" SortExpression="ime_prezime" />
                        <asp:BoundField DataField="kino" HeaderText="KINO" SortExpression="kino" />
                        <asp:BoundField DataField="film" HeaderText="FILM" SortExpression="film" />
                        <asp:BoundField DataField="datum" HeaderText="DATUM" SortExpression="datum" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionToKino %>" DeleteCommand="DELETE FROM [Rezervacije] WHERE [rezervacijaID] = @rezervacijaID" InsertCommand="INSERT INTO [Rezervacije] ([user_], [ime_prezime], [kino], [film], [datum]) VALUES (@user_, @ime_prezime, @kino, @film, @datum)" SelectCommand="SELECT * FROM [Rezervacije] WHERE ([user_] = @user_)" UpdateCommand="UPDATE [Rezervacije] SET [user_] = @user_, [ime_prezime] = @ime_prezime, [kino] = @kino, [film] = @film, [datum] = @datum WHERE [rezervacijaID] = @rezervacijaID">
                    <DeleteParameters>
                        <asp:Parameter Name="rezervacijaID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="user_" Type="String" />
                        <asp:Parameter Name="ime_prezime" Type="String" />
                        <asp:Parameter Name="kino" Type="Int32" />
                        <asp:Parameter Name="film" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="datum" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" Name="user_" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="user_" Type="String" />
                        <asp:Parameter Name="ime_prezime" Type="String" />
                        <asp:Parameter Name="kino" Type="Int32" />
                        <asp:Parameter Name="film" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="datum" />
                        <asp:Parameter Name="rezervacijaID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource></div>
       
       
     </div>
</asp:Content>

