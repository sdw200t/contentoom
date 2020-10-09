Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

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
            Server.Transfer("Default.aspx", True)
        Else
            MsgBox("Не удалось авторизоваться")
        End If

    End Sub

    Protected Sub lbRegistration_Click(sender As Object, e As EventArgs) Handles lbRegistration.Click
        Server.Transfer("Registration.aspx", True)
    End Sub

End Class