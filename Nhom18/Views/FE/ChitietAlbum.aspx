<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="ChitietAlbum.aspx.cs" Inherits="Nhom18.Views.FE.ChitietAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
         <h2 style="margin-bottom:20px;">Danh sách bài hát</h2>
          <asp:DataList runat="server" ID="datalistbaihatalbum">
            <ItemTemplate>           
                <div style="margin-bottom:30px;">
                     <a href='<%# "ChiTietBaiHat.aspx?Id="+Eval("mabaihat")%>'>
                        <asp:Label runat="server" ID="tenbaihatlabel" Text='<%# Eval("tenbaihat") %>'></asp:Label>
                    </a>
                </div>
               <br />
               
            </ItemTemplate>            
        </asp:DataList>
</asp:Content>
