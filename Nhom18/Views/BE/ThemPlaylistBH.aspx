<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="ThemPlaylistBH.aspx.cs" Inherits="Nhom18.Views.BE.ThemPlaylistBH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung1" runat="server">
         <ul>
            <li>
                <a href="DSPlaylistBH.aspx">Danh sách playlist-baihat</a>
            </li>
             <li>
                <a href="ThemPlaylistBH.aspx">Thêm playlist-baihat</a>
            </li>
             <li>
                <a href="SuaPlaylistBH.aspx">Sửa playlist-bài hát</a>
            </li>
        </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="noidung2" runat="server">
    <div>
            <h4>Thêm playlist -bài hát</h4>
            <br />
            <asp:Table runat="server" ID="tblds">
                <asp:TableRow>
                    <asp:TableCell>
                       Mã playlist:
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtplaylist"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                       Mã bài hát:
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtbaihat"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
           <br />
        <div style="margin-left:50px;">
            <asp:Button runat="server" ID="btnThem" Text="Thêm" OnClick="btnThem_Click" />&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnBoqua" Text="Hủy bỏ" PostBackUrl="~/Views/BE/QLPlaylistBH.aspx"/>
        </div>
            <br />
            <p>
                <asp:Label ID="msg" runat ="server" />
            </p>
            <br />
        </div>
</asp:Content>
