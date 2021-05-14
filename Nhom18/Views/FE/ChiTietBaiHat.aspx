<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="ChiTietBaiHat.aspx.cs" Inherits="Nhom18.Views.FE.ChiTietBaiHat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
   Chi tiết bài hát
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <style>
       
        audio{
            margin-top:30px;
            width:400px;
            height:60px;
            margin-bottom:60px;
        }
        .spanbh{
            font-size:20px;
            font-weight:bold;
        }
    </style>
    <asp:DataList runat="server" ID="datalistchitietbaihat">
        <ItemTemplate>
            <div style="margin:50px 0px;">
            <asp:Image runat="server" ID="anh" ImageUrl='<%# "~/images/baihat/" + Eval("hinhanh")%>' Width="500px" Height="260px"/>

                <h2>          
                    <asp:Label runat="server" Text='<%# Eval("tenbaihat") %>'></asp:Label> - &nbsp;
                    <asp:Label runat="server" Text='<%# Eval("tacgia") %>'></asp:Label>
                </h2>

                <div class="audio">
                    <audio runat="server" controls>
                      <source src='<%# "../../../audio/" + Eval("linkbaihat") %>' runat="server" type="audio/mpeg"/>                 
                    </audio> 
                </div>
                <div style="border:1px solid black;width:500px;">
                    <span class="spanbh">Lời bài hát :</span>
                    <asp:Label runat="server" Text='<%# Eval("tenbaihat") %>'></asp:Label>
                    <br />
                    <span class="spanbh">Nhạc sĩ :</span>
                    <asp:Label runat="server" Text='<%# Eval("tacgia") %>'></asp:Label>
                    <hr />
                    
                    <br />
                    <asp:Label runat="server" Text='<%# Eval("loibaihat") %>'></asp:Label>

                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
