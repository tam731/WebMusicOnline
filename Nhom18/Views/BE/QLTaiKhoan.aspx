<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="QLTaiKhoan.aspx.cs" Inherits="Nhom18.Views.BE.QLTaiKhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung1" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="noidung2" runat="server">
     <h4>Danh sáchtài khoản</h4>
    <br />
    <asp:GridView runat="server" ID="GridView2" AutoGenerateColumns="false" Width="950">
        <Columns>
            <asp:BoundField HeaderText="ID" DataField="id"/>
            <asp:BoundField HeaderText="Tên đăng nhập" DataField="tendangnhap"/>
            <asp:BoundField HeaderText="Mật khẩu" DataField="matkhau"/>
            </Columns>
        </asp:GridView>
</asp:Content>
