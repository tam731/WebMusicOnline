<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="ChiTietChuDe.aspx.cs" Inherits="Nhom18.Views.FE.ChiTietChuDe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <style>
        p{
            background-color:Highlight;
            padding:10px;
            color:white;
            font-size:16px;
            margin-top:-5px;
        }
        h2{
            margin-top:50px;
            margin-bottom:30px;
            text-transform:uppercase;
            color:blue;

        }
        .bh{
            height:30px;
            line-height:30px;
            width:400px;
        }
    </style>
    <div>
        <asp:DataList runat="server" ID="datalisttheochude">
            <ItemTemplate>
                <asp:Image runat="server" ID="anh" ImageUrl='<%# "~/images/chude/" + Eval("hinhanh")%>' Width="100%"/>
                <br />
                <p>
                    <asp:Label runat="server" ID="motathemlabel" Text='<%# Eval("motathem") %>'></asp:Label>
                </p>
                   <br />
            </ItemTemplate>
         
        </asp:DataList>
        <h2>Danh sách bài hát</h2>
          <asp:DataList runat="server" ID="datalistbaihattheochude">
            <ItemTemplate>
                <div class="bh">
                     <a href="#">
                        <asp:Label runat="server" ID="mabaihatlabel" Text='<%# Eval("mabaihat") %>'></asp:Label>.
                    </a>
                     <a href='<%# "ChiTietBaiHat.aspx?Id="+Eval("mabaihat")%>'>
                        <asp:Label runat="server" ID="tenbaihatlabel" Text='<%# Eval("tenbaihat") %>'></asp:Label>
                    </a>
                    <hr />
                </div>
               <br />
            </ItemTemplate>            
        </asp:DataList>
    </div>
</asp:Content>
