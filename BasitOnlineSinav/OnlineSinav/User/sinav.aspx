<%@ Page Title="" Language="C#" MasterPageFile="~/User/calisan.Master" AutoEventWireup="true" CodeBehind="sinav.aspx.cs" Inherits="OnlineSinav.sinav" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="2000">
        </asp:Timer>
    </div>



    <div>
        <asp:UpdatePanel ID="updPnl"
            runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Text="Kalan Süreniz :"></asp:Label>
                <asp:Label ID="LabelZaman" runat="server"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="dk"></asp:Label>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="timer1" EventName="tick" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ONLINESINAVConnectionString %>" SelectCommand="SELECT SORULAR.soruMetini, SORULAR.secenekMetniA, SORULAR.secenekMetniB, SORULAR.secenekMetniC, SORULAR.soruID FROM SORULAR INNER JOIN SINAV ON SORULAR.sinavID = SINAV.sinavID WHERE (SINAV.sinavPaylasimDurumu = '1')"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="95%">
        <Columns>
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
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" BorderStyle="None" ForeColor="Black" HorizontalAlign="Left" />
        <PagerTemplate>
            <asp:RadioButton ID="RadioButton4" runat="server" Text='<%# Eval("secenekMetniA") %>' />
        </PagerTemplate>
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:Button ID="ButtonSinaviGonder" runat="server" Text="Gönder" OnClick="ButtonSinaviGonder_Click" />
</asp:Content>
