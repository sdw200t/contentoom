Imports System.IO
Imports System.Net.Mime.MediaTypeNames

Public Class LogTxt
    Public Sub SaveLog(ByVal Text As String)
        'My.Computer.FileSystem.CurrentDirectory
        My.Computer.FileSystem.WriteAllText(Path.Combine("C:\vbnet", "log.txt"), DateTime.Now.ToString + ":" + Text + vbCrLf, True)
    End Sub
End Class
