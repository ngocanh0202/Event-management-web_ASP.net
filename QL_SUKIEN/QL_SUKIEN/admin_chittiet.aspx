<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.Master" AutoEventWireup="true" CodeBehind="admin_chittiet.aspx.cs" Inherits="QL_SUKIEN.admin_chittiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        span{
            font-weight:bolder;
            font-size:28px;
        }
    </style>
    <div style="margin-top:10px;margin-bottom:10px;text-align:center; margin-left:270px">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "img/"+Eval("hinhanh") %>' />
                        </td>
                        <td>
                            <div style="margin-left:10px">
                                <span>Mã sự kiện:</span><asp:Label ID="Label1" runat="server" Text='<%# Eval("masukien") %>' Font-Size="28px"></asp:Label>
                                <br />
                                <span>Tên sự kiện:</span><asp:Label ID="Label2" runat="server" Text='<%# Eval("tensukien") %>' Font-Size="28px"></asp:Label>
                                <br />
                                <span>Ngày diễn ra:</span><asp:Label ID="Label3" runat="server" Text='<%# Eval("ngaydienra") %>' Font-Size="28px"></asp:Label>
                                <br />
                                <span>Ngày kết thúc:</span><asp:Label ID="Label4" runat="server" Text='<%# Eval("ngayketthuc") %>' Font-Size="28px"></asp:Label>
                                <br />
                                <span>Mô tả:</span><asp:Label ID="Label5" runat="server" Text='<%# Eval("mota") %>'></asp:Label>
                            </div>
                        </td>
                    </tr>
                </table>
                <div>
                    <asp:Button ID="Button1" runat="server" Text="XÓA" OnClick="Button1_Click" CommandArgument='<%# Eval("masukien") %>' />
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
