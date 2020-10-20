<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/template/empty/empty.Master" CodeBehind="restore-password.aspx.vb" Inherits="contentoom.authRestorePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Восстановить пароль
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderEmpty" runat="server">
	<div class="bx-authform">

		<h3 class="bx-title">ЗАГОЛОВОК</h3>

		<form name="bform" method="post" target="_top" action="action_url">

			<div class="bx-authform-formgroup-container">
				<div class="bx-authform-label-container">Логин</div>
				<div class="bx-authform-input-container">
					<input type="text" name="login" maxlength="255" value="ласт логин" />
				</div>
			</div>

			<div class="bx-authform-formgroup-container">
				<div class="bx-authform-label-container">Проверка</div>
				<div class="bx-authform-input-container">
					<input type="text" name="checkword" maxlength="255" value="checkword" />
				</div>
			</div>

			<div class="bx-authform-formgroup-container">
				<div class="bx-authform-label-container">Пароль</div>
				<div class="bx-authform-input-container">
					<input type="password" name="password" value="password" maxlength="255" autocomplete="off" />
				</div>
			</div>

			<div class="bx-authform-formgroup-container">
				<div class="bx-authform-label-container">password2</div>
				<div class="bx-authform-input-container">
					<input type="password" name="confirm_password" value="confirm_password" maxlength="255" autocomplete="off" />
				</div>
			</div>


				<input type="hidden" name="captcha_sid" value="CAPTCHA_CODE" />
				<div class="bx-authform-formgroup-container dbg_captha">
					<div class="bx-authform-label-container">
						Введите проверочную строку
					</div>
					<div class="bx-captcha">картинка с капчей</div>
					<div class="bx-authform-input-container">
						<input type="text" name="captcha_word" maxlength="50" value="" autocomplete="off" />
					</div>
				</div>


			<div class="bx-authform-formgroup-container">
				<input type="submit" class="btn btn-primary" name="action" value="Отправить" />
			</div>

			<div class="bx-authform-description-container">
			
			</div>

		</form>
	</div>
</asp:Content>