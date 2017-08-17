<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OnlineSinav.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KCETAŞ Sınav Oluşturma Sistemi</title>
  
    <link href="StyleSheet.css" rel="stylesheet" />
    </head>
<body style="height: 132px; align-content:center; background-color:#ECECFF">
    <form id="form1" runat="server">
        <div style="text-align:center;margin-top:40px; color:#234087">
           <h1 style="border: thin double #234087; background-color: #CCEAE7; height: 57px; width: 100%; text-align:center; top: auto; right: auto; bottom: auto; left: auto;"> Kayseri ve Civarı Elektrik T.A.Ş.</h1>
            <p style="background-color: #CCEAE7;margin-top:20px"> ÇAĞRI MERKEZİ ONLİNE SINAV HAZIRLAMA SİSTEMİ</p>
            <p style="background-color: #CBE9E6"> &nbsp;</p>
            <p> &nbsp;</p>
            <div style="border: thick double #234087; width:750px; height:250px; margin-top:50px; background-color:#CCEAE7; margin-left: auto; margin-right: auto; margin-bottom: 0; " >
                <div style="margin-bottom:0px; margin-left:0px;margin-right:0px;margin-top:0px;margin:0px">
                    <br />
                    <br />
&nbsp;<table style="width:90%; height: 60%; ">
            <tr>
                <td>
            
            <asp:Label ID="LabelKullaniciAdi" runat="server" Text="Kullanıcı Adı :" ></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TextBoxKullaniciAdi" runat="server"  Width="220px" Height="25px" ></asp:TextBox></td>
            </tr>
            <tr>
                <td>
            <asp:Label ID="LabelSifre" runat="server" Text="Şifre :"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TextBoxSifre" runat="server"  Width="220px" Height="25px" TextMode="Password" ></asp:TextBox></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
        <asp:Button ID="ButtonGirisYap" runat="server" Text="Giriş Yap" Height="25px" Width="101px" OnClick="ButtonGirisYap_Click" /> 
                </td>
            </tr>
        </table>
        </div>
         </div>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
