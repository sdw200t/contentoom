<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Login.aspx.vb" Inherits="contentoom.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
    <div class ="Table">
        <div class="row">
            <div class ="cell" >
                <asp:Label ID="lblLogin" runat="server" Text="Логин" /> 
                <asp:TextBox ID="tbLogin" runat="server"/>
            </div>
        </div>
        <div class="row">
            <div class ="cell">
                <asp:Label ID="lblPass" runat="server" Text="Пароль"/> 
                <asp:TextBox ID="tbPass" runat="server" TextMode="Password"/>
            </div>
        </div>
        <div class="row">
            <div class ="cell">
                <asp:Button ID="btnEnter" runat="server" Text="Войти" />
            </div>
        </div>
        <div class="row">
            <div class ="cell">
                <asp:LinkButton ID="lbRegistration" runat="server">Регистрация</asp:LinkButton>
            </div>
        </div>
    </div>


</asp:Content>
