Imports MySql.Data.MySqlClient

Public Class DataBase

    Private _Connection As MySqlConnection
    Private _Command As MySqlCommand
    Private _Reader As MySqlDataReader

    Public Property Connection As MySqlConnection
        Get
            Return _Connection
        End Get
        Set
            _Connection = Value
        End Set
    End Property

    Public Property Command As MySqlCommand
        Get
            Return _Command
        End Get
        Set
            _Command = Value
        End Set
    End Property

    Public Property Reader As MySqlDataReader
        Get
            Return _Reader
        End Get
        Set
            _Reader = Value
        End Set
    End Property

    Public Sub New()
        Try
            _Connection = New MySqlConnection(ConfigurationManager.ConnectionStrings("conn").ConnectionString)
            _Command = New MySqlCommand("", _Connection)
            _Connection.Open()
            _Command.Connection = _Connection
        Catch ex As Exception
            MsgBox("При попытке подключения к базе данных приложения произошла следующая ошибка. " & ex.Message)
        End Try
    End Sub

End Class
