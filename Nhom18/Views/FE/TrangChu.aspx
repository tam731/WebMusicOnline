<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="Nhom18.Views.FE.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Nhaccuatui - Nghe nhạc mới HOT nhất, tải nhạc mp3 chất lượng cao
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <style>
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
        .dsab{
            width:300px;
            text-align:center;
            margin-left:-70px;
        }
        .dsab img{
            width:150px;
            height:100px;        
        }
    </style>
     <div class="main1">
        <div class="slideshow-container">
          <div class="mySlides fade">
            <img src="../../images/slideshow/pic1.jpg" style="width: 100%" />
          </div>
          <div class="mySlides fade">
            <img src="../../images/slideshow/pic2.jpg" style="width: 100%" />
          </div>
          <div class="mySlides fade">
            <img src="../../images/slideshow/pic3.jpg" style="width: 100%" />
          </div>
          <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
          <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        <br />
         <div style="text-align:center">
          <span class="dot" onclick="currentSlide(1)"></span> 
          <span class="dot" onclick="currentSlide(2)"></span> 
          <span class="dot" onclick="currentSlide(3)"></span> 
        </div>
        <div class="content1">
          <div class="left1">
            <div class="baihat" style="margin-bottom:50px;">
              <h2 style="margin-bottom:20px;">Bài hát</h2>
                  <asp:DataList ID="datalistbaihat" runat="server" RepeatColumns="2" style="display:flex;align-items:center">
                    <ItemTemplate>
                         <div class="dsbh">
                             <a href='<%# "ChiTietBaiHat.aspx?Id="+Eval("mabaihat")%>'><asp:Image runat="server" ID="anh" ImageUrl='<%# "~/images/baihat/" + Eval("hinhanh") %>'/></a>
                             <div class="info1">
                                 <a href='<%# "ChiTietBaiHat.aspx?Id="+Eval("mabaihat")%>'>
                                     <asp:Label runat="server" Text='<%# Eval("tenbaihat") %>'></asp:Label></a> 
                                 <br />   
                                 <a href='<%# "ChitietCaSi.aspx?Id="+Eval("mabaihat")%>'>
                                     <asp:Label Text='<%# Eval("tacgia") %>' style="opacity:0.6" runat="server">                                   
                                     </asp:Label>
                                 </a>                                                                       
                                 
                             </div>                                                                                         
                         </div>  
                               <hr /> 
                         <br />                      
                    </ItemTemplate>          
                 </asp:DataList>
            </div>
            <div class="theloai" style="margin-bottom:50px;" >
              <h2 style="margin-bottom: 20px;">Thể loại</h2>
                <asp:DataList ID="datalisttheloai" runat="server" RepeatColumns="4" style="display:flex;">
                 <ItemTemplate>
                     <div class="dstheloai" style="width:250px;">
                         <a href='<%# "Theloai.aspx?Id="+Eval("matheloai")%>'>
                             <asp:Image runat="server" ID="anh" ImageUrl='<%# "~/images/theloai/" + Eval("hinhanh") %>'/>
                         </a>
                     </div> 
                     <br />
                 </ItemTemplate>          
             </asp:DataList>
            </div>
            <div class="album">
              <h2 style="margin-bottom: 20px;">Album</h2>
                <asp:DataList ID="datalistalbum" runat="server" RepeatColumns="3" style="display:flex;">
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
                     <br />
                 </ItemTemplate>          
             </asp:DataList>
            </div>
          </div>
          <div class="right1">
            <h2 style="margin-bottom:20px;">Chủ đề</h2>
              <asp:DataList ID="datalistchude" runat="server">
                 <ItemTemplate>
                     <div>
                         <a href="ChiTietChuDe.aspx?ID=<%# Eval("machude") %>">
                             <asp:Image runat="server" ID="anh" ImageUrl='<%# "~/images/chude/" + Eval("hinhanh") %>' Height="120px"/>
                         </a>
                     </div> 
                     <br />
                 </ItemTemplate>              
             </asp:DataList>
          </div>
        </div>
      </div>
    
</asp:Content>
