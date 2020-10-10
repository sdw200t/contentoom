<%@ Page Title="Registration" Language="vb" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Registration.aspx.vb" Inherits="contentoom.Registration" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

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
            <asp:Button ID="btnNewRecordStoredProcedure" runat="server" Text="Добавление новой записи с помощью хранимой процедуры" />
       </div>
       <div class="row">
            <asp:LinkButton ID="lbEnter" runat="server">Вход</asp:LinkButton>
       </div>
    </div>

    <asp:Panel ID="pCode" runat="server" Visible="False">
        <asp:Label ID="lblCode" runat="server" Text="Код подтверждения"></asp:Label>
        <asp:TextBox ID="tbCode" runat="server"></asp:TextBox>
        <asp:Button ID="btnCode" runat="server" Text="Подтвердить" />
        <br />
        <br />
   </asp:Panel>

</asp:Content>


