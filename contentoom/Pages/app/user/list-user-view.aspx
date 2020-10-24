<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/template/app/app.Master" CodeBehind="list-user-view.aspx.vb" Inherits="contentoom.AppUserlistUserView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Список пользователей
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderApp" runat="server">

        <!--Заголовок 1-->
        <div class="release_title">
            <h2>СПИСОК</h2>
        </div>

        <!--Заголовок 2-->
        <div class="release_subtitle">
            <h1>ПРОСМОТР ПРОФИЛЯ</h1>
        </div>

        <div class="botmarg17">
            <h2 id="main" style="padding-top: 66px; margin-top: -66px;">ОСНОВНЫЕ ДАННЫЕ</h2>
        </div>

        <!--Тип пользователя-->
        <div class="botmarg17">
            <b>Тип пользователя</b>
        </div>

        <!--Вид пользователя-->
        <div class="botmarg17">
            <b>Вид пользователя</b>
            артист				
        </div>

        <!--Фамилия-->
        <div class="botmarg17"><b>Фамилия</b> Абдуллин</div>

        <!--Имя-->
        <div class="botmarg17"><b>Имя</b> </div>

        <!--Отчество-->
        <div class="botmarg17"><b>Отчество</b> Ирикович</div>

        <!--Дата рождения-->
        <div class="botmarg37"><b>Дата рождения</b> 30.05.1974</div>

        <!--Паспортные данны-->
        <div class="botmarg17">
            <h2 id="passport" style="padding-top: 66px; margin-top: -66px;">ПАСПОРТНЫЕ ДАННЫЕ</h2>
        </div>

        <div class="botmarg17"><b>Серия и номер</b> </div>

        <div class="botmarg17"><b>Кем выдан</b> </div>

        <div class="botmarg17"><b>Код подразделения</b> </div>

        <div class="botmarg17"><b>Дата выдачи</b> </div>

        <!--Адрес регистрации-->
        <div class="botmarg17"><b>Адрес регистрации</b> </div>

        <!--Гражданство-->
        <div class="botmarg37">
            <b>Гражданство</b>
            Россия																																																																																																																																
        </div>


        <!--Документы-->
        <div class="botmarg17">
            <h2 id="doc" style="padding-top: 66px; margin-top: -66px;">ДОКУМЕНТЫ</h2>
        </div>
        <ul id="doc_list" style="list-style-type: none;" class="botmarg37">
        </ul>

        <!--ДОПОЛНИТЕЛЬНЫЕ ДАННЫЕ-->
        <div class="botmarg17">
            <h2 id="plus" style="padding-top: 66px; margin-top: -66px;">ДОПОЛНИТЕЛЬНЫЕ ДАННЫЕ</h2>
        </div>

        <div class="botmarg17"><b>Не указано</b></div>

        <!--ЛИЦЕНЗИОННЫЙ ДОГОВОР-->
        <div class="botmarg17">
            <h2 id="doc" style="padding-top: 66px; margin-top: -66px;">ЛИЦЕНЗИОННЫЙ ДОГОВОР</h2>
        </div>
        <div class="botmarg17">
            ✔ Согласие получено	
        </div>
        <div>
            <img src="/user-uploads/profile/2/signature.png" width="350" height="250" style="border: solid 1px #8c8c8c;">
        </div>


        <div class="release_button_block flexim">
        </div>

</asp:Content>
