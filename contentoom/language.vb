Imports System.Web
Imports System.Web.UI
Imports System.Globalization

Public Class language
    Implements IHttpModule

    Private WithEvents _context As HttpApplication

    ''' <summary>
    '''  Вам потребуется настроить этот модуль в файле web.config вашего
    '''  веб-сайта и зарегистрировать его с помощью IIS, чтобы затем воспользоваться им.
    '''  см. на этой странице: https://go.microsoft.com/?linkid=8101007
    ''' </summary>
#Region "Члены IHttpModule"

    Public Sub Dispose() Implements IHttpModule.Dispose

        ' Удалите здесь код

    End Sub

    Public Sub Init(ByVal context As HttpApplication) Implements IHttpModule.Init
        _context = context
    End Sub

#End Region

    Public Sub OnLogRequest(ByVal source As Object, ByVal e As EventArgs) Handles _context.LogRequest
        ' Обработка события LogRequest и настраиваемая реализация 
        ' занесения данных
    End Sub

    Public Sub page_PreInit(sender As Object, e As EventArgs) Handles _context.BeginRequest
        If (Not HttpContext.Current.Session("culture") = Nothing) Then
            Dim culture = HttpContext.Current.Session("culture").ToString()
            System.Threading.Thread.CurrentThread.CurrentCulture = New CultureInfo(culture)
            System.Threading.Thread.CurrentThread.CurrentUICulture = New CultureInfo(culture)
        End If
    End Sub
End Class
