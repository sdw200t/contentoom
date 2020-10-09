<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Registration.aspx.vb" Inherits="contentoom.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Table ID="tNewUser" runat="server" Height="143px" Width="335px">
        <asp:TableRow runat="server">
            <asp:TableCell runat="server"> <asp:Label ID="lblLoginNew" runat="server" Text="Логин"></asp:Label>
</asp:TableCell>
            <asp:TableCell runat="server"> <asp:TextBox ID="tbLoginNew" runat="server"></asp:TextBox>
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server"> <asp:Label ID="lblPassNew" runat="server" Text="Пароль" ></asp:Label>
</asp:TableCell>
            <asp:TableCell runat="server"> <asp:TextBox ID="tbPassNew" runat="server" TextMode="Password"></asp:TextBox>
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server"> <asp:Label ID="lblPassRep" runat="server" Text="Повторить пароль"></asp:Label>
</asp:TableCell>
            <asp:TableCell runat="server"> <asp:TextBox ID="tbPassRep" runat="server" TextMode="Password"></asp:TextBox>
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server"> <asp:Label ID="lblName" runat="server" Text="Имя"></asp:Label>
</asp:TableCell>
            <asp:TableCell runat="server"> <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">
                        <asp:Button ID="btnReg" runat="server" Text="Зарегистрироваться" /></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">
                        <asp:LinkButton ID="lbEnter" runat="server">Вход</asp:LinkButton></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>
