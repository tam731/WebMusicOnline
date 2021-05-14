<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="DSChuDe.aspx.cs" Inherits="Nhom18.Views.BE.DSChuDe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Danh sách chủ đề
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung1" runat="server">
     <ul>
        <li>
            <a href="DSChuDe.aspx">Danh sách chủ đề</a>
        </li>
         <li>
            <a href="ThemChuDe.aspx">Thêm chủ đề</a>
        </li>
        <li>
            <a href="SuaChuDe.aspx">Sửa chủ đề</a>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="noidung2" runat="server">
    <h4>Danh sách chủ đề</h4>
    <br />
    <asp:GridView runat="server" ID="GridView2" AutoGenerateColumns="false" Width="950" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <Columns>
            <asp:BoundField HeaderText="Mã chủ đề" DataField="machude"/>
            <asp:BoundField HeaderText="Tên chủ đề" DataField="tenchude"/>
            <asp:BoundField HeaderText="Mô tả thêm" DataField="motathem"/>
            <asp:BoundField HeaderText="Hình ảnh" DataField="hinhanh" />
               <asp:TemplateField HeaderText="Xóa">
                <ItemTemplate>
                    <asp:Button ID="xoa" runat="server" CommandName="xoa" 
                        CommandArgument='<%# Bind("machude") %>' OnCommand="xoa_Click" Text="Xóa"
                        OnClientClick="return confirm ('Bạn có muốn xóa chủ đề này ?')"/>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Sửa">
                <ItemTemplate>
                    <asp:Button ID="sua" runat="server" CommandName="sua" 
                        CommandArgument='<%# Bind("machude") %>' Text="Sửa"  OnCommand="sua_Click"
                       />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
       
    </asp:GridView>
</asp:Content>
