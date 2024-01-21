<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            height: 23px;
            margin-left: 80px;
        }
        .auto-style8 {
            height: 23px;
            text-align: right;
            margin-left: 80px;
        }
        .auto-style9 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style6">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">Ad Soyad :</td>
            <td>
                <asp:TextBox ID="txtAd" runat="server" CssClass="tb5" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Mail Adresi :</td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" CssClass="tb5" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Yorum İçerik :</td>
            <td class="auto-style7">
                <asp:TextBox ID="txticerik" runat="server" CssClass="tb5" Height="88px" TextMode="MultiLine" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Yemek :</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtYemek" runat="server" CssClass="tb5" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style7">
                <asp:Button ID="Button1" runat="server" CssClass="button" OnClick="Button1_Click" Text="Onayla" Width="150px" />
            </td>
        </tr>
    </table>
</asp:Content>

