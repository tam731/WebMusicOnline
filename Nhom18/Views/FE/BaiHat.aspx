<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="BaiHat.aspx.cs" Inherits="Nhom18.Views.FE.BaiHat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Nhaccuatui - Nghe nhạc mới HOT nhất, tải nhạc mp3 chất lượng cao    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <style>
        h2{
            text-transform:uppercase;
            color:blue;
            margin:50px 0px;
        }
        .bh1 .anh{
            width:60px;
            height:60px;
        }
        .bh1{
            position:relative;
            height:80px;
            width:500px;
        }
        .bh1 .info3{
            position:absolute;
            top:10px;
            left:80px;
            width:200px;            
        }
        .info3 a:hover{
            color:blue;
        }
    </style>
        <h2>Bài Hát</h2>
        <asp:DataList runat="server" ID="dalistbaihat">
            <ItemTemplate>
                <div class="bh1">
                    <a href="#">
                        <asp:Image runat="server" CssClass="anh" ID="anh" ImageUrl='<%# "~/images/baihat/" + Eval("hinhanh") %>'/>
                    </a>
                    <div class="info3">
                        <a href='<%# "ChiTietBaiHat.aspx?Id="+Eval("mabaihat")%>'>
                            <asp:Label runat="server" Text='<%# Eval("tenbaihat") %>' ></asp:Label>
                        </a>
                        <br />
                         <a href='<%# "ChiTietCaSi.aspx?Id="+Eval("mabaihat")%>' style="opacity:0.6">
                            <asp:Label runat="server" Text='<%# Eval("tacgia") %>'></asp:Label>
                        </a>
                    </div>                    
                </div> 
                <hr />
                <br />
               
               <%-- <audio runat="server" controls>
                  <source src='<%# "../../../audio/" + Eval("linkbaihat") %>' runat="server" type="audio/mpeg"/>                 
                </audio> --%>              
            </ItemTemplate>
            
        </asp:DataList>
</asp:Content>
