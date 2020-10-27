Public Class AudioReleaseMain
    Inherits System.Web.UI.Page

    Protected Sub ReadDct(ByRef db As DataBase, ByRef dropList As Object)

        'очистка списка
        dropList.Items.Clear()

        Dim reader
        Dim nameDct = dropList.ID

        'выборка типов релизов
        db.CommandText = $"select * from {nameDct}"
        reader = db.ExecuteReader()

        'заполнение списка 
        While reader.Read
            'ListItem.Value = reader.GetValue(0) 'Id
            Dim ListItem = New ListItem With {
                .Value = reader.GetValue(1), 'Code
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
        'dctLanguages

        'dctAudioReleaseView
        ReadDct(db, dctAudioReleaseType)
        ReadDct(db, dctAudioReleaseGenres)
        ReadDct(db, dctAudioReleaseStyle) 'колонки не совпадают с основным справочником 
        ReadDct(db, dctAudioReleaseFormat)
        ReadDct(db, dctMinPriceItunes)
        ReadDct(db, dctPriceCategoryAlbumItunes)
        ReadDct(db, dctPriceCategoryTrack)
        ReadDct(db, dctLanguages) 'есть два списка



    End Sub

End Class