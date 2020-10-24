<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/template/app/app.Master" CodeBehind="profile-view.aspx.vb" Inherits="contentoom.AppUserProfileView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Просмотр профиля - личный кабинет
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderApp" runat="server">

        <!--Заголовок 1-->
        <div class="release_title">
            <h2>Личный кабинет</h2>
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
            Физическое лицо				
        </div>

        <!--Вид пользователя-->
        <div class="botmarg17">
            <b>Вид пользователя</b>
            артист				
        </div>

        <!--Фамилия-->
        <div class="botmarg17"><b>Фамилия</b> Койчиев</div>

        <!--Имя-->
        <div class="botmarg17"><b>Имя</b> Хусниддин</div>

        <!--Отчество-->
        <div class="botmarg17"><b>Отчество</b> Хакимбекович</div>

        <!--Дата рождения-->
        <div class="botmarg37"><b>Дата рождения</b> 22.07.2020</div>

        <!--Паспортные данны-->
        <div class="botmarg17">
            <h2 id="passport" style="padding-top: 66px; margin-top: -66px;">ПАСПОРТНЫЕ ДАННЫЕ</h2>
        </div>

        <div class="botmarg17"><b>Серия и номер</b> 12345 123456780</div>

        <div class="botmarg17"><b>Кем выдан</b> dfg</div>

        <div class="botmarg17"><b>Код подразделения</b> dfg</div>

        <div class="botmarg17"><b>Дата выдачи</b> 09.09.2020</div>

        <!--Адрес регистрации-->
        <div class="botmarg17"><b>Адрес регистрации</b> г.Нижневартовск, ХМАО-Югра, Чапаева 83</div>

        <!--Гражданство-->
        <div class="botmarg37">
            <b>Гражданство</b>
            Киргизия																																																																																																																																																																																																																																																																																														
        </div>


        <!--Документы-->
        <div class="botmarg17">
            <h2 id="doc" style="padding-top: 66px; margin-top: -66px;">ДОКУМЕНТЫ</h2>
        </div>
        <ul id="doc_list" style="list-style-type: none;" class="botmarg37">
            <li class="doc_elem">
                <div class="flexim" style="align-items: center;">

                    <!--Даннеы файла-->
                    <div style="width: 100%">
                        <span style="display: block; line-height: 27px;">doc Без названия — копия.gif</span>
                        <span style="display: block; font-size: 13px; color: #93989d;">Добавлен 13.10.2020 в 11:37</span>
                    </div>

                    <!--Скачать-->
                    <a download="" href="/user-uploads/profile/1/doc Без названия — копия.gif" style="display: contents;" title="скачать">
                        <img src="/img/ico/download_active.svg" class="black" width="30px" height="30px"></a>

                </div>
            </li>
            <li class="doc_elem">
                <div class="flexim" style="align-items: center;">

                    <!--Даннеы файла-->
                    <div style="width: 100%">
                        <span style="display: block; line-height: 27px;">doc img.png</span>
                        <span style="display: block; font-size: 13px; color: #93989d;">Добавлен 13.10.2020 в 11:37</span>
                    </div>

                    <!--Скачать-->
                    <a download="" href="/user-uploads/profile/1/doc img.png" style="display: contents;" title="скачать">
                        <img src="/img/ico/download_active.svg" class="black" width="30px" height="30px"></a>

                </div>
            </li>
            <li class="doc_elem">
                <div class="flexim" style="align-items: center;">

                    <!--Даннеы файла-->
                    <div style="width: 100%">
                        <span style="display: block; line-height: 27px;">doc gori-3840x2160-gori-21590.jpg</span>
                        <span style="display: block; font-size: 13px; color: #93989d;">Добавлен 13.10.2020 в 11:37</span>
                    </div>

                    <!--Скачать-->
                    <a download="" href="/user-uploads/profile/1/doc gori-3840x2160-gori-21590.jpg" style="display: contents;" title="скачать">
                        <img src="/img/ico/download_active.svg" class="black" width="30px" height="30px"></a>

                </div>
            </li>
        </ul>

        <!--ДОПОЛНИТЕЛЬНЫЕ ДАННЫЕ-->
        <div class="botmarg17">
            <h2 id="plus" style="padding-top: 66px; margin-top: -66px;">ДОПОЛНИТЕЛЬНЫЕ ДАННЫЕ</h2>
        </div>

        <div class="botmarg17"><b>Счёт</b> </div>
        <div class="botmarg17"><b>ИНН</b> </div>
        <div class="botmarg37"><b>СНИЛС</b> </div>

        <!--ЛИЦЕНЗИОННЫЙ ДОГОВОР-->
        <div class="botmarg17">
            <h2 id="doc" style="padding-top: 66px; margin-top: -66px;">ЛИЦЕНЗИОННЫЙ ДОГОВОР</h2>
        </div>
        <div class="botmarg17">Подписан, <a href="/pages/app/user/licdoc.aspx">посмотреть</a></div>

        <div class="release_button_block flexim">
            <a href="/pages/app/user/profile-edit.aspx" class="button apply">РЕДАКТИРОВАТЬ</a>
        </div>

</asp:Content>
