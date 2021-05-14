<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="PlayList.aspx.cs" Inherits="Nhom18.Views.FE.PlayList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Nhaccuatui - Nghe nhạc mới HOT nhất, tải nhạc mp3 chất lượng cao
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <style>
        h2{
            color:blue;
            text-transform:uppercase;
            margin-top:50px;
            margin-bottom:30px;
        }
        .pl{
            text-align:center;  
            width:300px;
            margin-bottom:40px;
        }
    </style>
                <h2>Playlist</h2>
                <asp:DataList ID="datalistplaylist" DataKeyField="maplaylist" runat="server" RepeatColumns="4" style="display:flex;">
                    <ItemTemplate>
                         <div class="pl"> 
                             <a href='<%# "Chitietplaylist.aspx?Id="+Eval("maplaylist")%>'>
                                 <asp:Image runat="server" ID="anh" ImageUrl='<%# "~/images/playlist/" + Eval("hinhanh")%>' Width="212px" Height="212px" />
                             </a>
                             <br />
                             <a href='<%# "Chitietplaylist.aspx?Id="+Eval("maplaylist")%>'>
                                 <asp:Label runat="server" ID="tenplaylistLabel" Text='<%# Eval("tenplaylist") %>'></asp:Label>
                             </a>
                             <br />
                             <span style="opacity:0.6">Tạo bởi :
                                 <a href='<%# "Chitietplaylist.aspx?Id="+Eval("maplaylist")%>'><asp:Label runat="server" ID="nguoitaolabel" Text='<%# Eval("nguoitao") %>'></asp:Label>
                                  </a>
                             </span>                            
                         <br />
                     </ItemTemplate>          
                </asp:DataList>
</asp:Content>
