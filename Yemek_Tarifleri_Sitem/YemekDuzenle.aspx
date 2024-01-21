<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        height: 556px;
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
            <td style="text-align: right">Yemek Ad :</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="232px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">Malzemeler :</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="128px" TextMode="MultiLine" Width="237px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">Tarif :</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TextBox3" runat="server" Height="232px" TextMode="MultiLine" Width="241px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">Kategori :</td>
            <td style="margin-left: 40px">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="248px" CssClass="tb5">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">Yemek Görüntü :</td>
            <td style="margin-left: 40px">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="237px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin-left: 40px">
                <asp:Button ID="Button1" runat="server" Height="45px" OnClick="Button1_Click" Text="Güncelle" CssClass="button" />
            &nbsp;
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin-left: 40px">
                <asp:Button ID="Button2" runat="server" CssClass="button" Height="45px" OnClick="Button2_Click" Text="Günün Yemeği Seç" Width="196px" />
            </td>
        </tr>
    </table>
</asp:Content>

