Imports System.Net
Imports System.Net.Mail

Public Class MailSender
    Public Shared Sub SendEmail(AdressTo As String, Text As String)
        'Message As MailMessage, SmtpAdress As String, SmtpPort As int, Login As String, String Password)
        Try
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()
            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New Net.NetworkCredential("bytest@innlook.ru", "Veron20Took")
            Smtp_Server.Port = 587
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtp.mail.ru"

            e_mail = New MailMessage()
            e_mail.From = New MailAddress("bytest@innlook.ru")
            e_mail.To.Add(AdressTo)
            e_mail.Subject = "Тестовая отправка"
            e_mail.IsBodyHtml = True
            If Text = "" Then
                e_mail.Body = "<h2>Письмо-тест работы smtp-клиента.</h2>"
            Else
                e_mail.Body = $"<h2>Код подтверждения регистрации {Text}</h2>"
            End If
            Smtp_Server.Send(e_mail)
            MsgBox($"Отравлено письмо с кодом подтверждения регистрации на почторвый ящик {AdressTo}")

        Catch error_t As Exception
            MsgBox(error_t.ToString)
        End Try
    End Sub

End Class
