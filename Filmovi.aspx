<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Filmovi.aspx.cs" Inherits="Filmovi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="content">
           <h1 style="text-align:center; color:white; background-color:#E60002; padding:5px;">KINO PROGRAM</h1>
         <div id="rb_list"><asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="naziv_zanra" DataValueField="zanrID" RepeatDirection="Horizontal"></asp:RadioButtonList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionToKino %>" SelectCommand="SELECT [zanrID], [naziv_zanra] FROM [Zanr]"></asp:SqlDataSource>
           </div>
         <div id="list"><asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="naziv_filma" DataValueField="filmID"></asp:ListBox> 
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionToKino %>" SelectCommand="SELECT [filmID], [naziv_filma] FROM [Filmovi] WHERE ([zanr] = @zanr)">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadioButtonList1" Name="zanr" PropertyName="SelectedValue" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
           </div>
         
         <div id="details_view">
             <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource3" >
                 <Fields>
                     <asp:BoundField DataField="naziv_filma" HeaderText="NAZIV FILMA" SortExpression="naziv_filma" />
                     <asp:BoundField DataField="godina_izdavanja" HeaderText="GODINA IZDAVANJA" SortExpression="godina_izdavanja" />
                     <asp:BoundField DataField="zanr" HeaderText="ZANR" SortExpression="zanr" />
                     <asp:BoundField DataField="trajanje_min" HeaderText="TRAJANJE/MIN" SortExpression="trajanje_min" />
                     <asp:BoundField DataField="kratki_opis" HeaderText="KRATKI OPIS" SortExpression="kratki_opis" />
                 </Fields>
             </asp:DetailsView>
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionToKino %>" SelectCommand="SELECT [naziv_filma], [godina_izdavanja], [zanr], [trajanje_min], [kratki_opis] FROM [Filmovi] WHERE ([filmID] = @filmID)">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="ListBox1" Name="filmID" PropertyName="SelectedValue" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
           </div>
     </div>
</asp:Content>

