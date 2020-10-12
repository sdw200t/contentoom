Public Class Registration
    Inherits System.Web.UI.Page

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
                .Login = tbLoginNew.Text,
                .Password = tbPassNew.Text,
                .CodeRegistration = rnd.Next(1000, 10000)
            }

        Dim DB = New DataBase

        ' запроск к базе с проверкой существования пользователя
        DB.CommandText = User.QuerySelect
        Dim Reader = DB.ExecuteReader()
        If Reader.Read Then
            MsgBox("Пользователь с таким e-mail адресом уже зарегистрирован")
            Return
        End If
        Reader.Close()

        ' отправка команды создания пользователя
        'DB.CommandText = User.QueryInto
        Dim rez = DB.Execute_SP_Users_Insert(
                1,
                tbLoginNew.Text,
                tbPassNew.Text,
                rnd.Next(1000, 10000)
        )
        If rez Then
            MailSender.SendEmail(User.Login, User.CodeRegistration)
            pCode.Visible = True
        Else
            MsgBox("Не удалось зарегистрироваться")
        End If

    End Sub

    Protected Sub lbEnter_Click(sender As Object, e As EventArgs) Handles lbEnter.Click
        Response.Redirect("Login.aspx")
    End Sub

    Protected Sub btnCode_Click(sender As Object, e As EventArgs) Handles btnCode.Click
        Dim DB = New DataBase

        DB.CommandText = Users.QuerySelectCode(tbCode.Text)

        Dim Reader = DB.ExecuteReader()
        If Reader.Read Then
            MsgBox("Код подтвержден")
        End If
        Reader.Close()

    End Sub

    Protected Sub btnNewRecordStoredProcedure_Click1(sender As Object, e As EventArgs) Handles btnNewRecordStoredProcedure.Click
        Dim IDNewAudioRelease As Integer
        Dim DB As New DataBase
        If DB.Execute_SP_AudioRelease_Insert(IDNewAudioRelease) Then
            MsgBox(IDNewAudioRelease)
        End If
    End Sub
End Class