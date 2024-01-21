<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" Width="350px" style="background-color: #FFF; margin-left:150px; text-align: left;">
    <ItemTemplate>
        <table class="auto-style1" border="0" style="border-bottom-color: #FFFFFF">
            <tr>
                <td class="auto-style7"style="color: #324A67; text-align: center; font-weight: 700; font-style: italic; background-color: #FFFFFF;"><strong style="background-color: #FFFFFF">GÜNÜN YEMEĞİ</strong></td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align: center; background-color: #FFFFFF;">
                    <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: x-large; text-align: center;" Text='<%# Eval("YemekAd") %>'></asp:Label>
                </td>
                <tr>
                    <td class="auto-style7" style="background-color: #FFFFFF">
                        <strong><span class="auto-style4">Malzemeler:</span></strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        <br />
                    </td>
                </tr>
            </tr>
            <tr>
                <td style="margin-left: 40px; background-color: #FFFFFF;" class="auto-style7">
                    <span class="auto-style4"><strong>Yapışı : </strong></span>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center; margin-left: 40px; background-color: #FFFFFF;" class="auto-style6">
                    <asp:Image ID="Image1" runat="server" Height="177px" style="text-align: center; background-color: #FFFFFF;" Width="301px" ImageUrl='<%# Eval("YemekResim") %>' />
                </td>
            </tr>
            <tr>
                <td style="text-align: left; margin-left: 40px; background-color: #FFFFFF;" class="auto-style7">
                    <asp:Label ID="Label6" runat="server" Text="Puan:" style="font-weight: 700; font-size: medium"></asp:Label>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td style="text-align: left; margin-left: 40px; background-color: #FFFFFF;" class="auto-style7">
                    <asp:Label ID="Label8" runat="server" Text="Tarih:" style="font-size: medium; font-weight: 700"></asp:Label>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

