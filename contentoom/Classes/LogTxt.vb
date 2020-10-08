Imports System.IO

Public Class LogTxt
    Public Shared Sub SaveLog(ByVal Text As String)
        My.Computer.FileSystem.WriteAllText(Path.Combine("D:\vbnet", "log.txt"), DateTime.Now.ToString + ":" + Text + vbCrLf, True)
    End Sub
End Class
