<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Kina.aspx.cs" Inherits="Kina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="content">
           <h1 style="text-align:center; color:white; background-color:#E60002; padding:5px;">PREGLED KINA</h1>
         <div id="kina_grid">
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                 <Columns>
                     <asp:BoundField DataField="grad" HeaderText="GRAD" SortExpression="grad" />
                     <asp:BoundField DataField="naziv_kina" HeaderText="NAZIV KINA" SortExpression="naziv_kina" />
                     <asp:BoundField DataField="adresa" HeaderText="ADRESA" SortExpression="adresa" />
                     <asp:BoundField DataField="broj_dvorana" HeaderText="BROJ DVORANA" SortExpression="broj_dvorana" />
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionToKino %>" SelectCommand="SELECT [grad], [naziv_kina], [adresa], [broj_dvorana] FROM [Kina]"></asp:SqlDataSource>
         
        </div>
          <img class="dvorane_img" src="slike/dvorane1.png">
          <img class="dvorane_img" src="slike/dvorane2.png">
          <img class="dvorane_img" src="slike/dvorane3.png">
          <img class="dvorane_img" src="slike/dvorane4.png">
     </div>
</asp:Content>

