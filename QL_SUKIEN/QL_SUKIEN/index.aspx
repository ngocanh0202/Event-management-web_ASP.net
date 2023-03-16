<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="QL_SUKIEN.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:LinkButton ID="LinkButton1" runat="server" Text="ADMIN" OnClick="LinkButton1_Click" Font-Size="30px" Font-Bold="true"></asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" Text="USER" OnClick="LinkButton2_Click" Font-Size="30px" Font-Bold="true"></asp:LinkButton>
        </div>
    </form>
</body>
</html>
