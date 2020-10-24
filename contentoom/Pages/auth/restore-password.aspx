<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/template/empty/empty.Master" CodeBehind="restore-password.aspx.vb" Inherits="contentoom.authRestorePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Восстановить пароль
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderEmpty" runat="server">
    <div class="auth-area">
		<div class="authform">
	
			<div class="auth_logo_m botmarg37">
    			<img src="/img/logo-height.png">
			</div>
	
	
			<h3 class="title">Выслать контрольную строку</h3>

			<p class="authform-content-container">Если вы забыли пароль, введите E-Mail. Контрольная строка для смены пароля, а также ваши регистрационные данные, будут высланы вам по E-Mail.</p>
		
				<div class="bx-authform-formgroup-container botmarg17">
					<div class="elem_name">E-Mail</div>
					<input type="text" name="USER_EMAIL" class="input_text W400" maxlength="255">
				</div>
		
				<div class="bx-authform-formgroup-container botmarg17">
					<input type="submit" class="btn green" name="AUTH_ACTION" value="ВЫСЛАТЬ">
				</div>
		
				<noindex>
					<div class="auth_btn">
						<div>
							<a href="/pages/auth/login.aspx" rel="nofollow">Авторизоваться</a>
			  			</div>
			  			<div>
							<a href="/pages/auth/registration.aspx" rel="nofollow">Зарегистрироваться</a>
			 			</div>
					</div>
				</noindex>

		</div>
	</div>
</asp:Content>