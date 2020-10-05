<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="contentoom._Default" EnableSessionState="True" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-4">
            <asp:Label ID="lblTimeOut" runat="server" Text="TimeOut"></asp:Label>
            <br />
            <asp:Label ID="LblUserName" runat="server" Text="Имя пользователя"></asp:Label>
            <asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnRegUser" runat="server" Text="Зарегистрировать пользователя" />
            <br />
            <br />
            <asp:ListBox ID="ListBox1" runat="server" Width="354px"></asp:ListBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Прочитать список пользователей" />
        </div>    
    </div>

</asp:Content>
