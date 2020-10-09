'IdUser
'IdGroupUsers
'Name
'Login
'Password
'CodeRegistration
Public Class Users

    Public IdGroupUsers As Integer
    Public Name As String
    Public Login As String
    Public Password As String
    Public CodeRegistration As String

    Public Function QueryInto() As String
        Return $"INSERT INTO Users (IdGroupUsers,Name,Login,Password,CodeRegistration) VALUES ({IdGroupUsers},'{Name}','{Login}','{Password}','{CodeRegistration}');"
    End Function

    Public Function QuerySelect() As String
        Return $"SELECT Login FROM Users WHERE Login='{Login}';"
    End Function

    Public Shared Function QuerySelectCode(Code As Integer) As String
        Return $"SELECT CodeRegistration FROM Users WHERE CodeRegistration={Code};"
    End Function

End Class
