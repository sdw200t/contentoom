<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/template/empty/empty.Master" CodeBehind="index.aspx.vb" Inherits="contentoom.authLogin" %>
<asp:Content ID="Content4" ContentPlaceHolderID="title" runat="server">
    Вход
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolderEmpty" runat="server">
    <div class="auth-area">
		<div class="authform">

			<div class="auth_logo_m botmarg37">
				<img src="/img/logo-height.png">
			</div>

			<form name="Auth" method="post" target="_top" action="actio_url">

	<!--			Логин-->
				<div class="botmarg17">
					<div class="elem_name">Логин</div>
					<input type="text" class="input_text W400" name="USER_LOGIN" maxlength="255">
				</div>
			
	<!--			Пароль-->
				<div class="botmarg17">
					<div class="elem_name">Пароль</div>
					<input type="password" class="input_text W400" name="USER_PASSWORD" maxlength="255" autocomplete="off">
				</div>
			
	<!--			Запомнить меня на этом компьютере-->
				<div class="bx-authform-formgroup-container">
					<label class="bx-filter-param-label">
						<input type="checkbox" id="USER_REMEMBER" name="USER_REMEMBER" value="Y">
						<span class="bx-filter-param-text">Запомнить меня на этом компьютере</span>
					</label>
				</div>
			
	<!--			Забыли свой пароль?-->
				<noindex>
					<div class="auth_txt botmarg37">
						<a href="/page/auth/restore-password.aspx" rel="nofollow">Забыли свой пароль?</a>
					</div>
				</noindex>
			
			
			
	<!--			Зарегестрироваться/Войти-->
				<div class="auth_btn">
					<div>
						<a href="/page/auth/registration.aspx" rel="nofollow" class="button orange">ЗАРЕГЕСТРИРОВАТЬСЯ</a>
					</div>
					<input type="submit" class="button green W160" name="AUTH_ACTION" value="ВОЙТИ">
				</div>
			
			</form>
		</div>
	</div>
</asp:Content>