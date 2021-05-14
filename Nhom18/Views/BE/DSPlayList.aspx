<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="DSPlayList.aspx.cs" Inherits="Nhom18.Views.BE.DSPlayList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Playlist
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung1" runat="server">
     <ul>
        <li>
            <a href="DSPlayList.aspx">Danh sách playlist</a>
        </li>
         <li>
            <a href="ThemPlayList.aspx">Thêm playlist</a>
        </li>
        <li>
            <a href="SuaPlayList.aspx">Sửa playlist</a>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="noidung2" runat="server">
     <h4>Danh sách playlist</h4>
    <br />
    <asp:GridView runat="server" ID="GridView2" AutoGenerateColumns="false" Width="950">
        <Columns>
            <asp:BoundField HeaderText="Mã playlist" DataField="maplaylist"/>
            <asp:BoundField HeaderText="Tên playlist" DataField="tenplaylist"/>
            <asp:BoundField HeaderText="Người tạo" DataField="nguoitao"/>
            <asp:BoundField HeaderText="Hình ảnh" DataField="hinhanh" />
            <asp:BoundField HeaderText="Mã thể loại" DataField="matheloai" />
               <asp:TemplateField HeaderText="Xóa">
                <ItemTemplate>
                    <asp:Button ID="xoa" runat="server" CommandName="xoa" 
                        CommandArgument='<%# Bind("maplaylist") %>' OnCommand="xoa_Click" Text="Xóa"
                        OnClientClick="return confirm ('Bạn có muốn xóa playlist này ?')"/>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Sửa">
                <ItemTemplate>
                    <asp:Button ID="sua" runat="server" CommandName="sua" 
                        CommandArgument='<%# Bind("maplaylist") %>' Text="Sửa"  OnCommand="sua_Click"
                       />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
       
    </asp:GridView>
</asp:Content>
