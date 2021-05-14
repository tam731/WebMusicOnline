<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="DSTheLoai.aspx.cs" Inherits="Nhom18.Views.BE.DSTheLoai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Danh sách thể loại
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung1" runat="server">
         <ul>
       <li>
           <a href="DSTheLoai.aspx">Danh sách thể loại</a>
       </li>
       <li>
           <a href="ThemTheLoai.aspx">Thêm thể loại</a>
       </li>
        <li>
           <a href="SuaTheLoai.aspx">Sửa thể loại</a>
       </li>
   </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="noidung2" runat="server">
    <h4>Danh sách thể loại</h4>
    <br />
    <asp:GridView runat="server" ID="GridView2" AutoGenerateColumns="false" Width="950">
        <Columns>
            <asp:BoundField HeaderText="Mã thể loại" DataField="matheloai"/>
            <asp:BoundField HeaderText="Tên thể loại" DataField="tentheloai"/>
            <asp:BoundField HeaderText="Hình ảnh" DataField="hinhanh"/>
               <asp:TemplateField HeaderText="Xóa">
                <ItemTemplate>
                    <asp:Button ID="xoa" runat="server" CommandName="xoa" 
                        CommandArgument='<%# Bind("matheloai") %>' OnCommand="xoa_Click" Text="Xóa"
                        OnClientClick="return confirm ('Bạn có muốn xóa thể loại này ?')"/>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Sửa">
                <ItemTemplate>
                    <asp:Button ID="sua" runat="server" CommandName="sua" 
                        CommandArgument='<%# Bind("matheloai") %>' Text="Sửa" OnCommand="sua_Click"
                       />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
