<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/template/app/app.Master" CodeBehind="TestCapcha.aspx.vb" Inherits="contentoom.TestCapcha" %>
<%@Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="BotDetect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderApp" runat="server">

   <%-- captcha --%>
    <form id="formCaptcha" runat="server">
        <BotDetect:WebFormsCaptcha ID="ExampleCaptcha" runat="server" UserInputID="CaptchaCodeTextBox" />
        <asp:TextBox ID="CaptchaCodeTextBox" runat="server" />
        <asp:Button ID="CheckBot" runat="server" Text="Проверить" />
    </form>
    <%-- captcha --%>

</asp:Content>
