Imports System.Web.Optimization
Imports MySql.Data.MySqlClient

Public Class Global_asax
    Inherits HttpApplication

    Sub Application_Start(sender As Object, e As EventArgs)
        ' Срабатывает при запуске приложения
        RouteConfig.RegisterRoutes(RouteTable.Routes)
        BundleConfig.RegisterBundles(BundleTable.Bundles)


        Dim conn As New MySqlConnection("Server=127.0.0.1;User id=root;password=sdw200t;database=test_db")
        Dim cmd As New MySqlCommand
        Try
            conn.Open()
            cmd.Connection = conn
            'Для выполнения запросов типа insert, update возможно использование ExecuteNonQuery, которая возвращает количество задействованных строк
            cmd.CommandText = "INSERT INTO `test_table` (`id`, `test_info`) VALUES (NULL, 'some text info for current id');"
            Try
                cmd.ExecuteNonQuery()
            Catch ex As Exception
                'описание того, что программа должна делать в случае возникновения каких-либо непредвиденных обстоятельств
            End Try
            'для получения данных из таблиц (запросы типа select) используется reader.
            cmd.CommandText = "SELECT * FROM `test_table`"
            Dim reader As MySqlDataReader
            reader = cmd.ExecuteReader()
            While reader.Read()
                'получаем и сообщаем пользователю значения первого столбца базы данных для всех выбранных запросом строк
                MsgBox(reader.GetValue(0))
            End While
        Catch ex As Exception
            'описание действий при проблемах с подключением к БД
        End Try

    End Sub
End Class