<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="DSCaSi.aspx.cs" Inherits="Nhom18.Views.BE.DSCaSi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Quản lý ca sĩ
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
     <h4>Danh sách ca sĩ</h4>
    <br />
    <asp:GridView runat="server" ID="GridView2" AutoGenerateColumns="false" Width="950">
        <Columns>
            <asp:BoundField HeaderText="Mã ca sĩ" DataField="macasi"/>
            <asp:BoundField HeaderText="Tên ca sĩ" DataField="tencasi"/>
            <asp:BoundField HeaderText="Năm sinh" DataField="namsinh"/>
            <asp:BoundField HeaderText="Hình ảnh" DataField="hinhanh"/>
            <asp:BoundField HeaderText="Quê quán" DataField="quequan"/>
            <asp:BoundField HeaderText="Mô tả thêm" DataField="motathem"/>
            <asp:TemplateField HeaderText="Xóa">
                <ItemTemplate>
                    <asp:Button ID="xoa" runat="server" CommandName="xoa" 
                        CommandArgument='<%# Bind("Id") %>' OnCommand="xoa_Click" Text="Xóa"
                        OnClientClick="return confirm ('Bạn có muốn xóa ca sĩ này ?')"/>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Sửa">
                <ItemTemplate>
                    <asp:Button ID="sua" runat="server" CommandName="sua" 
                        CommandArgument='<%# Bind("Id") %>' Text="Sửa" OnCommand="sua_Click" 
                       />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
