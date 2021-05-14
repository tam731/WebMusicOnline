<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="DSPlaylistBH.aspx.cs" Inherits="Nhom18.Views.BE.DSPlaylistBH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung1" runat="server">
        <ul>
            <li>
                <a href="DSPlaylistBH.aspx">Danh sách playlist-baihat</a>
            </li>
             <li>
                <a href="ThemPlaylistBH.aspx">Thêm playlist-baihat</a>
            </li>
             <li>
                <a href="SuaPlaylistBH.aspx">Sửa playlist-bài hát</a>
            </li>
        </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="noidung2" runat="server">
    <h4>Danh sách playlist-bài hát</h4>
    <br />
    <asp:GridView runat="server" ID="GridView2" AutoGenerateColumns="false" Width="950">
        <Columns>
            <asp:BoundField HeaderText="ID" DataField="id"/>
            <asp:BoundField HeaderText="Mã playlist" DataField="maplaylist"/>
            <asp:BoundField HeaderText="Mã bài hát" DataField="mabaihat"/>
               <asp:TemplateField HeaderText="Xóa">
                <ItemTemplate>
                    <asp:Button ID="xoa" runat="server" CommandName="xoa" 
                        CommandArgument='<%# Bind("id") %>' OnCommand="xoa_Click" Text="Xóa"
                        OnClientClick="return confirm ('Bạn có muốn xóa ?')"/>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Sửa">
                <ItemTemplate>
                    <asp:Button ID="sua" runat="server" CommandName="sua" 
                        CommandArgument='<%# Bind("id") %>' Text="Sửa"  OnCommand="sua_Click"
                       />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
       
    </asp:GridView>
</asp:Content>
