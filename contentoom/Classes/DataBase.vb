Imports MySql.Data.MySqlClient

Public Class DataBase

    Private _Connection As MySqlConnection
    Private _Command As New MySqlCommand
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

    Public Sub DataBase()
        Try
            _Connection = New MySqlConnection(ConfigurationManager.ConnectionStrings("conn").ConnectionString)
            _Connection.Open()
            _Command.Connection = _Connection
        Catch ex As Exception
            MsgBox("123")
        End Try
    End Sub

    Public Function ExecuteSQL()
        Return _Command.ExecuteReader()
    End Function


End Class
