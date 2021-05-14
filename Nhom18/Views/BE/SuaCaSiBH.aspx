<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="SuaCaSiBH.aspx.cs" Inherits="Nhom18.Views.BE.SuaCaSiBH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Sửa ca sĩ - bài hát
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
            <h4>Sửa ca sĩ -bài hát</h4>
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
                       Mã bài hát:
                    </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtbaihat"></asp:TextBox>
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
