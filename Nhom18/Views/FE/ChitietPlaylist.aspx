<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="ChitietPlaylist.aspx.cs" Inherits="Nhom18.Views.FE.ChitietPlaylist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Chi tiết playlist
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
            <h2>Danh sách bài hát</h2>
        <asp:DataList runat="server" ID="datalistbhpl">
        <ItemTemplate>
    
            <div style="margin:20px 0px;">
                <a href='<%# "ChiTietBaiHat.aspx?Id="+Eval("mabaihat")%>'>
                     <asp:Label runat="server" Text='<%# Eval("tenbaihat") %>'></asp:Label>
                </a>
                <br />
                <a href='<%# "ChitietCaSi.aspx?Id="+Eval("mabaihat")%>'>
                     <asp:Label runat="server" Text='<%# Eval("tacgia") %>'></asp:Label>
                </a>
                <br />
                <hr />
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
