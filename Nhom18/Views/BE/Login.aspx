<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Nhom18.Views.BE.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Login
    </title>
    <style>
        div{
            border:1px solid black;
            position:absolute;
            top:50%;
            left:50%;
            transform:translate(-50%,-50%);
            width:400px;
            height:200px;
            padding:10px;
            text-align:center;
        }
        .nut{
            margin-top:20px;
            background-color:Highlight;
            color:white;
            padding:10px;
            font-size:16px;
            outline:none;
            border:none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Đăng nhập</h2>
            <table>
                <tr>
                    <td>
                        <label>Tên đăng nhập :</label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txttendangnhap"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Mật khẩu :</label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtmatkhau" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button runat="server" ID="btnlogin" Text="Đăng nhập" CssClass="nut" OnClick="btnlogin_Click"/>
        </div>
    </form>
</body>
</html>
