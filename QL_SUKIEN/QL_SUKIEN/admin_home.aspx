<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.Master" AutoEventWireup="true" CodeBehind="admin_home.aspx.cs" Inherits="QL_SUKIEN.admin_home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:20px"></div>
    <asp:Label ID="Label1" runat="server" Text="" Font-Size="30px" Font-Bold="true"></asp:Label>
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
