<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="sinavPaylas.aspx.cs" Inherits="OnlineSinav.sinavPaylas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <table style="width:90%; height: 292px;">
        <tr>
            <td>&nbsp;</td>
            <td>Paylaşacağınız sınavı seçin :</td>
            <td>
                <asp:DropDownList ID="DropDownListSinavlar" runat="server" DataSourceID="SqlDataSourceSinavCek" DataTextField="sinavBasligi" DataValueField="sinavID" OnSelectedIndexChanged="DropDownListSinavlar_SelectedIndexChanged">
                    
                </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="ButtonSinavPaylas" runat="server" OnClick="ButtonSinavPaylas_Click" Text="Sınavı Paylaş" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="LabelSinavOlusturuldu" runat="server"></asp:Label>
                <br />
                <asp:SqlDataSource ID="SqlDataSourceSinavCek" runat="server" ConnectionString="<%$ ConnectionStrings:ONLINESINAVConnectionString %>" SelectCommand="SELECT [sinavBasligi], [sinavID] FROM [SINAV]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
