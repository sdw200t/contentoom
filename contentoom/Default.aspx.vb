Imports MySql.Data.MySqlClient

Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Public cn As New OleDb.OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=G:\MySQL\Database1.mdb")
    Public SqlCom As OleDb.OleDbCommand


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        'Создание таблицы
        cn.Open()
        SqlCom = New OleDb.OleDbCommand("CREATE TABLE Таблица1 (Имя TEXT (20), Фамилия TEXT (20))", cn)
        SqlCom.ExecuteNonQuery()
        cn.Close()

        'Добавление данных
        SqlCom = New OleDb.OleDbCommand("INSERT INTO Таблица1 (Имя, Фамилия) VALUES ('Вася','Пупкин')", cn)
        cn.Open()
        SqlCom.ExecuteNonQuery()
        cn.Close()

        'Dim conn As New MySqlConnection("Server=127.0.0.1;User id=root;password=sdw200t;database=test_db")
        'Dim cmd As New MySqlCommand
        'Try
        '    conn.Open()
        '    cmd.Connection = conn
        '    'Для выполнения запросов типа insert, update возможно использование ExecuteNonQuery, которая возвращает количество задействованных строк
        '    cmd.CommandText = "INSERT INTO `test_table` (`id`, `test_info`) VALUES (NULL, 'some text info for current id');"
        '    Try
        '        cmd.ExecuteNonQuery()
        '    Catch ex As Exception
        '        'описание того, что программа должна делать в случае возникновения каких-либо непредвиденных обстоятельств
        '    End Try
        '    'для получения данных из таблиц (запросы типа select) используется reader.
        '    cmd.CommandText = "SELECT * FROM `test_table`"
        '    Dim reader As MySqlDataReader
        '    reader = cmd.ExecuteReader()
        '    While reader.Read()
        '        'получаем и сообщаем пользователю значения первого столбца базы данных для всех выбранных запросом строк
        '        MsgBox(reader.GetValue(0))
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

End Class