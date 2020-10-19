Imports System.IO

Public Class TestDrop
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Sub Button1_Click(ByVal Source As Object, ByVal e As EventArgs)

        If Text1.Value = "" Then

            Span1.InnerHtml = "Error: You must enter a file name."
            Return

        End If

        If File1.PostedFile.ContentLength > 0 Then

            Dim fi As New FileInfo(File1.Value)

            Try
                File1.PostedFile.SaveAs(("G:\Обмен\" & Text1.Value))
                Span1.InnerHtml = "File uploaded successfully to <b>G:\Обмен\" &
                      Text1.Value & "</b> on the Web server."

                imgAlbom.Src = fi.FullName

            Catch exc As Exception
                Span1.InnerHtml = "Error saving file <b>G:\Обмен\" &
                                  Text1.Value & "</b><br />" & exc.ToString() & "."
            End Try

        End If

    End Sub

    Protected Sub CaptchaCodeTextBox_TextChanged(sender As Object, e As EventArgs) Handles CaptchaCodeTextBox.TextChanged

    End Sub
End Class