
Public Class _Default
    Inherits Page

    Private Sub _Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        tEnterUser.Visible = True
        tNewUser.Visible = False
        lbRegistration.Visible = True
        lbEnter.Visible = False
    End Sub

    Protected Sub lbEnter_Click(sender As Object, e As EventArgs) Handles lbEnter.Click
        tEnterUser.Visible = True
        tNewUser.Visible = False
        lbRegistration.Visible = True
        lbEnter.Visible = False
    End Sub

    Protected Sub lbRegistration_Click(sender As Object, e As EventArgs) Handles lbRegistration.Click
        tEnterUser.Visible = False
        tNewUser.Visible = True
        lbRegistration.Visible = False
        lbEnter.Visible = True
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

    Protected Sub btnReg_Click(sender As Object, e As EventArgs) Handles btnReg.Click
        Dim User = New Users With {
            .IdGroupUsers = 1,
            .Name = tbName.Text,
            .Login = tbEmail.Text,
            .Password = tbPassNew.Text,
            .Description = tbEmail.Text
        }

        Dim DB = New DataBase With {
            .CommandText = User.QueryInto
        }

        Dim rez = DB.ExecuteNonQuery
        If rez Then
            tEnterUser.Visible = True
            tNewUser.Visible = False
            lbRegistration.Visible = True
            lbEnter.Visible = False
        Else
            MsgBox("Не удалось зарегистрироваться")
        End If
    End Sub

    Protected Sub btnEnter_Click(sender As Object, e As EventArgs) Handles btnEnter.Click
        Dim User = New Users With {
            .Login = tbLogin.Text,
            .Password = tbPass.Text
        }

        Dim DB = New DataBase With {
            .CommandText = User.QuerySelect
        }

        Dim Reader = DB.ExecuteReader()
        If Reader.Read Then
            Server.Transfer("UserForm.aspx", True)
        Else
            MsgBox("Не удалось авторизоваться")
        End If
    End Sub
End Class