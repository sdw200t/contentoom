Imports MySql.Data.MySqlClient

Public Class DataBase

    'Private _Connection As MySqlConnection
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
        LogTxt.SaveLog("**************************************")
        LogTxt.SaveLog("Class DataBase")
        LogTxt.SaveLog("Конструктор")
        LogTxt.SaveLog("--------------------------------------")
        Try
            Dim Connection = New MySqlConnection(ConfigurationManager.ConnectionStrings("conn").ConnectionString)
            Connection.Open()
            _Command = New MySqlCommand With {
                .Connection = Connection
            }
        Catch ex As Exception
            MsgBox("При попытке подключения к базе данных приложения произошла следующая ошибка. " & ex.Message)
            LogTxt.SaveLog(ex.Message)
        End Try
    End Sub

    Public Function ExecuteNonQuery() As Boolean
        LogTxt.SaveLog("**************************************")
        LogTxt.SaveLog("Class DataBase")
        LogTxt.SaveLog("ExecuteNonQuery")
        LogTxt.SaveLog("--------------------------------------")
        Try
            _Command.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox("При попытке выполнить команду произошла следующая ошибка. " & ex.Message)
            LogTxt.SaveLog(ex.Message)
            Return False
        End Try
        Return True
    End Function

    Public Function ExecuteReader() As MySqlDataReader
        LogTxt.SaveLog("**************************************")
        LogTxt.SaveLog("Class DataBase")
        LogTxt.SaveLog("ExecuteReader")
        LogTxt.SaveLog("--------------------------------------")
        Try
            Return _Command.ExecuteReader()
        Catch ex As Exception
            MsgBox("При попытке выполнить команду произошла следующая ошибка. " & ex.Message)
            LogTxt.SaveLog(ex.Message)
        End Try
        Return Nothing
    End Function

End Class
