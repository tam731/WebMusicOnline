<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="TheLoai.aspx.cs" Inherits="Nhom18.Views.FE.TheLoai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Nhaccuatui - Nghe nhạc mới HOT nhất, tải nhạc mp3 chất lượng cao
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <style>
        .linknut{
            font-size:20px;
            display:block;
            width:130px;
            height:30px;
            margin-left:20px;
            line-height:30px;
            text-align:center;
        }
        .linknut:hover{
            background-color:red;
            color:white;
            border-radius:5px;
        }
        .active{
            background-color:red;
        }
        .pltl{
            padding-left:30px;
            text-align:center;
        }
        h2{
            color:blue;
            text-transform:uppercase;
            margin-top:50px;
            margin-bottom:30px;
        }
    </style>
   
            <div>
                <h2>THỂ LOẠI</h2>
                <asp:DataList ID="datalisttheloai" DataKeyField="matheloai" runat="server" RepeatColumns="5" style="display:flex;">
                    <ItemTemplate>
                         <div>   
                             <a href='<%# "Theloai.aspx?Id="+Eval("matheloai")%>'>
                                 <asp:Label CssClass="linknut" runat="server" ID="tentheloaiLabel" Text='<%# Eval("tentheloai") %>'></asp:Label>
                             </a>
                         </div> 
                         <br />
                     </ItemTemplate>          
                </asp:DataList>              
                  <asp:DataList ID="datalistplaylist" DataKeyField="maplaylist" runat="server" RepeatColumns="5" style="display:flex;">
                    <ItemTemplate>
                         <div class="pltl"> 
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
            </div>
</asp:Content>
