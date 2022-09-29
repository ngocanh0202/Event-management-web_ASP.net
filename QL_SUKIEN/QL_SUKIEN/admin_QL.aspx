<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.Master" AutoEventWireup="true" CodeBehind="admin_QL.aspx.cs" Inherits="QL_SUKIEN.admin_QL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top:20px; margin-bottom:20px">
        Tìm kiếm mã sự kiện: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Static" ErrorMessage="Bắt buộc nhập"></asp:RequiredFieldValidator>-->
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ValidationExpression="^\d+" Display="Static" ErrorMessage="Bắt buộc phải nhập số"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="Tìm kiếm" OnClick="Button1_Click"/>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" RowStyle-Height="30px" Width="1140px" >
            <Columns>
                <asp:BoundField DataField="masukien" HeaderText="Mã Sự Kiện" />
                <asp:BoundField DataField="tensukien" HeaderText="Tên sự kiện" />
                <asp:BoundField DataField="ngaydienra" HeaderText="Ngày diễn ra" />
                <asp:BoundField DataField="ngayketthuc" HeaderText="Ngày kết thúc" />
                <asp:BoundField DataField="mota" HeaderText="Mô tả" />
            </Columns>
            <EmptyDataTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("masukien") %>'></asp:Label>
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("tensukien") %>' Font-Underline="false" Font-Bold="true"></asp:LinkButton>
                <br />
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("ngaydienra") %>'></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("ngayketthuc") %>'></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("mota") %>'></asp:Label>
            </EmptyDataTemplate>
            <RowStyle Height="30px"></RowStyle>
        </asp:GridView>
      </div>
</asp:Content>
