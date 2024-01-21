<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style5 {
        color: #000000;
    }
    .auto-style6 {
        color: #000000;
        text-align: right;
        font-weight: 700;
    }
    .auto-style7 {
        height: 22px;
    }
    .auto-style8 {
        color: #000000;
        height: 23px;
    }
    .auto-style9 {
        color: #000000;
        height: 22px;
    }
    .auto-style10 {
        text-align: right;
    }
    .auto-style11 {
        color: #000000;
        text-align: right;
        font-weight: 700;
        height: 261px;
    }
    .auto-style12 {
        color: #000000;
        height: 261px;
    }
    .auto-style13 {
        text-align: right;
        height: 26px;
    }
    .auto-style14 {
        text-align: left;
        height: 26px;
        background-color: #FFFFFF;
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="width: 490px; background-color: #FFFFFF">
        <tr>
            <td style="background-color: #FFFFFF" class="auto-style7"></td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style6">Tarif Ad:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtTarifAd" runat="server" Width="302px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Malzemeler:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="302px" CssClass="tb5"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Yapılışı:</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="TxtYapılıs" runat="server" Height="249px" TextMode="MultiLine" Width="302px" CssClass="tb5"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Resim:</strong></td>
            <td class="auto-style14">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="302px" CssClass="tb5" style="text-align: left" />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Tarif Öneren:</strong></td>
            <td class="auto-style9">
                <asp:TextBox ID="TxtOneren" runat="server" Width="302px" CssClass="tb5"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Mail :</strong></td>
            <td class="auto-style9">
                <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="302px" CssClass="tb5"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="background-color: #FFFFFF">&nbsp;</td>
            <td style="text-align: right" class="auto-style5">
                <asp:Button ID="BtnTarifOner" runat="server" BackColor="#6699FF" Font-Bold="True" ForeColor="Black" style="text-align: center" Text="Tarif Öner" Width="161px" OnClick="BtnTarifOner_Click" CssClass="button" Height="48px" />
            </td>
        </tr>
    </table>
</asp:Content>

