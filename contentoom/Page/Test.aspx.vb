Imports System.Net
Imports System.Web.Services



Public Class _Default
    Inherits Page

    'Protected Shared ReCaptcha_Key As String = "<RECaptcha Site Key>"
    'Protected Shared ReCaptcha_Secret As String = "<RECaptcha Secret Key>"

    '<WebMethod()>
    'Public Shared Function VerifyCaptcha(response As String) As String
    '    Dim url As String = "https://www.google.com/recaptcha/api/siteverify?secret=" & ReCaptcha_Secret & "&response=" & response
    '    Return (New WebClient()).DownloadString(url)
    'End Function

    Private Sub _Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        tEnterUser.Visible = True
        tNewUser.Visible = False
    End Sub

    Protected Sub lbEnter_Click(sender As Object, e As EventArgs) Handles lbEnter.Click
        tEnterUser.Visible = True
        tNewUser.Visible = False
    End Sub

    Protected Sub lbRegistration_Click(sender As Object, e As EventArgs) Handles lbRegistration.Click
        tEnterUser.Visible = False
        tNewUser.Visible = True
    End Sub

    Protected Sub btnReadUsers_Click(sender As Object, e As EventArgs) Handles btnReadUsers.Click
        Dim DB = New DataBase With {
            .CommandText = "SELECT * FROM `Users`"
            }
        Dim Reader = DB.ExecuteReader()
        dlUsers.Items.Clear()
        While Reader.Read()
            dlUsers.Items.Add(Reader.GetValue(1))
        End While
    End Sub

    Protected Sub btnReadGroup_Click(sender As Object, e As EventArgs) Handles btnReadGroup.Click
        Dim DB = New DataBase
        If Not DB Is Nothing Then
            DB.CommandText = "SELECT * FROM `GroupUsers`"
            Dim Reader = DB.ExecuteReader()
            dlGroup.Items.Clear()
            While Reader.Read()
                dlGroup.Items.Add(Reader.GetValue(1))
            End While
        End If
    End Sub

    Protected Sub btnReg_Click(sender As Object, e As EventArgs) Handles btnReg.Click

        If Not RegexUtilities.IsValidEmail(tbLoginNew.Text) Then
            MsgBox("Не корректный email")
            Return
        End If

        If Not tbPassNew.Text = tbPassRep.Text Then
            MsgBox("Пароли не совпадают")
            Return
        End If

        Dim rnd = New Random

        Dim User = New Users With {
                .IdGroupUsers = 1,
                .Name = tbName.Text,
                .Login = tbLoginNew.Text,
                .Password = tbPassNew.Text,
                .CodeRegistration = rnd.Next(1000, 10000)
            }

        Dim DB = New DataBase

        If Not DB Is Nothing Then
            DB.CommandText = User.QueryInto

            Dim rez = DB.ExecuteNonQuery
            If rez Then
                tEnterUser.Visible = True
                tNewUser.Visible = False
            Else
                MsgBox("Не удалось зарегистрироваться")
            End If
        End If

    End Sub

    Protected Sub btnEnter_Click(sender As Object, e As EventArgs) Handles btnEnter.Click

        If Not RegexUtilities.IsValidEmail(tbLogin.Text) Then
            MsgBox("Не корректный email")
            Return
        End If

        Dim User = New Users With {
            .Login = tbLogin.Text,
            .Password = tbPass.Text
        }

        Dim DB = New DataBase With {
            .CommandText = User.QuerySelect
        }

        Dim Reader = DB.ExecuteReader()
        If Reader.Read Then
            Server.Transfer("UserForm.aspx", True)
        Else
            MsgBox("Не удалось авторизоваться")
        End If

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        MailSender.SendEmail(tbLogin.Text)
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Server.Transfer("Registration.aspx", True)

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Server.Transfer("Login.aspx", True)

    End Sub
End Class