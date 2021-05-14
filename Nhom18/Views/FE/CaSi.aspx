<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="CaSi.aspx.cs" Inherits="Nhom18.Views.FE.CaSi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
   Nhaccuatui - Nghe nhạc mới HOT nhất, tải nhạc mp3 chất lượng cao
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

    </style>
    <div>
        <h2>NGHỆ SĨ</h2>
        <asp:DataList runat="server" ID="datalistcasi" RepeatColumns="5" style="display:flex" >
            <ItemTemplate>
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
    </div>
</asp:Content>
