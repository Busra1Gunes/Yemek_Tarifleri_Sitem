<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Iletisim.aspx.cs" Inherits="Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            height: 26px;
            width: 135px;
            text-align: right;
            color: #000000;
        }
        .auto-style7 {
            height: 26px;
            width: 77%;
        }
        .auto-style10 {
            width: 135px;
            text-align: right;
            color: #000000;
        }
        .auto-style11 {
            width: 77%;
        }
        .auto-style12 {
            text-align: center;
            font-size: medium;
            height: 23px;
            font-style: italic;
        }
        .auto-style13 {
            width: 135px;
            text-align: right;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style12" colspan="2"><strong style="color: #000000">MESAJ PANELİ</strong></td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style5">Ad Soyad : </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtad" runat="server" Width="245px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Mail : </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtmail" runat="server" Width="245px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Konu : </td>
            <td class="auto-style11">
                <asp:TextBox ID="txtkonu" runat="server" Width="245px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Mesaj : </td>
            <td class="auto-style11">
                <asp:TextBox ID="txtmesaj" runat="server" Height="84px" TextMode="MultiLine" Width="245px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">
                <asp:Button ID="Button1" runat="server" style="font-weight: 700; font-size: small" Text="Gönder" Width="103px" CssClass="button" Height="55px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

