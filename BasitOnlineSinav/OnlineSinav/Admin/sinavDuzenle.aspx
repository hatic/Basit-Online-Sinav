<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="sinavDuzenle.aspx.cs" Inherits="OnlineSinav.sinavDüzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <table style="width:100%;">
         <tr>
             <td>
                 Düzenleyeceğiniz sınavı seçin:
                 <asp:DropDownList ID="DropDownListSinavListele" runat="server" DataSourceID="SqlDataSourceSinavCek" DataTextField="sinavBasligi" DataValueField="sinavID" OnSelectedIndexChanged="DropDownListSinavListele_SelectedIndexChanged">
                 </asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSourceSinavCek" runat="server" ConnectionString="<%$ ConnectionStrings:ONLINESINAVConnectionString %>" SelectCommand="SELECT [sinavID], [sinavBasligi] FROM [SINAV]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ONLINESINAVConnectionString %>" SelectCommand="SELECT SORULAR.soruMetini, SORULAR.secenekMetniA, SORULAR.secenekMetniB, SORULAR.secenekMetniC, SORULAR.soruID FROM SORULAR INNER JOIN SINAV ON SORULAR.sinavID = SINAV.sinavID WHERE (SINAV.sinavPaylasimDurumu = '1')"></asp:SqlDataSource>
             </td>
         </tr>
         <tr>
             <td>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="95%">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField HeaderText="Düzenle" ShowEditButton="True" />
            <asp:BoundField DataField="soruMetini" HeaderText="Sorular " SortExpression="soruMetini" ReadOnly="True" />
            <asp:TemplateField HeaderText="Seçenekler">

                <ItemTemplate>
                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("soruID") %>'></asp:HiddenField>
                    A<asp:RadioButton ID="RadioButtonA" runat="server" Text='<%# Eval("secenekMetniA") %>' GroupName="secenek" />
                    <br />
                    B<asp:RadioButton ID="RadioButtonB" runat="server" GroupName="secenek" Text='<%# Eval("secenekMetniB") %>' />
                    <br />
                    C<asp:RadioButton ID="RadioButtonC" runat="server" Text='<%# Eval("secenekMetniC") %>' GroupName="secenek" />

                    <br />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="secenek" Text='<%# Eval("secenekMetniA") %>' />
            <br />
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="secenek" Text='<%# Eval("secenekMetniB") %>' />
            <br />
            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="secenek" Text='<%# Eval("secenekMetniC") %>' />
        </EmptyDataTemplate>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" BorderStyle="None" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <PagerTemplate>
            <asp:RadioButton ID="RadioButton4" runat="server" Text='<%# Eval("secenekMetniA") %>' />
        </PagerTemplate>
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
             </td>
         </tr>
         <tr>
             <td>
    <asp:Button ID="ButtonSinaviGonder" runat="server" Text="Gönder" />
             </td>
         </tr>
     </table>
</asp:Content>
