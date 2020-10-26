Imports MySql.Data.MySqlClient

Public Class authRegistration
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnRegistration_Click(sender As Object, e As EventArgs) Handles btnRegistration.Click
        'Проверить почту
        If Not RegexUtilities.IsValidEmail(registr_email.Value) Then
            MsgBox("Не корректный email")
            Return
        End If

        'Проверить пароли введены одинаковые
        If Not registr_pass.Value = registr_cpass.Value Then
            MsgBox("Пароли не совпадают")
            Return
        End If

        'Проверить пароли соответсвуют требуемой сложности
        '' Demonstrate that "Z9f%a>2kQ" is not complex.
        'If Not RegexUtilities.ValidatePassword(registr_pass.Value)) Then
        'End If

        'Проверить captcha
        If (IsPostBack) Then

            'Validate the Captcha to check we're not dealing with a bot
            Dim isHuman = ExampleCaptcha.Validate(CaptchaCodeTextBox.Text)

            CaptchaCodeTextBox.Text = Nothing ' clear previous user input

            If (Not isHuman) Then
                'TODO Captcha validation failed, show error message  
                MsgBox("Не верно введено проверочное слово")
                Return
            End If
        End If

        'Проверить существование пользователя
        Dim DB = New DataBase()
        Dim Reader As MySqlDataReader
        If Not DB.Execute_SP_Users_Select(0, registr_email.Value, "", Reader) Then
            Return
        End If
        If Reader.Read Then
            MsgBox("Пользователь уже существует")
            Reader.Close()
            Return
        End If
        Reader.Close()

        'Создать пользователя
        Dim rand = New Random()
        Dim CodeRegistration = rand.Next(10000, 100000)
        If Not DB.Execute_SP_Users_Insert(1, registr_email.Value, registr_pass.Value, CodeRegistration) Then
            Return
        End If

        'Отправить код подтверждения
        MailSender.SendEmail(registr_email.Value, CodeRegistration)

        'Проверить код подтверждения

    End Sub


End Class