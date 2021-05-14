<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="SuaChuDe.aspx.cs" Inherits="Nhom18.Views.BE.SuaChuDe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Sửa chủ đề
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung1" runat="server">
    <ul>
       <li>
           <a href="DSChuDe.aspx">Danh sách chủ đề</a>
       </li>
       <li>
           <a href="ThemChuDe.aspx">Thêm chủ đề mới</a>
       </li>
       <li>
           <a href="SuaChuDe.aspx">Sửa chủ đề</a>
       </li>
   </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="noidung2" runat="server">
    <h2>Sửa chủ đề</h2>
    <asp:Table runat="server" ID="tblcs">
          <asp:TableRow>
            <asp:TableCell>
                Mã chủ đề
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtmacd" Enabled="false"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
               Tên chủ đề
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtten"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
               Mô tả thêm
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtmota"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>

         <asp:TableRow>
            <asp:TableCell>
                Hình ảnh
            </asp:TableCell>
            <asp:TableCell>
               <asp:Image ID="img" runat="server" ImageUrl='<%# "~/images/chude/" + Eval("hinhanh") %>' Width="100"/>
               <asp:FileUpload  runat="server" ID="anh"/>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>   
    <asp:Button ID="btnSua" runat="server" Text="Cập nhật" OnClick="btnSua_Click"/>
    <br />
    <p>
        <asp:Label ID="msg" runat="server"></asp:Label>
    </p>
</asp:Content>
