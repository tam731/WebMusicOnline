<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="ThemCaSiAB.aspx.cs" Inherits="Nhom18.Views.BE.ThemCaSiAB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Thêm ca sĩ- album
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung1" runat="server">
        <ul>
            <li>
                <a href="DSCaSiAB.aspx">Danh sách ca sĩ-album</a>
            </li>
             <li>
                <a href="ThemCaSiAB.aspx">Thêm ca sĩ-album</a>
            </li>
             <li>
                <a href="SuaCaSiAB.aspx">Sửa ca sĩ-album</a>
            </li>
        </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="noidung2" runat="server">
         <div>
            <h4>Thêm ca sĩ -album</h4>
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
                       Mã album:
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtalbum"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
           <br />
        <div style="margin-left:50px;">
            <asp:Button runat="server" ID="btnThem" Text="Thêm" OnClick="btnThem_Click" />&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnBoqua" Text="Hủy bỏ" PostBackUrl="~/Views/BE/QLCaSiAB.aspx"/>
        </div>
            <br />
            <p>
                <asp:Label ID="msg" runat ="server" />
            </p>
            <br />
        </div>
</asp:Content>
