Public Class TestCapcha
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub CheckBot_Click(sender As Object, e As EventArgs) Handles CheckBot.Click
        If (IsPostBack) Then

            'Validate the Captcha to check we're not dealing with a bot
            Dim isHuman = ExampleCaptcha.Validate(CaptchaCodeTextBox.Text)

            CaptchaCodeTextBox.Text = Nothing ' clear previous user input

            If (isHuman) Then
                'TODO:           captcha validation succeeded; execute the protected action
                MsgBox("Human")
            Else
                'TODO Captcha validation failed, show error message  
                MsgBox("Bot")
            End If
        End If
    End Sub
End Class