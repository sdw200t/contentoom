Public Class Login
    Inherits System.Web.UI.Page

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
            Response.Redirect("Default.aspx")
        Else
            MsgBox("Не удалось авторизоваться")
        End If
        Reader.Close()

    End Sub

    Protected Sub lbRegistration_Click(sender As Object, e As EventArgs) Handles lbRegistration.Click
        Response.Redirect("Registration.aspx")
    End Sub

End Class