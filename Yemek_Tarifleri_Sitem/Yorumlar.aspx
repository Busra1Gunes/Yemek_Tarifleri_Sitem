<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 329px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #84BAC6">
        <table class="auto-style7">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" Height="30px" style="font-size: x-large" Text="+" Width="30px" OnClick="Button1_Click1"  />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button2" runat="server" Height="30px" style="font-size: x-large" Text="-" Width="30px" OnClick="Button2_Click1"  />
                </td>
                <td style="text-align: center">Onaylanan Yorum Listesi</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server"  Width="447px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td style="text-align: right"><a href='Yorumlar.aspx?Yorumid=<%#Eval("Yorumid") %>&amp;islem=sil'>
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete-icon.png" Width="30px" />
                            </a></td>
                        <td style="text-align: right"><a href='YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>'>
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/add-1-icon.png" style="text-align: right" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" style="background-color: #84BAC6">
        <table class="auto-style7">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button3" runat="server" Height="30px" style="font-size: x-large" Text="+" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button4" runat="server" Height="30px" style="font-size: x-large" Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td style="text-align: center">Onaylanmayan Yorum Listesi</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server"  Width="447px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td style="text-align: right"><a href='Yorumlar.aspx?Yorumid=<%#Eval("Yorumid") %>&amp;islem=sil'>
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete-icon.png" Width="30px" />
                            </a></td>
                        <td style="text-align: right"><a href='YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>'>
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/add-1-icon.png" style="text-align: right" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>


