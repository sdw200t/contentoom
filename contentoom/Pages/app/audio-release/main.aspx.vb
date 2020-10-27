Public Class AudioReleaseMain
    Inherits System.Web.UI.Page

    Protected Sub ReadDct(ByRef db As DataBase, ByRef dropList As Object, nameDct As String)

        'очистка списка
        dropList.Items.Clear()

        Dim reader

        'выборка типов релизов
        If nameDct = "dctAudioReleaseStyle" Then
            db.CommandText = $"select IdAudioReleaseStyle, CodeAudioReleaseStyle, 
                NameAudioReleaseStyle from {nameDct} where IdAudioReleaseGenres = {IdAudioReleaseGenres.Value}"
        Else
            db.CommandText = $"select * from {nameDct}"
        End If
        reader = db.ExecuteReader()

        'заполнение списка 
        While reader.Read
            Dim ListItem = New ListItem With {
                .Value = reader.GetValue(0), 'Code
                .Text = reader.GetValue(2)  'Name
                }
            dropList.Items.Add(ListItem)
        End While
        reader.Close()

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'создаине подключения к базе данных
        Dim db = New DataBase

        'dctAudioReleaseStatus

        ReadDct(db, IdAudioReleaseType, "dctAudioReleaseType")
        ReadDct(db, IdAudioReleaseGenres, "dctAudioReleaseGenres")
        ReadDct(db, IdAudioReleaseStyle, "dctAudioReleaseStyle")
        ReadDct(db, IdAudioReleaseView, "dctAudioReleaseView")
        ReadDct(db, IdAudioReleaseFormat, "dctAudioReleaseFormat")
        ReadDct(db, IdShowCase, "dctShowCase")
        ReadDct(db, IdMinPriceItunes, "dctMinPriceItunes")
        ReadDct(db, IdPriceCategoryAlbumItunes, "dctPriceCategoryAlbumItunes")
        ReadDct(db, IdPriceCategoryTrack, "dctPriceCategoryTrack")
        ReadDct(db, IdAudioReleaseLanguage, "dctLanguages")
        ReadDct(db, IdAudioReleaseMetaLanguage, "dctLanguages")

    End Sub

End Class