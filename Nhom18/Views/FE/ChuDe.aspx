<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="ChuDe.aspx.cs" Inherits="Nhom18.Views.FE.ChuDe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Nhaccuatui - Nghe nhạc mới HOT nhất, tải nhạc mp3 chất lượng cao
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <style>
        h2{
            margin-bottom:30px;
            margin-top:30px;
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
            top:-60px;
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
    </style>
    <div style="margin-bottom:100px;">
        <h2>CHỦ ĐỀ</h2>
        <asp:DataList style="display:flex;" ID="datalistchude" runat="server" DataKeyField="machude" RepeatColumns="3">
            <ItemTemplate>
                <div style="position:relative; width:350px">
                    <a href="ChiTietChuDe.aspx?ID=<%# Eval("machude") %>"><asp:Image ID="hinhanh" runat="server" ImageUrl='<%# "~/images/chude/" + Eval("hinhanh")%>' Width="320px" Height="150px" CssClass="anh"/></a>              
                    <asp:Label CssClass="motathem" ID="motathem" runat="server" Text='<%# Eval("motathem") %>'></asp:Label>                                
                </div>
                <br />
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
