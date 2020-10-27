<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/template/empty/empty.Master" CodeBehind="confirm-registration.aspx.vb" Inherits="contentoom.authConfirmRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Подтверждение регистрации
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderEmpty" runat="server">
    <div class="auth-area">
		<div class="authform">
            <div class="elem_name">Код подтверждения:</div>
            <input type="text" class="input_text W400" id="confirm" />
        </div>
    </div>
</asp:Content>
