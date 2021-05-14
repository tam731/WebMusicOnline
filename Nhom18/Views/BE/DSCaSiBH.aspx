<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site2.Master" AutoEventWireup="true" CodeBehind="DSCaSiBH.aspx.cs" Inherits="Nhom18.Views.BE.DSCaSiBH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    danh sách ca sĩ-bài hát
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
     <h4>Danh sách ca sĩ-bài hát</h4>
    <br />
    <asp:GridView runat="server" ID="GridView2" AutoGenerateColumns="false" Width="950">
        <Columns>
            <asp:BoundField HeaderText="ID" DataField="id"/>
            <asp:BoundField HeaderText="Mã ca sĩ" DataField="macasi"/>
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
