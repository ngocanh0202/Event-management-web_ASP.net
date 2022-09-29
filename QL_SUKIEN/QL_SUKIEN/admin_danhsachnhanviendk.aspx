<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.Master" AutoEventWireup="true" CodeBehind="admin_danhsachnhanviendk.aspx.cs" Inherits="QL_SUKIEN.admin_danhsachnhanviendk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top:20px; margin-bottom:20px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" RowStyle-Height="30px" Width="1140px" >
            <Columns>
                <asp:BoundField DataField="manhanvien" HeaderText="Mã Nhân Viên" />
                <asp:BoundField DataField="tennhanvien" HeaderText="Tên nhân viên" />
                <asp:BoundField DataField="namsinh" HeaderText="Năm sinh" />
                <asp:BoundField DataField="tensukien" HeaderText="Tên sự kiện" />
                <asp:BoundField DataField="mota" HeaderText="Mô tả" />
            </Columns>
            <EmptyDataTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("manhanvien") %>'></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("nhanvien") %>'></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("namsinh") %>'></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("tensukien") %>'></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("mota") %>'></asp:Label>
            </EmptyDataTemplate>
<RowStyle Height="30px"></RowStyle>

        </asp:GridView>
    </div>
</asp:Content>
