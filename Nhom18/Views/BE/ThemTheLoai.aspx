<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="ThemTheLoai.aspx.cs" Inherits="Nhom18.Views.BE.ThemTheLoai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Thêm thể loại
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
    <div>
            <h4>Thêm thể loại</h4>
            <br />
            <asp:Table runat="server" ID="tblds">
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
                       <asp:FileUpload runat="server" ID="anh"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
           <br />
        <div style="margin-left:50px;">
            <asp:Button runat="server" ID="btnThem" Text="Thêm thể loại" OnClick="btnThem_Click" />&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnBoqua" Text="Hủy bỏ" PostBackUrl="~/Views/BE/QLTheLoai.aspx"/>
        </div>
        <br />
            <p>
                <asp:Label ID="msg" runat ="server" />
            </p>
            <br />
        </div>
</asp:Content>
