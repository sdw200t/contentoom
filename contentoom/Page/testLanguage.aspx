<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/template/app/app.Master" CodeBehind="testLanguage.aspx.vb" Inherits="contentoom.testLanguage" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderApp" runat="server">
    <form runat ="server">
        <asp:DropDownList ID="DropDownList1" runat="server" meta:resourcekey="DropDownList1Resource1">
            <asp:ListItem meta:resourcekey="ListItemResource1" Value="ru">Русский</asp:ListItem>
            <asp:ListItem meta:resourcekey="ListItemResource2" Value="en">Английский</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Button" meta:resourcekey="Button1Resource1" />
        <asp:Label ID="Label1" runat="server" Text="Label" meta:resourcekey="LableName"></asp:Label>
    </form>
</asp:Content>
