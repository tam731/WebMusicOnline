<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="ThemCaSiBH.aspx.cs" Inherits="Nhom18.Views.BE.ThemCaSiBH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Thêm ca sĩ -bài hát
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung1" runat="server">
         <ul>
            <li>
                <a href="DSCaSiBH.aspx">Danh sách ca sĩ-bài hát</a>
            </li>
             <li>
                <a href="ThemCaSiBH.aspx">Thêm ca sĩ-bài hát</a>
            </li>
             <li>
                <a href="SuaCaSiBH.aspx">Sửa ca sĩ-bài hát</a>
            </li>
        </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="noidung2" runat="server">
        <div>
            <h4>Thêm ca sĩ -bài hát</h4>
            <br />
            <asp:Table runat="server" ID="tblds">
                <asp:TableRow>
                    <asp:TableCell>
                       Mã ca sĩ:
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtcasi"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                       Mã bài hát:
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtbaihat"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
           <br />
        <div style="margin-left:50px;">
            <asp:Button runat="server" ID="btnThem" Text="Thêm" OnClick="btnThem_Click" />&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnBoqua" Text="Hủy bỏ" PostBackUrl="~/Views/BE/QLCaSiBH.aspx"/>
        </div>
            <br />
            <p>
                <asp:Label ID="msg" runat ="server" />
            </p>
            <br />
        </div>
</asp:Content>
