<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="ThemAlbum.aspx.cs" Inherits="Nhom18.Views.BE.ThemAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Thêm mới album
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
        <div>
            <h4>Thêm mới Nha cung cap</h4>
            <br />
            <asp:Table runat="server" ID="tblds">
                <asp:TableRow>
                    <asp:TableCell>
                       Tên album:
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtten"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                       Hình ảnh :
                    </asp:TableCell>
                     <asp:TableCell>
                       <asp:Image ID="img" runat="server" ImageUrl='<%# "~/images/album/" + Eval("hinhanh") %>' Width="100"/>
                       <asp:FileUpload runat="server" ID="anh"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
           <br />
        <div style="margin-left:50px;">
            <asp:Button runat="server" ID="btnThem" Text="Thêm album" OnClick="btnThem_Click" />&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnBoqua" Text="Hủy bỏ" PostBackUrl="~/Views/BE/QLAlbum.aspx"/>
        </div>  
            <br />
            <p>
                <asp:Label ID="msg" runat ="server" />
            </p>
            <br />
            <%--<p>
                <asp:Button  ID="btn2" runat="server" Text="Danh sách chủ đề" PostBackUrl="~/GUI/BackEnd/ChuDe/DanhsachChuDe.aspx"/>
            </p>--%>
        </div>
</asp:Content>
