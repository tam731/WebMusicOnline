<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="SuaCaSi.aspx.cs" Inherits="Nhom18.Views.BE.SuaCaSi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Sửa ca sĩ
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung1" runat="server">
     <ul>
        <li>
            <a href="DSCaSi.aspx">Danh sách ca sĩ</a>
        </li>
         <li>
            <a href="ThemCaSi.aspx">Thêm ca sĩ</a>
        </li>
         <li>
            <a href="SuaCaSi.aspx">Sửa ca sĩ</a>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="noidung2" runat="server">
     <h4>Sửa Ca Sĩ</h4>
    <asp:Table runat="server" ID="tblcs">
          <asp:TableRow>
            <asp:TableCell>
                Mã ca sĩ :
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtmacs" Enabled="false"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
               Tên ca sĩ :
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtten"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
               Năm sinh :
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtnamsinh"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
                Hình ảnh:
            </asp:TableCell>
            <asp:TableCell>
               <asp:Image ID="img" runat="server" ImageUrl='<%# "~/images/casi/" + Eval("hinhanh") %>' Width="100"/>
               <asp:FileUpload  runat="server" ID="anh"/>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
                Quê quán :
            </asp:TableCell>
            <asp:TableCell>
             <asp:TextBox runat="server" ID="txtque"></asp:TextBox>          
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
    </asp:Table>   
    <asp:Button ID="btnSua" runat="server" Text="Cập nhật" OnClick="btnSua_Click"/>
    <p>
        <asp:Label ID="msg" runat="server"></asp:Label>
    </p>
</asp:Content>
