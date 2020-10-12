<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Test.aspx.vb" Inherits="contentoom._Default" EnableSessionState="True" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">
        <div class="col-md-4">
            <asp:Button ID="btnReadUsers" runat="server" Text="Прочитать пользователей" />
            &nbsp;<asp:DropDownList ID="dlUsers" runat="server" Width="199px"> 
            </asp:DropDownList>
            <br />
            <asp:Button ID="btnReadGroup" runat="server" Text="Прочитать группы пользователей" />
            &nbsp;<asp:DropDownList ID="dlGroup" runat="server" Width="184px">
            </asp:DropDownList>
            <br />
<%--<div id="dvCaptcha">
</div>
<asp:TextBox ID="txtCaptcha" runat="server" Style="display: none" />
<asp:RequiredFieldValidator ID="rfvCaptcha" ErrorMessage="Captcha validation is required." ControlToValidate="txtCaptcha"
    runat="server" ForeColor="Red" Display="Dynamic" />
<br />
<br />
<asp:Button ID="btnSubmit" Text="Submit" runat="server" />--%>
            <br />
            <asp:Button ID="Button2" runat="server" Text="ОткрытьСтраницуРегистарции" />
            <asp:Button ID="Button3" runat="server" Text="ОткрытьСтраницуВхода" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="отправить письмо" />
            <asp:Button ID="Button4" runat="server" Text="Проверить сложность пароля" />
            <br />

        </div>
        <div class="col-md-4">
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
                </asp:TableRow>           </asp:Table>
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
                </asp:TableRow>            </asp:Table>
            <br />
            
        </div>    
    </div>
    </asp:Content>
