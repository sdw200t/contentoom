<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Registration.aspx.vb" Inherits="contentoom.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class ="Table">
        <div class="row">
            <div class ="cell" >
                <asp:Label ID="lblLoginNew" runat="server" Text="Логин" />
                <asp:TextBox ID="tbLoginNew" runat="server" />
            </div>
        </div>
        <div class="row">
            <div class ="cell" >
                <asp:Label ID="lblPassNew" runat="server" Text="Пароль" />
                <asp:TextBox ID="tbPassNew" runat="server" TextMode="Password" />
            </div>
        </div>
       <div class="row">
            <div class ="cell" >
                <asp:Label ID="lblPassRep" runat="server" Text="Повторить пароль" />
                <asp:TextBox ID="tbPassRep" runat="server" TextMode="Password" />
            </div>
       </div>
       <div class="row">
            <div class ="cell" >
                <asp:Label ID="lblName" runat="server" Text="Имя" />
                <asp:TextBox ID="tbName" runat="server" />
            </div>
       </div>
       <div class="row">
            <asp:Button ID="btnReg" runat="server" Text="Зарегистрироваться" />
       </div>
       <div class="row">
            <asp:LinkButton ID="lbEnter" runat="server">Вход</asp:LinkButton>
       </div>
    </div>


</asp:Content>


