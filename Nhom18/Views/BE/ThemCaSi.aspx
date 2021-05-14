<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="ThemCaSi.aspx.cs" Inherits="Nhom18.Views.BE.ThemCaSi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Thêm ca sĩ
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
        <div>
            <h4>Thêm ca sĩ</h4>
            <br />
            <asp:Table runat="server" ID="tblds">
                <asp:TableRow>
                    <asp:TableCell>
                       Họ tên :
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txthoten"></asp:TextBox>
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
                        Hình ảnh :
                    </asp:TableCell>
                     <asp:TableCell>
                       <asp:Image ID="img" runat="server" ImageUrl='<%# "~/images/casi/" + Eval("hinhanh") %>' Width="100"/>
                       <asp:FileUpload runat="server" ID="anh"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Quê quán :
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtquequan"></asp:TextBox>  
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Mô tả thêm :
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtmotathem"></asp:TextBox>  
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
           <br />
        <div style="margin-left:50px;">
            <asp:Button runat="server" ID="btnThem" Text="Thêm Ca Sĩ" OnClick="btnThem_Click" />&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnBoqua" Text="Hủy bỏ" PostBackUrl="~/Views/BE/QLCaSi.aspx"/>
        </div>
            <br />
            <p>
                <asp:Label ID="msg" runat ="server" />
            </p>
            <br />

           <%-- <p>
                <asp:Button  ID="btn2" runat="server" Text="Danh sách ca sĩ" PostBackUrl="~/GUI/BackEnd/CaSi/DanhsachCS.aspx"/>
            </p>--%>
        </div>
</asp:Content>
