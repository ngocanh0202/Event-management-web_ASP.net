<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.Master" AutoEventWireup="true" CodeBehind="admin_themsk.aspx.cs" Inherits="QL_SUKIEN.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div >
        <table style="width: 100%; margin-left: 240px;margin-top: 40px;">
            <tr>
                <td style="width: 300px;">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/add.png"/>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td>
                    <span style="margin-right:30px">Mã sự kiện:</span><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Bắt buộc nhập"></asp:RequiredFieldValidator>-->
                    <br />
                    <br />
                    <span style="margin-right:25px">Tên sự kiện:</span><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="Bắt buộc nhập"></asp:RequiredFieldValidator>-->
                    <br />
                    <br />
                    <span style="margin-right:20px">Ngày diễn ra:</span><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" runat="server" ErrorMessage="Bắt buộc nhập"></asp:RequiredFieldValidator>-->
                    <br />
                    <br />
                    <span style="margin-right:13.5px">Ngày kết thúc:</span><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox4" runat="server" ErrorMessage="Bắt buộc nhập, trong trường hợp không biết ngày kết thúc hãy nhập 'không biết'"></asp:RequiredFieldValidator>-->
                    <br />
                    <br />
                    <span style="margin-right:63px;">Mô tả:</span><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox5" runat="server" ErrorMessage="Bắt buộc nhập"></asp:RequiredFieldValidator>-->
                </td>
            </tr>
         </table>
        <div style="margin-left: 512px;margin-top: 30px;">
            <asp:Button ID="Button1" runat="server" Width="100px" Height="40px" Text="THÊM" BackColor="Red" ForeColor="White" BorderStyle="Inset" OnClick="Button1_Click"/>
        </div>
    </div>
</asp:Content>
