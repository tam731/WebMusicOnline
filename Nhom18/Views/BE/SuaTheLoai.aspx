<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="SuaTheLoai.aspx.cs" Inherits="Nhom18.Views.BE.SuaTheLoai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Sửa thể loại
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung1" runat="server">
    <ul>
       <li>
           <a href="DSTheLoai.aspx">Danh sách thể loại</a>
       </li>
       <li>
           <a href="ThemTheLoai.aspx">Thêm thể loại</a>
       </li>
       <li>
           <a href="SuaTheLoai.aspx">Sửa thể loại</a>
       </li>
   </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="noidung2" runat="server">
    <h2>Sửa thể loại</h2>
    <asp:Table runat="server" ID="tbltl">
          <asp:TableRow>
            <asp:TableCell>
                Mã thể loại :
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtma" Enabled="false"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
               Tên thể loại :
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtten"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
               Ảnh :
            </asp:TableCell>
            <asp:TableCell>
               <asp:Image ID="img" runat="server" ImageUrl='<%# "~/images/theloai/" + Eval("hinhanh") %>' Width="100"/>
               <asp:FileUpload  runat="server" ID="anh"/>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>    
    <asp:Button ID="btnSua" runat="server" Text="Cập nhật" OnClick="btnSua_Click"/>
    <p>
        <asp:Label ID="msg" runat="server"></asp:Label>
    </p>
</asp:Content>
