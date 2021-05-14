<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="ThemPlayList.aspx.cs" Inherits="Nhom18.Views.BE.ThemPlayList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Thêm PlayList
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
    <div>
            <h4>Thêm playlist</h4>
            <br />
            <asp:Table runat="server" ID="tblds">
                <asp:TableRow>
                    <asp:TableCell>
                       Tên playlist :
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtten"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                       Người tạo:
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtnguoitao"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                       Hình ảnh :
                    </asp:TableCell>
                     <asp:TableCell>
                       <asp:Image ID="img" runat="server" ImageUrl='<%# "~/images/playlist/" + Eval("hinhanh") %>' Width="100"/>
                       <asp:FileUpload runat="server" ID="anh"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                       Mã thể loại :
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtmatheloai"></asp:TextBox>

                        <%--<asp:DropDownList ID="ddltheloai" runat="server"  DataTextField="tentheloai" DataValueField="matheloai">
                        </asp:DropDownList>--%>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
           <br />
        <div style="margin-left:50px;">
            <asp:Button runat="server" ID="btnThem" Text="Thêm mới" OnClick="btnThem_Click" />&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnBoqua" Text="Hủy bỏ" PostBackUrl="~/Views/BE/QLPlayList.aspx"/>
        </div>  
            <br />
            <p>
                <asp:Label ID="msg" runat ="server" />
            </p>
            <br />
        </div>
</asp:Content>
