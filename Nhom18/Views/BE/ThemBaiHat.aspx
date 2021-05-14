<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="ThemBaiHat.aspx.cs" Inherits="Nhom18.Views.BE.ThemBaiHat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Thêm bài hát mới
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung1" runat="server">
    <ul>
        <li>
            <a href="DSBaiHat.aspx">Danh sách bài hát</a>
        </li>
         <li>
            <a href="ThemBaiHat.aspx">Thêm bài hát</a>
        </li>
        <li>
            <a href="SuaBaiHat.aspx">Sửa bài hát</a>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="noidung2" runat="server">
         <div>
            <h4>Thêm bài hát</h4>
            <br />
            <asp:Table runat="server" ID="tblds">
                <asp:TableRow>
                    <asp:TableCell>
                       Tên bài hát:
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
                       <asp:Image ID="img" runat="server" ImageUrl='<%# "~/images/baihat/" + Eval("hinhanh") %>' Width="100"/>
                       <asp:FileUpload runat="server" ID="anh"/>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>
                       Lời bài hát :
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtloibh"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>
                       Tác giả :
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txttacgia"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                       Mã thể loại :
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtmatl"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow> 
                <asp:TableRow>
                    <asp:TableCell>
                        Mã album :
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtmaalbum"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                       Mã chủ đề :
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtmacd"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                       Link bài hát :
                    </asp:TableCell>
                     <asp:TableCell>                      
                         <asp:FileUpload runat="server" ID="linkbh"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
           <br />
        <div style="margin-left:50px;">
            <asp:Button runat="server" ID="btnThem" Text="Thêm bài hát" OnClick="btnThem_Click" />&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnBoqua" Text="Hủy bỏ" PostBackUrl="~/Views/BE/QLBaiHat.aspx" />
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
