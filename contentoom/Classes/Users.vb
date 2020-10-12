'IdUser
'IdGroupUsers
'DateTime
'Login
'Password
'CodeRegistration
Public Class Users

    Public IdGroupUsers As Integer
    Public Login As String
    Public Password As String
    Public CodeRegistration As Integer

    Public Function QueryInto() As String
        Return $"INSERT INTO dctUsers (IdGroupUsers,Login,Password,CodeRegistration) VALUES ({IdGroupUsers},'{Login}','{Password}',{CodeRegistration});"
    End Function

    Public Function QuerySelect() As String
        Return $"SELECT Login FROM dctUsers WHERE Login='{Login}';"
    End Function

    Public Shared Function QuerySelectCode(Code As Integer) As String
        Return $"SELECT CodeRegistration FROM dctUsers WHERE CodeRegistration={Code};"
    End Function

End Class
