<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangky.aspx.cs" Inherits="Nhom18.Views.BE.Dangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký</title>
    <style>
        div{
            border:1px solid black;
            position:absolute;
            top:50%;
            left:50%;
            transform:translate(-50%,-50%);
            width:600px;
            height:300px;
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
            <h2>Đăng ký mới</h2>
            <table>
                <tr>
                    <td>
                        <label >Tên đăng nhập :</label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="tendangnhap" Width="117px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rtendangnhap" runat="server" ControlToValidate="tendangnhap"
                            ErrorMessage="Bạn cần nhập tên đăng nhập" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Mật khẩu :</label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="matkhau" TextMode="Password"></asp:TextBox>
                        <asp:RegularExpressionValidator runat="server" ID="rmatkhau" ControlToValidate="matkhau"
                            ErrorMessage="Bạn cần nhập tối thiểu 5 kí tự" ForeColor="Red" ValidationExpression=".{5,}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <label>Nhập lại mật khẩu :</label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="rematkhau" TextMode="Password" style="margin-left: 0px"></asp:TextBox>
                        <asp:CompareValidator runat="server" ID="rrmatkhau" ControlToValidate="rematkhau" ControlToCompare="matkhau"
                            ErrorMessage="Bạn nhập mật khẩu chưa khớp" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Email:</label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="email"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="remail" runat="server" ForeColor="Red" ControlToValidate="email" ErrorMessage="Bạn cần phải nhật đúng định dạng email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
            <asp:Button runat="server" ID="btndangky" Text="Đăng ký" CssClass="nut" OnClick="btndangky_Click" />
            <asp:Button runat="server" ID="btndangnhap" Text="Đăng nhập" CssClass="nut" OnClick="btndangnhap_Click" />

        </div>
         <br />
        <p>
           <asp:Label ID="msg" runat ="server" />
        </p>
    </form>
   
</body>
</html>
