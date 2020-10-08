Imports System.Net
Imports System.Net.Mail

Public Class MailSender
    Public Shared Sub SendEmail(AdressTo As String) 'Message As MailMessage, SmtpAdress As String, SmtpPort As int, Login As String, String Password)
        'Dim Message = New MailMessage
        'Message.Subject = "Подтверждение регистрации"
        'Message.Body = "Подтверждение регистрации"
        'Message.From = New MailAddress("info@innlook.ru")
        'Message.Sender = New MailAddress(AdressTo)

        Dim smtp = New SmtpClient("smtp.mail.ru", 465)
        smtp.Credentials = New NetworkCredential("info@innlook.ru", "InnLook2019")
        smtp.EnableSsl = True
        smtp.Send("info@innlook.ru", AdressTo, "Подтверждение регистрации", "Подтверждение регистрации")
    End Sub
End Class
