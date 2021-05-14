<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="QLPLayList.aspx.cs" Inherits="Nhom18.Views.BE.QLPLayList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Quản lý PlayList
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung1" runat="server">
    <ul>
        <li>
            <a href="DSPlayList.aspx">Danh sách playlist</a>
        </li>
         <li>
            <a href="ThemPlayList.aspx">Thêm playlist</a>
        </li>
        <li>
            <a href="SuaPlayList.aspx">Sửa playlist</a>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="noidung2" runat="server">
</asp:Content>
