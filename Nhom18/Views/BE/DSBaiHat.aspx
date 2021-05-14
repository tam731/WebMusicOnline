<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="DSBaiHat.aspx.cs" Inherits="Nhom18.Views.BE.DSBaiHat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Danh sách bài hát
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung1" runat="server">
    <ul>
        <li>
            <a href="DSBaiHat.aspx">Danh sách bài hát</a>
        </li>
         <li>
            <a href="ThemBaiHat.aspx">Thêm bài hát</a>
        </li>
        <li>
            <a href="SuaBaiHat.aspx">Sửa bài hát</a>
        </li>
    </ul>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="noidung2" runat="server">
     <h4>Danh sách bài hát</h4>
    <br />
    <asp:GridView runat="server" ID="GridView2" Width="900" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <Columns>
            <asp:BoundField HeaderText="Mã bài hát" DataField="mabaihat"/>
            <asp:BoundField HeaderText="Tên bài hát" DataField="tenbaihat"/>
            <asp:BoundField HeaderText="Hình ảnh" DataField="hinhanh" />
            <asp:BoundField HeaderText="Lời bài hát" DataField="loibaihat"/>
            <asp:BoundField HeaderText="Tác giả" DataField="tacgia"/>
            <asp:BoundField HeaderText="Thể loại" DataField="matheloai"/>
            <asp:BoundField HeaderText="Album" DataField="maalbum"/>
            <asp:BoundField HeaderText="Chủ đề" DataField="machude"/>
            <asp:BoundField HeaderText="Link bài hát" DataField="linkbaihat"/>

               <asp:TemplateField HeaderText="Xóa">
                <ItemTemplate>
                    <asp:Button ID="xoa" runat="server" CommandName="xoa" 
                        CommandArgument='<%# Bind("mabaihat") %>' OnCommand="xoa_Click" Text="Xóa"
                        OnClientClick="return confirm ('Bạn có muốn xóa bài hát này ?')"/>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Sửa">
                <ItemTemplate>
                    <asp:Button ID="sua" runat="server" CommandName="sua" 
                        CommandArgument='<%# Bind("mabaihat") %>' Text="Sửa"  OnCommand="sua_Click"
                       />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>     
    </asp:GridView>
   
</asp:Content>
