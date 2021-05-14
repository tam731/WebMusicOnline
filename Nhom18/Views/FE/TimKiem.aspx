<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="Nhom18.Views.FE.TimKiem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Tìm kiếm
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">   
           <style>
            h2{
                color:blue;
                margin-top:50px;
                margin-bottom:30px;
            } 
            .dl{
                text-align:center;
                margin-right:50px;
            }
            .dl a{
                font-size:20px;
            }
            .dl a:hover{
                color:blue;
            }
            .tieude{
            color:white;
            text-transform:uppercase;
            font-size:25px;
            font-weight:bold;
            position:absolute;
            top:70px;
            left:40px;
        }
        .motathem{
            position:absolute;
            top:10px;
            left:330px;
            width:280px;        
            background-color:white;
            border:2px solid blue;
            z-index:999;
            padding:10px;
            display:none;
        }
        .motathem::before{
              content: "";
              position: absolute;
              bottom: 100px;
              left: -10px;
              border-right: 10px solid black;
              border-top: 10px solid transparent;
              border-bottom: 10px solid transparent;
        }
        a:hover~.motathem{
            display:block;
        }   
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
        .pl{
            text-align:center;  
            width:300px;
            margin-bottom:40px;
        }
    </style>
        <asp:DataList ID="datatimchude" runat="server">
            <ItemTemplate>
                 <h2>Chủ đề</h2>
                <div style="position:relative; width:350px">
                    <a href="ChiTietChuDe.aspx?ID=<%# Eval("machude") %>"><asp:Image ID="hinhanh" runat="server" ImageUrl='<%# "~/images/chude/" + Eval("hinhanh")%>' Width="320px" Height="150px" CssClass="anh"/></a>              
                    <asp:Label CssClass="motathem" ID="motathem" runat="server" Text='<%# Eval("motathem") %>'></asp:Label>                                
                </div>
                <br />
            </ItemTemplate>
        </asp:DataList>
          
          <asp:DataList ID="datatimcasi" runat="server">
            <ItemTemplate>
                 <h2>Ca sĩ</h2> 
                <div class="dl">    
                        <a href="ChitietCaSi.aspx?ID=<%# Eval("macasi") %>">
                            <asp:Image runat="server" ID="anh" ImageUrl='<%# "~/images/casi/" + Eval("hinhanh")%>' Width="202px" Height="202px"/>
                        </a> 
                        <br />
                         <a href="ChitietCaSi.aspx?ID=<%# Eval("macasi") %>">
                            <asp:Label runat="server" ID="labelten" Text='<%# Eval("tencasi") %>'></asp:Label>
                        </a>               
                </div>
            </ItemTemplate>
        </asp:DataList>

      
        <asp:DataList ID="datatimtheloai" runat="server">
            <ItemTemplate>
                  <h2>Thể loại</h2>
                        <div>   
                             <a href='<%# "Theloai.aspx?Id="+Eval("matheloai")%>'>
                                 <asp:Label CssClass="linknut" runat="server" ID="tentheloaiLabel" Text='<%# Eval("tentheloai") %>'></asp:Label>
                             </a>
                         </div> 
                         <br />
            </ItemTemplate>                     
            </asp:DataList>

       
        <asp:DataList ID="datatimplaylist" runat="server">
            <ItemTemplate>
                 <h2>PlayList</h2>
                  <div class="pl"> 
                             <a href='<%# "Chitietplaylist.aspx?Id="+Eval("maplaylist")%>'>
                                 <asp:Image runat="server" ID="Image1" ImageUrl='<%# "~/images/playlist/" + Eval("hinhanh")%>' Width="212px" Height="212px" />
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
                      </div>
                         <br />
            </ItemTemplate>
            </asp:DataList>

      
        <asp:DataList ID="datatimbaihat" runat="server">
            <ItemTemplate>
                  <h2>Bài Hát</h2>
                        <div class="dsbh">
                             <a href='<%# "ChiTietBaiHat.aspx?Id="+Eval("mabaihat")%>'><asp:Image runat="server" ID="anh" ImageUrl='<%# "~/images/baihat/" + Eval("hinhanh") %>'/></a>
                             <div class="info1">
                                 <a href='<%# "ChiTietBaiHat.aspx?Id="+Eval("mabaihat")%>'>
                                     <asp:Label runat="server" Text='<%# Eval("tenbaihat") %>'></asp:Label></a> 
                                 <br />
                                  <a href='<%# "ChiTietCaSi.aspx?Id="+Eval("mabaihat")%>' style="opacity:0.6">
                                     <asp:Label runat="server" Text='<%# Eval("tacgia") %>'></asp:Label>
                                     </a>
                             </div>                                                                                         
                         </div>   
                         <br />  
            </ItemTemplate>
                   
        </asp:DataList>

           
      <asp:DataList ID="datatimalbum" runat="server">
            <ItemTemplate>
                   <h2>Album</h2>  
                <div class="dsab">
                         <a href='<%# "Album.aspx?Id="+Eval("maalbum")%>' >
                             <asp:Image runat="server" ID="anh" ImageUrl='<%# "~/images/album/" + Eval("hinhanh") %>'/>
                         </a>
                         <br />
                         <a href='<%# "Album.aspx?Id="+Eval("maalbum")%>'>
                            <asp:Label runat="server" Text='<%# Eval("tenalbum") %>'></asp:Label>
                         </a>
             </div>           
            </ItemTemplate>
        </asp:DataList>
</asp:Content>
