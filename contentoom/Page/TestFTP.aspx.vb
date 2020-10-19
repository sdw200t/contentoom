Imports System.IO
Imports System.Net

Public Class TestFTP
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Sub Button1_Click(ByVal Source As Object, ByVal e As EventArgs)

        'Вариант 1
        '' Get the object used to communicate with the server.
        'Dim request As FtpWebRequest = CType(WebRequest.Create("ftp://evolik.beget.tech/album_img/" + File1.Value), FtpWebRequest)
        'request.Method = WebRequestMethods.Ftp.UploadFile

        '' This example assumes the FTP site uses anonymous logon.
        'request.Credentials = New NetworkCredential("evolik_studio", "im67&E5c")

        '' Copy the contents of the file to the request stream.
        'Dim fileContents As Byte()

        'Dim fi As New FileInfo(File1.Value)
        'Using sourceStream As StreamReader = New StreamReader(fi.FullName)
        '    fileContents = Encoding.UTF8.GetBytes(sourceStream.ReadToEnd())
        'End Using

        'request.ContentLength = fileContents.Length

        'Using requestStream As Stream = request.GetRequestStream()
        '    requestStream.Write(fileContents, 0, fileContents.Length)
        'End Using

        'Using response As FtpWebResponse = CType(request.GetResponse(), FtpWebResponse)
        '    MsgBox($"Upload File Complete, status {response.StatusDescription}")
        'End Using

        'Вариант 2
        ''Создание каталога
        'Dim request As FtpWebRequest = CType(WebRequest.Create("ftp://evolik.beget.tech/album_img"), FtpWebRequest)
        ''Логин и пароль
        'request.Credentials = New NetworkCredential("evolik_studio", "im67&E5c")
        '''Передаем фтп серверу команду MKD- для создания папки
        ''request.Method = WebRequestMethods.Ftp.MakeDirectory
        ''Dim responce As FtpWebResponse = CType(request.GetResponse(), FtpWebResponse)

        'отправка файла
        Dim request As FtpWebRequest = CType(WebRequest.Create("ftp://evolik.beget.tech/album_img/" + File1.Value), FtpWebRequest)
        'Логин и пароль
        request.Credentials = New NetworkCredential("evolik_studio", "im67&E5c")
        request.Method = WebRequestMethods.Ftp.UploadFile
        'Dim B() As Byte = Encoding.Default.GetBytes(File1.Value)
        request.ContentLength = File1.PostedFile.ContentLength 'B.Length
        Dim response As FtpWebResponse = CType(request.GetResponse(), FtpWebResponse)
        response.Close()


        'Сохранеине файла на диске
        'If Text1.Value = "" Then

        '    Span1.InnerHtml = "Error: You must enter a file name."
        '    Return

        'End If

        'If File1.PostedFile.ContentLength > 0 Then

        '    Try
        'File1.PostedFile.SaveAs("ftp://evolik.beget.tech/album_img/img.jpg")
        'Span1.InnerHtml = "File uploaded successfully to <b>G:\Обмен\" &
        '      Text1.Value & "</b> on the Web server."

        '        imgAlbom.Src = "https://s.4pda.to/C9NjWqfhbuLz2TLBnXi8cKXhrs6z1QeoVhsNiK.jpg"

        '    Catch exc As Exception
        '        Span1.InnerHtml = "Error saving file <b>G:\Обмен\" &
        '                          Text1.Value & "</b><br />" & exc.ToString() & "."
        '    End Try

        'End If

    End Sub


End Class