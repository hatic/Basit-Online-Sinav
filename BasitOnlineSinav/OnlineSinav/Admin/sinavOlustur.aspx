<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="sinavOlustur.aspx.cs" Inherits="OnlineSinav.sinavOlustur" %>

<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <div id="soru1" style="height: 100%;  text-align: left;margin-right:10px">
          <table style=" padding: 0px; border-width: 0px; margin: 0px; width:100%;">
                <tr>
                    <td style=" width:25%;">
                        <asp:Label ID="LabelSinaBasligi" runat="server" Text="Sınav Adı"></asp:Label>
                    </td>
                    <td style=" width:75%;">
                        <asp:TextBox ID="TextBoxSinavBasligi" runat="server" Width="100%" ></asp:TextBox>
                    </td>
                </tr>
              
                      <tr>
                          <td style="width: 126px">
                              <asp:Label ID="Label20" runat="server" Text="Soru 1:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni1" runat="server" Width="85%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA1" runat="server" GroupName="secenek1" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA1" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB1" runat="server" GroupName="secenek1" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB1" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC1" runat="server" GroupName="secenek1" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC1" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:Label ID="Label1" runat="server" Text="Soru 2:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni2" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA2" runat="server" GroupName="secenek2" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA2" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB2" runat="server" GroupName="secenek2" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB2" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC2" runat="server" GroupName="secenek2" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC2" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:Label ID="Label2" runat="server" Text="Soru 3:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni3" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA3" runat="server" GroupName="secenek3" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA3" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB3" runat="server" GroupName="secenek3" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB3" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC3" runat="server" GroupName="secenek3" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC3" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:Label ID="Label3" runat="server" Text="Soru 4:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni4" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA4" runat="server" GroupName="secenek4" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA4" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB4" runat="server" GroupName="secenek4" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB4" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC4" runat="server" GroupName="secenek4" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC4" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:Label ID="Label4" runat="server" Text="Soru 5:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni5" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA5" runat="server" GroupName="secenek5" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA5" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB5" runat="server" GroupName="secenek5" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB5" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC5" runat="server" GroupName="secenek5" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC5" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:Label ID="Label5" runat="server" Text="Soru 6:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni6" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA6" runat="server" GroupName="secenek6" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA6" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB6" runat="server" GroupName="secenek6" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB6" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC6" runat="server" GroupName="secenek6" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC6" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:Label ID="Label6" runat="server" Text="Soru 7:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni7" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA7" runat="server" GroupName="secenek7" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA7" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB7" runat="server" GroupName="secenek7" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB7" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC7" runat="server" GroupName="secenek7" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC7" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:Label ID="Label7" runat="server" Text="Soru 8:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni8" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA8" runat="server" GroupName="secenek8" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA8" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB8" runat="server" GroupName="secenek8" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB8" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC8" runat="server" GroupName="secenek8" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC8" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:Label ID="Label8" runat="server" Text="Soru 9:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni9" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA9" runat="server" GroupName="secenek9" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA9" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB9" runat="server" GroupName="secenek9" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB9" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC9" runat="server" GroupName="secenek9" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC9" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:Label ID="Label9" runat="server" Text="Soru 10:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni10" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA10" runat="server" GroupName="secenek10" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA10" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB10" runat="server" GroupName="secenek10" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB10" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC10" runat="server" GroupName="secenek10" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC10" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:Label ID="Label10" runat="server" Text="Soru 11:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni11" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA11" runat="server" GroupName="secenek11" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA11" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB11" runat="server" GroupName="secenek11" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB11" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC11" runat="server" GroupName="secenek11" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC11" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:Label ID="Label11" runat="server" Text="Soru 12:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni12" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA12" runat="server" GroupName="secenek12" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA12" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB12" runat="server" GroupName="secenek12" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB12" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC12" runat="server" GroupName="secenek12" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC12" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:Label ID="Label12" runat="server" Text="Soru 13:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni13" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA13" runat="server" GroupName="secenek13" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA13" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB13" runat="server" GroupName="secenek13" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB13" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC13" runat="server" GroupName="secenek13" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC13" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:Label ID="Label13" runat="server" Text="Soru 14:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni14" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA14" runat="server" GroupName="secenek14" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA14" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB14" runat="server" GroupName="secenek14" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB14" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC14" runat="server" GroupName="secenek14" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC14" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:Label ID="Label14" runat="server" Text="Soru 15:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni15" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA15" runat="server" GroupName="secenek15" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA15" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB15" runat="server" GroupName="secenek15" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB15" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC15" runat="server" GroupName="secenek15" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC15" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:Label ID="Label15" runat="server" Text="Soru 16:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni16" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA16" runat="server" GroupName="secenek16" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA16" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB16" runat="server" GroupName="secenek16" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB16" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC16" runat="server" GroupName="secenek16" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC16" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:Label ID="Label16" runat="server" Text="Soru 17:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni17" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA17" runat="server" GroupName="secenek17" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA17" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB17" runat="server" GroupName="secenek17" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB17" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC17" runat="server" GroupName="secenek17" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC17" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:Label ID="LabelSoru17" runat="server" Text="Soru 18:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni18" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA18" runat="server" GroupName="secenek18" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA18" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB18" runat="server" GroupName="secenek18" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB18" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC18" runat="server" GroupName="secenek18" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC18" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:Label ID="LabelSoru19" runat="server" Text="Soru 19:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni19" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA19" runat="server" GroupName="secenek19" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA19" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB19" runat="server" GroupName="secenek19" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB19" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC19" runat="server" GroupName="secenek19" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC19" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                     <tr>
                          <td style="width: 126px">
                              <asp:Label ID="LabelSoru20" runat="server" Text="Soru 20:"></asp:Label>
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSoruMetni20" runat="server" Width="100%"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonA20" runat="server" GroupName="secenek20" Text="A" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekA20" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonB20" runat="server" GroupName="secenek20" Text="B" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekB20" runat="server" Width="300px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 126px">
                              <asp:RadioButton ID="RadioButtonC20" runat="server" GroupName="secenek20" Text="C" />
                          </td>
                          <td style="width: 691px">
                              <asp:TextBox ID="TextBoxSecenekC20" runat="server" Width="300px" ></asp:TextBox>
                             
                          </td>
                      </tr>

                 
                  
                   
                <tr>
                    <td colspan="2">
                  
                  <asp:Button ID="ButtonSinaviKaydet" runat="server" OnClick="ButtonSinaviKaydet_Click" Text="Sınavı Kaydet" />
                    </td>
                </tr>
            </table>
           
        </div>
        
        

    
 </asp:Content>