Public Class Users

    Public UserName As String
    Public UserLogin As String
    Public UserEMail As String
    Public UserPassword As String
    'Public ReadOnly TableName As String = "GroupUsers"

    Public Function QueryInto() As String
        Return "INSERT INTO `GroupUsers` (`Name`) VALUES ('" + UserName + "');"
    End Function

End Class
