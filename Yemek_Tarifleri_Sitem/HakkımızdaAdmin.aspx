<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="HakkımızdaAdmin.aspx.cs" Inherits="HakkımızdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style7 {
        width: 430px;
    }
    .auto-style8 {
        width: 75px;
        text-align: right;
        height: 30px;
        margin-left: 40px;
    }
    .auto-style9 {
        width: 37px;
    }
    .auto-style11 {
        width: 39px;
    }
    .auto-style12 {
        width: 331px;
    }
    .auto-style13 {
        width: 75px;
        text-align: left;
        height: 39px;
        margin-left: 40px;
    }
    .auto-style14 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #84BAC6">
        <table class="auto-style7">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" Height="30px" style="font-size: x-large" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button2" runat="server" Height="30px" style="font-size: x-large" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td style="text-align: center" class="auto-style12">HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" style="text-align: justify">
        <table class="auto-style14">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Height="291px" TextMode="MultiLine" Width="428px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" CssClass="button" Height="48px" Text="Güncelle" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

