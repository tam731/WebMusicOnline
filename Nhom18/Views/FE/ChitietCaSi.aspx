<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="ChitietCaSi.aspx.cs" Inherits="Nhom18.Views.FE.ChitietCaSi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <style>
        .dsbh img{
            width:60px;
            height:60px;
        }
        .dsbh{
            width:350px;
            position:relative;
        }
        .dsbh .info1{
            position:absolute;
            top:8px;
            left:70px;
        }
        .dsbh .info1 a:hover{
            color:blue;
        }
        h2{
            margin:20px 0px;
        }
        .dsab img{
            width:152px;
            height:152px;
        }
        .dsab{
            width:300px;
            margin-bottom:20px;
        }
    </style>
   
    <asp:DataList runat="server" ID="datalistchitietcasi">
        <ItemTemplate>
            <div>
                 <asp:Image runat="server" ID="anh" ImageUrl='<%# "~/images/casi/" + Eval("hinhanh")%>' Width="700px" Height="400px"/>
                   <h2>Tiểu sử:</h2>
                  <asp:Label runat="server" Text='<%# Eval("motathem") %>'></asp:Label>          
            </div>
        </ItemTemplate>
    </asp:DataList>
    <h2>Bài hát :</h2>   
    <asp:DataList runat="server" ID="datalistcsbh">
        <ItemTemplate>                           
                         <div class="dsbh">
                             <a href='<%# "ChiTietBaiHat.aspx?Id="+Eval("mabaihat")%>'><asp:Image runat="server" ID="anh" ImageUrl='<%# "~/images/baihat/" + Eval("hinhanh") %>'/></a>
                             <div class="info1">
                                 <a href='<%# "ChiTietBaiHat.aspx?Id="+Eval("mabaihat")%>'>
                                     <asp:Label runat="server" Text='<%# Eval("tenbaihat") %>'></asp:Label></a> 
                                 <br />
                                 <a href='<%# "ChitietCaSi.aspx?Id="+Eval("macasi")%>' style="opacity:0.6"><asp:Label runat="server" Text='<%# Eval("tacgia") %>'></asp:Label></a>
                             </div>                                                                                         
                         </div>   
                         <br />             
        </ItemTemplate>
    </asp:DataList>
    <h2>Album:</h2> 
    <asp:DataList runat="server" ID="datalistcsab" RepeatColumns="3">
        <ItemTemplate>
             <div class="dsab">
                         <a href='<%# "ChitietAlbum.aspx?Id="+Eval("maalbum")%>' >
                             <asp:Image runat="server" ID="anh" ImageUrl='<%# "~/images/album/" + Eval("hinhanh") %>'/>
                         </a>
                         <br />
                         <a href='<%# "ChitietAlbum.aspx?Id="+Eval("maalbum")%>'>
                            <asp:Label runat="server" Text='<%# Eval("tenalbum") %>'></asp:Label>
                         </a>
             </div> 
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
