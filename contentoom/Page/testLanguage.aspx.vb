Imports System.Globalization

Public Class testLanguage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Session("culture") = DropDownList1.SelectedValue
        Response.Redirect(Request.Path)
    End Sub

    Private Sub testLanguage_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit
        If (Not Session("culture") = Nothing) Then
            Dim culture = Session("culture").ToString()
            CultureInfo.CurrentCulture = New CultureInfo(culture)
            CultureInfo.CurrentUICulture = New CultureInfo(culture)
        End If
    End Sub
End Class