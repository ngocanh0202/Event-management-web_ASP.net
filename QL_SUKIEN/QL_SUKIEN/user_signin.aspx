<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_signin.aspx.cs" Inherits="QL_SUKIEN.user_signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="content/bootstrap.min.css" rel="stylesheet" />
    <style>
        .container{
            text-align:center;
            margin-top: 80px;
        }
        .sign_in{
            border:1px solid black;
            padding:20px;
            margin-bottom: 20px;
            padding-left: 430px;
        }
        .line_text{
            position: relative;
            top: 11px;
            background: white;
            width: 200px;
            left: 14px;
            font-weight: bolder;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="line_text">
                ĐĂNG NHẬP NHÂN VIÊN
            </div>
            <div class="sign_in">
                <asp:Login ID="Login1" runat="server" UserNameLabelText="Tên đăng nhập:" PasswordLabelText="Mật khẩu:" LoginButtonText="Đăng Nhập" TitleText="" RememberMeText="Ghi Nhớ" OnAuthenticate="Login1_Authenticate"></asp:Login>
            </div>
        </div>
    </form>
</body>
</html>
