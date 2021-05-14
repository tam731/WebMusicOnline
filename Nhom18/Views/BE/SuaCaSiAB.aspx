<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="SuaCaSiAB.aspx.cs" Inherits="Nhom18.Views.BE.SuaCaSiAB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Sửa ca sĩ- album
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
            <h4>Sửa ca sĩ -album</h4>
            <br />
            <asp:Table runat="server" ID="tblds">
                <asp:TableRow>
                    <asp:TableCell>
                       ID:
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtid" Enabled="false"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
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
          <asp:Button ID="btnSua" runat="server" Text="Cập nhật" OnClick="btnSua_Click"/>
            <br />
            <p>
                <asp:Label ID="msg" runat="server"></asp:Label>
            </p>
        </div>
</asp:Content>
