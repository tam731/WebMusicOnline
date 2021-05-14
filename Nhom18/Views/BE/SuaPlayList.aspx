<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="SuaPlayList.aspx.cs" Inherits="Nhom18.Views.BE.SuaPlayList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Sửa Playlist
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
        <h2>Sửa playlist</h2>
    <asp:Table runat="server" ID="tblcs">
          <asp:TableRow>
            <asp:TableCell>
                Mã playlist:
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtmaplaylist" Enabled="false"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
               Tên playlist:
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtten"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
             Người tạo :
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtnguoitao"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
                Hình ảnh
            </asp:TableCell>
            <asp:TableCell>
               <asp:Image ID="img" runat="server" ImageUrl='<%# "~/images/playlist/" + Eval("hinhanh") %>' Width="100"/>
               <asp:FileUpload  runat="server" ID="anh"/>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
            Mã thể loại :
            </asp:TableCell>
            <asp:TableCell>
               <%--<asp:DropDownList ID="ddltheloai" runat="server">

                </asp:DropDownList>--%>
              <asp:TextBox runat="server" ID="txtmatheloai"></asp:TextBox>    
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>   
    <asp:Button ID="btnSua" runat="server" Text="Cập nhật" OnClick="btnSua_Click"/>
    <br />
    <p>
        <asp:Label ID="msg" runat="server"></asp:Label>
    </p>
</asp:Content>
