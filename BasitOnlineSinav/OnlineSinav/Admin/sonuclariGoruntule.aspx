<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="sonuclariGoruntule.aspx.cs" Inherits="OnlineSinav.sonucGountule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <table style="width: 85%;">
        <tr>
            <td style="width: 50%">Sonuçlarını görüntülemek istediğiniz sınavı seçin:</td>
            <td style="width: 50%">
    
    <asp:DropDownList ID="DropDownListSinavAdi" runat="server" DataSourceID="SqlDataSourceSinavID" DataTextField="sinavBasligi" DataValueField="sinavID" OnSelectedIndexChanged="DropDownListSinavAdi_SelectedIndexChanged" AutoPostBack="True" ViewStateMode="Enabled">
                     </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 281px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="90%">
        <Columns>
            <asp:BoundField DataField="calisanNo" HeaderText="Çalışan Numarası" />
            <asp:BoundField DataField="calisanAdSoyad" HeaderText="Çalışan Ad Soyad" />
            <asp:BoundField DataField="dogruSayisi" HeaderText="Doğru Sayısı" />
            <asp:BoundField DataField="yanlisSayisi" HeaderText="Yanlış Sayısı" />
        </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
    <RowStyle BackColor="White" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSourceSinavID" runat="server" ConnectionString="<%$ ConnectionStrings:ONLINESINAVConnectionString %>" SelectCommand="SELECT [sinavID], [sinavBasligi] FROM [SINAV]"></asp:SqlDataSource>
    </asp:Content>
