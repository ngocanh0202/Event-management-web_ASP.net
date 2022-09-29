<%@ Page Title="" Language="C#" MasterPageFile="~/user_masterpage.Master" AutoEventWireup="true" CodeBehind="user_chittietsk_new.aspx.cs" Inherits="QL_SUKIEN.user_chittietsk_new" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        span{
            font-weight:bold;
            font-size:20px;
        }
    </style>
    <div style="margin-top:10px;margin-bottom:10px;text-align:center; margin-left:270px">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "img/"+Eval("hinhanh") %>' />
                        </td>
                        <td style="margin-left:10px">
                            <span>Nhân viên </span><asp:Label ID="Label6" runat="server" Text='<%# Eval("tennhanvien") %>'></asp:Label><span> đã đăng ký</span>
                            <br />
                            <span>Tên sự kiện: </span><asp:Label ID="Label1" runat="server" Text='<%# Eval("tensukien") %>'></asp:Label>
                            <br />
                            <span>Mã sự kiện: </span><asp:Label ID="Label2" runat="server" Text='<%# Eval("masukien") %>' ></asp:Label>
                            <br />
                            <span>Ngày diễn ra: </span><asp:Label ID="Label3" runat="server" Text='<%# Eval("ngaydienra") %>'></asp:Label>
                            <br />
                            <span>Ngày kết thúc: </span><asp:Label ID="Label4" runat="server" Text='<%# Eval("ngayketthuc") %>'></asp:Label>
                            <br />
                            <span>Mô tả: </span><asp:Label ID="Label5" runat="server" Text='<%# Eval("mota") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="HỦY ĐĂNG KÝ" ForeColor="White" BackColor="Red" OnClick="Button1_Click" CommandArgument='<%# Eval("manhanvien") %>' />
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
