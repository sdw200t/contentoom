Imports MySql.Data.MySqlClient

Public Class DataBase

    Private log As New LogTxt

    Private _Connection As MySqlConnection
    Private _Command As MySqlCommand

    Public Property CommandText As String
        Get
            Return _Command.CommandText
        End Get
        Set
            _Command.CommandText = Value
        End Set
    End Property

    Public Sub New()
        log.SaveLog("**************************************")
        log.SaveLog("Class DataBase")
        log.SaveLog("Конструктор")
        log.SaveLog("--------------------------------------")
        Try
            _Connection = New MySqlConnection(ConfigurationManager.ConnectionStrings("conn").ConnectionString)
            _Connection.Open()
            _Command = New MySqlCommand
            _Command.Connection = _Connection
        Catch ex As Exception
            MsgBox("При попытке подключения к базе данных приложения произошла следующая ошибка. " & ex.Message)
        End Try
    End Sub

    Public Function ExecuteNonQuery()
        Try
            _Command.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox("При попытке выполнить команду произошла следующая ошибка. " & ex.Message)
            Return False
        End Try
        Return True
    End Function

    Public Function ExecuteReader() As MySqlDataReader
        Try
            Return _Command.ExecuteReader()
        Catch ex As Exception
            MsgBox("При попытке выполнить команду произошла следующая ошибка. " & ex.Message)
        End Try
        Return Nothing

    End Function

End Class
