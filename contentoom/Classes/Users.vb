'IdUser
'IdGroupUsers
'Name
'Login
'Description
Public Class Users

    Public IdGroupUsers As Integer
    Public Name As String
    Public Login As String
    Public Password As String
    Public Description As String

    Public Function QueryInto() As String
        Return $"INSERT INTO `Users` (`IdGroupUsers,Name,Login,Description`) VALUES ({IdGroupUsers},'{Name}','{Login}','{Description}');"
    End Function

    Public Function QuerySelect() As String
        Return $"SELECT Login FROM Users WHERE Login='{Login}';"
    End Function
End Class
