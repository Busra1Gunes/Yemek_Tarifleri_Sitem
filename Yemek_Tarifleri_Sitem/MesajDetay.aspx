<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="MesajDetay.aspx.cs" Inherits="MesajDetay" %>


<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style6">
        <tr>
            <td colspan="2" style="text-align: center">MESAJ DETAY</td>
        </tr>
        <tr>
            <td class="auto-style7" style="text-align: right">Mesaj Gönderen :</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="264px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">Başlık :</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Width="264px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">Mail : </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Width="264px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">Mesaj :</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5" Height="114px" TextMode="MultiLine" Width="264px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>


