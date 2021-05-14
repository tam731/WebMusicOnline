<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="DSAlbum.aspx.cs" Inherits="Nhom18.Views.BE.DSAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Danh sách album
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung1" runat="server">
    <ul>
        <li>
            <a href="DSAlbum.aspx">Danh sách album</a>
        </li>
         <li>
            <a href="ThemAlbum.aspx">Thêm album</a>
        </li>
        <li>
            <a href="SuaAlbum.aspx">Sửa album</a>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="noidung2" runat="server">
    <h4>Danh sách album</h4>
    <br />
    <asp:GridView runat="server" ID="GridView2" AutoGenerateColumns="false" Width="900">
        <Columns>
            <asp:BoundField HeaderText="Mã album" DataField="maalbum"/>
            <asp:BoundField HeaderText="Tên album" DataField="tenalbum"/>
            <asp:BoundField HeaderText="Hình ảnh" DataField="hinhanh"/>
               <asp:TemplateField HeaderText="Xóa">
                <ItemTemplate>
                    <asp:Button ID="xoa" runat="server" CommandName="xoa" 
                        CommandArgument='<%# Bind("maalbum") %>' OnCommand="xoa_Click" Text="Xóa"
                        OnClientClick="return confirm ('Bạn có muốn xóa album này ?')"/>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Sửa">
                <ItemTemplate>
                    <asp:Button ID="sua" runat="server" CommandName="sua" 
                        CommandArgument='<%# Bind("maalbum") %>' Text="Sửa" OnCommand="sua_Click"
                       />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
