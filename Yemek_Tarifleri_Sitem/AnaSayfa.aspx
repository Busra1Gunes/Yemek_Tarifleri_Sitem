<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style9 {
        background-color: #FFFFFF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:DataList ID="DataList2" runat="server" Width="450px" style="background-color: #FFF; margin-left: 75px;">
        <ItemTemplate>
            <table class="auto-style10">
                <tr style="color: #E88F86; background-color: #FFFFFF;">
                    <td class="auto-style8">

                        <a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekAd") %>' style="font-size: x-large; font-weight: 700; color: #333333; font-style: italic;"></asp:Label>
                       
                        </a>
                         <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Image ID="Image2" runat="server" Height="215px" ImageUrl='<%# Eval("YemekResim") %>' style="text-align: center" Width="447px" />
                    </td>
                </tr>
                <tr style="color: #6A81A3; background-color: #6B81A4">
                    <td class="auto-style9";
                        color: #6A81A3;>
                        <strong style="color: #324A67; background-color: #FFFFFF; font-style: italic;">Malzemeler : </strong>
                        <asp:Label ID="Label4" runat="server" style="color: #000000" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        &nbsp;<strong style="color: #324A67; font-style: italic;">Yemek Tarifi :</strong>
                        <asp:Label ID="Label5" runat="server" style="color: #000000; text-align: left;" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>

                <tr style="color: #FF8080">
                    <td style="border-bottom: thick groove #000000; color: #CE7171; border-bottom-width: thin; border-bottom-color: #FFFFFF; border-bottom-style: double;" class="auto-style11"><strong style="color: #324A67; font-style: italic;">Eklenme Tarihi : </strong>
                        <asp:Label ID="Label6" runat="server" style="color: #000000" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;&nbsp;</td>
                </tr>

                <tr style="color: #FF8080">
                    <td class="auto-style11" ><strong><em style="color: #324A67">Puan :</em></strong>&nbsp;<em><asp:Label ID="Label7" runat="server" style="font-weight: 700; color: #000000;" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </em></td>
                </tr>

                <tr style="color: #FF8080">
                    <td class="auto-style12">&nbsp;</td>
                </tr>

            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

