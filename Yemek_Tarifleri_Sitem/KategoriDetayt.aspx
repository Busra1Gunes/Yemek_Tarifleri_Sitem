<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetayt.aspx.cs" Inherits="KategoriDetayt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 23px;
            color: #FFFFFF;
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style5 {
            height: 20px;
            text-align: left;
        }
        .auto-style4 {
            height: 22px;
        }
        .auto-style6 {
            height: 42px;
            text-align: left;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style8 {
            height: 22px;
            text-align: left;
            background-color: #FFFFFF;
            width: 467px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style8">
            <tr style="color: #000000">
                <td style="color: #000000"><a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>">
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekAd") %>' style="font-size: x-large; font-weight: 700; color: #000000; font-style: italic;"></asp:Label>
                    </a>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Image ID="Image2" runat="server" Height="212px" ImageUrl='<%# Eval("YemekResim") %>' Width="459px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong style="color: #000000">Malzemeler :
                    <asp:Label ID="Label4" runat="server" style="color: #000000" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong style="color: #000000">Yemek Tarifi :</strong>&nbsp;<asp:Label ID="Label5" runat="server" style="color: #000000" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr style="color: #FF8080">
                <td class="auto-style7"><strong style="color: #000000">Eklenme Tarihi : </strong>
                    <asp:Label ID="Label6" runat="server" style="color: #000000" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    &nbsp;&nbsp;&nbsp; <strong><em style="color: #000000">Puan :</em></strong> <em>
                    <asp:Label ID="Label7" runat="server" style="font-weight: 700; color: #000000;" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </em></td>
            </tr>
            <tr style="color: #FF8080">
                <td class="auto-style7" style="border-bottom: thick groove #000000; color: #FFFFFF; background-color: #FFFFFF;">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

