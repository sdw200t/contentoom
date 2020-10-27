Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Globalization
Imports System.Web.HttpContext
Imports System.Web.SessionState.HttpSessionState


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
        'LogTxt.SaveLog("Init")
        _context = context
    End Sub

#End Region

    Public Sub OnLogRequest(ByVal source As Object, ByVal e As EventArgs) Handles _context.LogRequest
        ' Обработка события LogRequest и настраиваемая реализация 
        ' занесения данных
        'LogTxt.SaveLog("OnLogRequest")
    End Sub

    Public Sub page_PreInit(sender As Object, e As EventArgs) Handles _context.BeginRequest
        'LogTxt.SaveLog("page_PreInit")
        'Dim page = sender
        'If page IsNot Nothing Then
        '    'If HttpContext.Current.Session("culture") IsNot Nothing Then
        '    '    Dim culture = HttpContext.Current.Session("culture").ToString()
        '    '    System.Threading.Thread.CurrentThread.CurrentCulture = New System.Globalization.CultureInfo(culture)
        '    '    System.Threading.Thread.CurrentThread.CurrentUICulture = New System.Globalization.CultureInfo(culture)
        '    'End If
        'End If
    End Sub
End Class
