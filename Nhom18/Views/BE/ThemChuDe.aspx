<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="ThemChuDe.aspx.cs" Inherits="Nhom18.Views.BE.ThemChuDe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Thêm mới chủ đề
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
        <div>
            <h4>Thêm chủ đề</h4>
            <br />
            <asp:Table runat="server" ID="tblds">
                <asp:TableRow>
                    <asp:TableCell>
                       Tên chủ đề :
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtten"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                       Mô tả thêm :
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtmota"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                       Hình ảnh :
                    </asp:TableCell>
                     <asp:TableCell>
                       <asp:Image ID="img" runat="server" ImageUrl='<%# "~/images/chude/" + Eval("hinhanh") %>' Width="100"/>
                       <asp:FileUpload runat="server" ID="anh"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
           <br />
        <div style="margin-left:50px;">
            <asp:Button runat="server" ID="btnThem" Text="Thêm chủ đề" OnClick="btnThem_Click" />&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnBoqua" Text="Hủy bỏ" PostBackUrl="~/Views/BE/QLChuDe.aspx"/>
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
