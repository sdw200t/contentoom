Imports MySql.Data.MySqlClient

Public Class authLogin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnAuth_Click(sender As Object, e As EventArgs) Handles btnAuth.ServerClick
        'Проверить существование пользователя
        Dim DB = New DataBase()
        Dim Reader As MySqlDataReader
        If Not DB.Execute_SP_Users_Select(0, USER_LOGIN.Value, USER_PASSWORD.Value, Reader) Then
            Return
        End If
        If Not Reader.Read Then
            MsgBox("Пользователь с таким логином и паролем не обнаружен")
            Reader.Close()
            Return
        End If
        Reader.Close()
        Response.Redirect("/Pages/app/audio-release/list.aspx")
    End Sub

End Class