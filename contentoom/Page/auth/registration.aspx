<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/template/empty/empty.Master" CodeBehind="registration.aspx.vb" Inherits="contentoom.authRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Регистрация
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderEmpty" runat="server">
	<div class="regh-area">
		<div class="authform">
			<form method="post" action="<?=POST_FORM_ACTION_URI?>" name="regform" enctype="multipart/form-data">
		
				<div class="auth_logo_m botmarg37">
					<img src="/img/logo-height.png">
					<H1>РЕГИСТРАЦИЯ</H1>
				</div>
		
		<!--			Логин-->
				<div class="botmarg17">
					<div class="elem_name">Email</div>
					<input type="hidden" name="REGISTER[LOGIN]" id="registr_login">
					<input type="text" class="input_text W400" name="REGISTER[EMAIL]" id="registr_email">
				</div>
	
		<!--			Пароль-->
				<div class="botmarg17">
					<div class="elem_name">Пароль</div>
					<input type="password" class="input_text W400" name="REGISTER[PASSWORD]" autocomplete="off">
				</div>
		
		<!--			Подтверждение пароля-->
				<div class="botmarg17">
					<div class="elem_name">Подтверждение пароля</div>
					<input type="password" class="input_text W400" name="REGISTER[CONFIRM_PASSWORD]" autocomplete="off">
				</div>
		
		<!--			обработка персональных данных-->
				<div class="botmarg17">
					<label class="bx-filter-param-label">
						<input type="checkbox" id="USER_REMEMBER_1" name="USER_REMEMBER_1" value="Y">
						<span class="bx-filter-param-text">Я согласен на обработку персональных данных.</span>
					</label>
					<a href="/page/auth/personal-agreement.aspx">Соглашение на обработку персональных данных</a>
				</div>
		
		<!--			правила сервиса-->
				<div class="botmarg17">
					<label class="bx-filter-param-label">
						<input type="checkbox" id="USER_REMEMBER_2" name="USER_REMEMBER_2" value="Y">
						<span class="bx-filter-param-text">Я прочёл правила сервиса и согласен с ними.</span>
					</label>
					<a href="/page/auth/terms-of-use.aspx">Пользовательское соглашение</a>
				</div>
		
		<!--			Защита от автоматической регистрации-->
				<div class="botmarg17">
					CAPTCHA
				</div>
		
				<div class="auth_btn">
					<div>
						<a href="/page/auth/login.aspx" rel="nofollow" class="button orange W160">ВОЙТИ</a>
					</div>
					<input type="submit" class="button green" name="register_submit_button" value="ЗАРЕГЕСТРИРОВАТЬСЯ">
				</div>
		
			</form>
			
		</div>
	</div>
</asp:Content>