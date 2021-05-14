<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="QLAlbum.aspx.cs" Inherits="Nhom18.Views.BE.QLAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Quản lý Album
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung1" runat="server">
      <ul>
        <li>
            <a href="DSAlbum.aspx">Danh sách album</a>
        </li>
         <li>
            <a href="ThemAlbum.aspx">Thêm album</a>
        </li>
        <li>
            <a href="SuaAlbum.aspx">Sửa album</a>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="noidung2" runat="server">
</asp:Content>
