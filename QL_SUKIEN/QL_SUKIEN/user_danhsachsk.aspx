<%@ Page Title="" Language="C#" MasterPageFile="~/user_masterpage.Master" AutoEventWireup="true" CodeBehind="user_danhsachsk.aspx.cs" Inherits="QL_SUKIEN.user_danhsachsk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        span{
            font-weight:bold;
        }
    </style>
    <div style="margin-top:10px"></div>
    Tìm kiếm mã sự kiện:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button2" runat="server" Text="tìm kiếm" OnClick="Button2_Click"/>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="2">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td style="width: 325px;">
                        <asp:Image ID="Image1" runat="server" Width="292.06" Height="423.25" ImageUrl='<%# "img/"+Eval("hinhanh") %>' /></td>
                    <td>
                        <div>
                            <span>Mã sự kiện: </span><asp:Label ID="Label1" runat="server" Text='<%# Eval("masukien") %>' Font-Bold="false"></asp:Label>
                            <br />
                            <span>Tên sự kiện: </span><asp:Label ID="Label2" runat="server" Text='<%# Eval("tensukien") %>' Font-Bold="false"></asp:Label>
                            <br />
                            <span>Ngày diễn ra: </span><asp:Label ID="Label3" runat="server" Text='<%# Eval("ngaydienra") %>' Font-Bold="false"></asp:Label>
                            <br />
                            <span>Ngày kết thúc: </span><asp:Label ID="Label4" runat="server" Text='<%# Eval("ngayketthuc") %>' Font-Bold="false"></asp:Label>
                            <br />
                            <span>Mô tả: </span><asp:Label ID="Label5" runat="server" Text='<%# Eval("mota") %>' Font-Bold="false"></asp:Label>
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Đăng ký" OnClick="Button1_Click" BackColor="Red" ForeColor="White" CommandArgument='<%# Eval("masukien") %>'/>
                        </div>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
