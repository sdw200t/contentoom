﻿Public Class Registration
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnReg_Click(sender As Object, e As EventArgs) Handles btnReg.Click

        If Not RegexUtilities.IsValidEmail(tbLoginNew.Text) Then
            MsgBox("Не корректный email")
            Return
        End If

        If Not tbPassNew.Text = tbPassRep.Text Then
            MsgBox("Пароли не совпадают")
            Return
        End If

        Dim rnd = New Random

        Dim User = New Users With {
                .IdGroupUsers = 1,
                .Name = tbName.Text,
                .Login = tbLoginNew.Text,
                .Password = tbPassNew.Text,
                .CodeRegistration = rnd.Next(1000, 10000)
            }

        Dim DB = New DataBase

        If Not DB Is Nothing Then
            DB.CommandText = User.QueryInto

            Dim rez = DB.ExecuteNonQuery
            If rez Then
            Else
                MsgBox("Не удалось зарегистрироваться")
            End If
        End If

    End Sub

    Protected Sub lbEnter_Click(sender As Object, e As EventArgs) Handles lbEnter.Click
        Server.Transfer("Login.aspx", True)
    End Sub
End Class