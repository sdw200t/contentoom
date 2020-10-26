<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/template/empty/empty.Master" CodeBehind="registration.aspx.vb" Inherits="contentoom.authRegistration" %>
<%@Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="BotDetect" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Регистрация
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderEmpty" runat="server">
    <div class="regh-area">
		<div class="authform">
			<form method="post" name="regform" enctype="multipart/form-data" runat="server" >
		
				<div class="auth_logo_m botmarg37">
					<img src="/img/logo-height.png">
					<H1>РЕГИСТРАЦИЯ</H1>
				</div>
		
		<!--			Логин-->
				<div class="botmarg17">
					<div class="elem_name">Email</div>
					<input type="hidden" name="REGISTER[LOGIN]" id="registr_login" />
					<input type="email" class="input_text W400" name="REGISTER[EMAIL]" id="registr_email" runat="server" />
				</div>
	
		<!--			Пароль-->
				<div class="botmarg17">
					<div class="elem_name">Пароль</div>
					<input type="password" class="input_text W400" name="REGISTER[PASSWORD]" id="registr_pass" autocomplete="off" runat="server" />
				</div>
		
		<!--			Подтверждение пароля-->
				<div class="botmarg17">
					<div class="elem_name">Подтверждение пароля</div>
					<input type="password" class="input_text W400" name="REGISTER[CONFIRM_PASSWORD]" id="registr_cpass" autocomplete="off" runat="server" />
				</div>
		
		<!--			обработка персональных данных-->
				<div class="botmarg17">
					<label class="bx-filter-param-label">
						<input type="checkbox" id="USER_REMEMBER_1" name="USER_REMEMBER_1" value="Y" onclick="checkbox_OnClick()" />
						<span class="bx-filter-param-text">Я согласен на обработку персональных данных.</span>
					</label>
					<a href="/pages/auth/personal-agreement.aspx">Соглашение на обработку персональных данных</a>
				</div>
		
		<!--			правила сервиса-->
				<div class="botmarg17">
					<label class="bx-filter-param-label">
						<input type="checkbox" id="USER_REMEMBER_2" name="USER_REMEMBER_2" value="Y" onclick="checkbox_OnClick()" />
						<span class="bx-filter-param-text">Я прочёл правила сервиса и согласен с ними.</span>
					</label>
					<a href="/pages/auth/terms-of-use.aspx">Пользовательское соглашение</a>
				</div>
		
		<!--			Защита от автоматической регистрации-->
				<div class="botmarg17">
                    <BotDetect:WebFormsCaptcha ID="ExampleCaptcha" runat="server" UserInputID="CaptchaCodeTextBox" />
                    <asp:TextBox ID="CaptchaCodeTextBox" runat="server" />
				</div>
		
				<div class="auth_btn">
					<div>
						<a href="/pages/auth/login.aspx" rel="nofollow" class="button orange W160">ВОЙТИ</a>
					</div>
					<asp:button ID="btnRegistration" class="button green" name="register_submit_button" value="ЗАРЕГЕСТРИРОВАТЬСЯ" Text="ЗАРЕГЕСТРИРОВАТЬСЯ" runat="server"/>
				</div>
		
			</form>
			
		</div>
	</div>

	<%--Проверка отмеченных чекбокс--%>	
	<script>
		var btnReg = document.getElementById('ContentPlaceHolderEmpty_btnRegistration');
		var cb1 = document.getElementById('USER_REMEMBER_1');
		var cb2 = document.getElementById('USER_REMEMBER_2');
		btnReg.setAttribute('disabled', 'disabled');
		btnReg.setAttribute('class', 'button input_disable');

		function checkbox_OnClick() {
			if (cb1.checked && cb2.checked) {
				btnReg.removeAttribute('disabled');
				btnReg.setAttribute('class', 'button green');
			} else {
				btnReg.setAttribute('disabled', 'disabled');
				btnReg.setAttribute('class', 'button input_disable');
			}
		}
	</script>
</asp:Content>