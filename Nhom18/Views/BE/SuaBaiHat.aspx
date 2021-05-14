

<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="SuaBaiHat.aspx.cs" Inherits="Nhom18.Views.BE.SuaBaiHat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Sửa bài hát
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
            <h4>Sửa thông tin bài hát</h4>
            <br />
            <asp:Table runat="server" ID="tblds">
                <asp:TableRow>
                    <asp:TableCell>
                       Mã bài hát:
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtmabaihat" Enabled="false"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
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
            <asp:Button ID="btnSua" runat="server" Text="Cập nhật" OnClick="btnSua_Click"/>
            <p>
                  <asp:Label ID="msg" runat="server"></asp:Label>
            </p>
           
        </div>
</asp:Content>
