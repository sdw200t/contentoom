Imports System.Web.Optimization
Imports MySql.Data.MySqlClient

Public Class Global_asax
    Inherits HttpApplication

    Sub Application_Start(sender As Object, e As EventArgs)
        ' Срабатывает при запуске приложения
        RouteConfig.RegisterRoutes(RouteTable.Routes)
        BundleConfig.RegisterBundles(BundleTable.Bundles)
    End Sub

    Sub Session_Start(sender As Object, e As EventArgs)
        ' Объявление и инициализация переменных сессии.
        'Session("DB") = Nothing ' Подключение к БД.
        Session("UserName") = "" ' Имя пользователя.

        Session("StringMessage") = "Переменная сессии инициализирована"
    End Sub

End Class