Imports MySql.Data.MySqlClient
Imports Microsoft.Extensions.Logging

Public Class _Default
    Inherits Page

    ' Создаем экземпляр объекта подключения к БД для всей страницы.
    Private DB As New DataBase
    Private log As New LogTxt

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        log.SaveLog("Чтение пользователей в базе данных")

        DB.Command.CommandText = "SELECT * FROM `GroupUsers`"
        Dim Reader As MySqlDataReader
        Reader = DB.Command.ExecuteReader
        ListBox1.Items.Clear()

        While Reader.Read()
            'получаем и сообщаем пользователю значения первого столбца базы данных для всех выбранных запросом строк
            ListBox1.Items.Add(Reader.GetValue(1))
        End While

        lblTimeOut.Text = "TimeOut: " + DB.Connection.ConnectionTimeout.ToString

    End Sub

    Protected Sub btnRegUser_Click(sender As Object, e As EventArgs) Handles btnRegUser.Click

        log.SaveLog("Создание пользователя в базе данных")

        Dim User = New Users With {
            .UserName = tbUserName.Text
        }

        DB.AddUser(User)

    End Sub
End Class