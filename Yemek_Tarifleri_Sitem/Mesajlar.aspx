<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Mesajlar.aspx.cs" Inherits="Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 502px;
        }
        .auto-style7 {
            width: 448px;
        }
        .auto-style8 {
            width: 33px;
        }
        .auto-style9 {
            width: 31px;
        }
        .auto-style10 {
            width: 346px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #84BAC6">
        <table class="auto-style7">
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" Height="30px" style="font-size: x-large" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button2" runat="server" Height="30px"  style="font-size: x-large" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td style="text-align: center" class="auto-style10">Mesaj Listesi</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </td>
                        
                        <td style="text-align: right"><a href='MesajDetay.aspx?Mesajid=<%#Eval("Mesajid") %>'>
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/62859-open-16-book-icon.png" style="text-align: right" Width="31px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

