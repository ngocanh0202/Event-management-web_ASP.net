<%@ Page Title="" Language="C#" MasterPageFile="~/user_masterpage.Master" AutoEventWireup="true" CodeBehind="user_home.aspx.cs" Inherits="QL_SUKIEN.user_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        span{
            font-weight:bold;
            font-size:20px;
        }
        .cachdong{
            margin-bottom:10px;
        }
    </style>
    
    <div style="margin-left:280px; margin-top:20px">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "img/"+Eval("hinhanh") %>' />
                        </td>
                        <td >
                            <div style="margin-left:25px">
                                <span>Mã Nhân Viên: </span><asp:Label ID="Label1" runat="server" Text='<%# Eval("manhanvien") %>'></asp:Label>
                                <div class="cachdong"></div>
                                <br />
                                <span>Tên Nhân Viên: </span><asp:Label ID="Label2" runat="server" Text='<%# Eval("tennhanvien") %>'></asp:Label>
                                <div class="cachdong"></div>
                                <br />
                                <span>Năm Sinh: </span><asp:Label ID="Label3" runat="server" Text='<%# Eval("namsinh") %>'></asp:Label>
                                <div class="cachdong"></div>
                                <br />
                                <span>Quê Quán: </span><asp:Label ID="Label5" runat="server" Text='<%# Eval("quequan") %>'></asp:Label>
                                <div class="cachdong"></div>
                                <br />
                            </div>   
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <h1>Tên của một số sự kiện</h1>
    <script>
        $(document).ready(function () {
            $('.owl-carousel').owlCarousel({
                loop: true,
                margin: 10,
                nav: false,
                responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 1
                    },
                    1000: {
                        items: 1
                    }
                }
            })
        });
    </script>
    <style>
        p{
            font-weight:bold;
            font-size: 30px;
        }
    </style>
    <div class="owl-carousel owl-theme" style="margin-top:20px">
        <%for (int i = 0; i < dt.Rows.Count; i++)
            {%>
        <div class="item">
            <table style="width: 100%;">
                <tr>
                    <td>
                        <img src="img/<%=dt.Rows[i]["hinhanh"]%>" style="width:292.06px; Height:423.25px" />
                       
                    </td>
                    <td style="margin-left:10px">
                        <p><%=dt.Rows[i]["tensukien"] %></p>
                        <p><%=dt.Rows[i]["mota"] %></p>
                    </td>
                </tr>
             </table>
        </div>
        <%} %>
    </div>
</asp:Content>
