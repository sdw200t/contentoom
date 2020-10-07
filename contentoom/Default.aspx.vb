
Public Class _Default
    Inherits Page

    Private Sub _Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        UserLogin.Visible = True
        CreateUserWizard.Visible = False
        lbRegistration.Visible = True
        lbEnter.Visible = False
    End Sub

    Protected Sub lbEnter_Click(sender As Object, e As EventArgs) Handles lbEnter.Click
        UserLogin.Visible = True
        CreateUserWizard.Visible = False
        lbRegistration.Visible = True
        lbEnter.Visible = False
    End Sub

    Protected Sub lbRegistration_Click(sender As Object, e As EventArgs) Handles lbRegistration.Click
        UserLogin.Visible = False
        CreateUserWizard.Visible = True
        lbRegistration.Visible = False
        lbEnter.Visible = True
    End Sub

    Protected Sub UserLogin_Authenticate(sender As Object, e As AuthenticateEventArgs) Handles UserLogin.Authenticate

        Dim User = New Users With {
            .Login = UserLogin.UserName,
            .Password = UserLogin.Password
        }

        Dim DB = New DataBase With {
            .CommandText = User.QuerySelect
        }

        Dim Reader = DB.ExecuteReader()
        If Reader.Read Then
            MsgBox("Успешная авторизация")
        Else
            MsgBox("Не успешная авторизация")
        End If

    End Sub

    Protected Sub CreateUserWizard_CreatedUser(sender As Object, e As EventArgs) Handles CreateUserWizard.CreatedUser
        Dim User = New Users With {
            .IdGroupUsers = 1,
            .Name = CreateUserWizard.UserName,
            .Login = CreateUserWizard.Email,
            .Password = CreateUserWizard.Password,
            .Description = CreateUserWizard.Answer
        }

        Dim DB = New DataBase With {
            .CommandText = User.QueryInto
        }

        Dim rez = DB.ExecuteNonQuery
        If rez Then
            MsgBox("Успешная регистрация")
        Else
            MsgBox("Не успешная регистрация")
        End If
    End Sub

    Protected Sub btnReadUsers_Click(sender As Object, e As EventArgs) Handles btnReadUsers.Click
        Dim DB = New DataBase With {
            .CommandText = "SELECT * FROM `Users`"
            }
        Dim Reader = DB.ExecuteReader()
        dlUsers.Items.Clear()
        While Reader.Read()
            dlUsers.Items.Add(Reader.GetValue(1))
        End While
    End Sub

    Protected Sub btnReadGroup_Click(sender As Object, e As EventArgs) Handles btnReadGroup.Click
        Dim DB = New DataBase With {
            .CommandText = "SELECT * FROM `GroupUsers`"
            }
        Dim Reader = DB.ExecuteReader()
        dlUsers.Items.Clear()
        While Reader.Read()
            dlGroup.Items.Add(Reader.GetValue(1))
        End While
    End Sub





    '' Создаем экземпляр объекта подключения к БД для всей страницы.
    'Private log As New LogTxt

    'Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

    '    log.SaveLog("Чтение пользователей в базе данных")

    '    Dim DB = New DataBase With {
    '        .CommandText = "SELECT * FROM `GroupUsers`"
    '    }

    '    Dim Reader = DB.ExecuteReader()
    '    ListBox1.Items.Clear()

    '    While Reader.Read()
    '        'получаем и сообщаем пользователю значения первого столбца базы данных для всех выбранных запросом строк
    '        ListBox1.Items.Add(Reader.GetValue(1))
    '    End While

    'End Sub

    'Protected Sub btnRegUser_Click(sender As Object, e As EventArgs) Handles btnRegUser.Click

    '    log.SaveLog("Создание пользователя в базе данных")

    '    Dim User = New Users With {
    '        .Name = tbUserName.Text
    '    }

    '    Dim DB = New DataBase With {
    '        .CommandText = User.QueryInto
    '    }
    '    DB.ExecuteNonQuery()

    'End Sub

End Class