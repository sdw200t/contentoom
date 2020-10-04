Imports MySql.Data.MySqlClient

Public Class _Default
    Inherits Page

    ' Создаем экземпляр объекта подключения к БД для всей страницы.
    Private DB As New DataBase

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Public cn As New OleDb.OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=.\base\Database1.mdb")
    Public SqlCom As OleDb.OleDbCommand


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        DB.Command.CommandText = "SELECT * FROM `GroupUsers`"
        Dim Reader As MySqlDataReader
        Reader = DB.Command.ExecuteReader
        While Reader.Read()
            'получаем и сообщаем пользователю значения первого столбца базы данных для всех выбранных запросом строк
            MsgBox(Reader.GetValue(1))
        End While

        MsgBox(DB.Connection.ConnectionTimeout)

        ''Создание таблицы
        'cn.Open()
        'SqlCom = New OleDb.OleDbCommand("CREATE TABLE Таблица2 (Имя TEXT (20), Фамилия TEXT (20))", cn)
        'SqlCom.ExecuteNonQuery()
        'cn.Close()

        ''Добавление данных
        'SqlCom = New OleDb.OleDbCommand("INSERT INTO Таблица2 (Имя, Фамилия) VALUES ('Вася','Пупкин')", cn)
        'cn.Open()
        'SqlCom.ExecuteNonQuery()
        'cn.Close()


        'Try
        '    '    'Для выполнения запросов типа insert, update возможно использование ExecuteNonQuery, которая возвращает количество задействованных строк
        '    '    cmd.CommandText = "INSERT INTO `GroupUsers` (`Name`) VALUES ('Петров');"
        '    '    Try
        '    '        cmd.ExecuteNonQuery()
        '    '    Catch ex As Exception
        '    '        'описание того, что программа должна делать в случае возникновения каких-либо непредвиденных обстоятельств
        '    '    End Try
        '    'для получения данных из таблиц (запросы типа select) используется reader.
        '    DB.Command.CommandText = "SELECT * FROM `GroupUsers`"
        '    Dim Reader As MySqlDataReader
        '    Reader = DB.ExecuteSQL()
        '    While Reader.Read()
        '        'получаем и сообщаем пользователю значения первого столбца базы данных для всех выбранных запросом строк
        '        MsgBox(Reader.GetValue(1))
        '    End While
        'Catch ex As Exception
        '    'описание действий при проблемах с подключением к БД
        'End Try


        'Dim Number As String = TextBox1.Text
        'Dim ch() As Char = TextBox2.Text.ToCharArray
        'Dim ch2() As Char = TextBox3.Text.ToCharArray
        'Dim ch3() As Char = TextBox4.Text.ToCharArray
        'Dim DateCurrent As Date = CDate(TextBox5.Text)
        'Dim cn As New MySqlConnection
        'cn.ConnectionString = "Server=127.0.0.1;User id=root;password=sdw200t;PersistSecurityInfo=True;database=test_db;SslMode=none;"
        'Dim cmd As New MySqlCommand("SELECT * FROM `test_table`", cn)
        'cn.Open()
        'cmd.ExecuteNonQuery()
        'cn.Close()



        'If ComboBox1.Text <> "" Then
        '    Dim con As New SqlConnection
        '    Dim cmd As New SqlCommand

        '    Try
        '        ' Change Everything In The Next Line With CAPS To Your Configuration '
        '        con.ConnectionString = "Data Source=SERVERNAME;Initial Catalog=DATABASENAME;User ID=" & globalValue.userN & ";Password=" & globalValue.passwN

        '        con.Open()

        '        cmd.Connection = con
        '        cmd = New SqlCommand("INSERT INTO equiptment(inStorage) value '" & newValue & "' WHERE iName='" & ComboBox1.Text & "'", con)
        '        cmd.ExecuteNonQuery()

        '    Catch ex As Exception
        '        ' Do Something If Error Exist '
        '    Finally
        '        con.close()
        '    End Try
        'End If

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Button2_Click1(sender As Object, e As EventArgs) Handles Button2.Click

    End Sub
End Class