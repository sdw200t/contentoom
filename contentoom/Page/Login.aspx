<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Login.aspx.vb" Inherits="contentoom.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Table ID="tEnterUser" runat="server" Height="143px" Width="335px">
        <asp:TableRow runat="server">
            <asp:TableCell runat="server"> <asp:Label ID="lblLogin" runat="server" Text="Логин"></asp:Label>
</asp:TableCell>
            <asp:TableCell runat="server"> <asp:TextBox ID="tbLogin" runat="server"></asp:TextBox>
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server"> <asp:Label ID="lblPass" runat="server" Text="Пароль"></asp:Label>
</asp:TableCell>
            <asp:TableCell runat="server"> <asp:TextBox ID="tbPass" runat="server" TextMode="Password"></asp:TextBox>
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">
                        <asp:Button ID="btnEnter" runat="server" Text="Войти" /></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">
                        <asp:LinkButton ID="lbRegistration" runat="server">Регистрация</asp:LinkButton></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>
