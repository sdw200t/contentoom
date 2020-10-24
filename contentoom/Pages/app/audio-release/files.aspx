<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/template/app/app.Master" CodeBehind="files.aspx.vb" Inherits="contentoom.AudioReleaseFiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Файлы аудио релиза
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderApp" runat="server">
    <!--Заголовок 1-->
    <div class="release_title">
        <h2>РЕДАКТИРОВАНИЕ АУДИО РЕЛИЗА: </h2>
    </div>
    <div class="release_block">
        <!--	контент-->
        <div class="release_content">
            <!--Заголовок 2-->
            <div class="release_subtitle">
                <h1>МЕТАДАННЫЕ ФОНОГРАММ</h1>
            </div>

            <!--топ меню-->
            <div class="release_menu_top" id="release_menu_top">
                <!--Данные релиза-->
                <div class="full_elem_menu">
                    <a href="/pages/app/audio-release/main.aspx">
                        <div class="elem_menu">
                            Данные релиза					
                        </div>
                    </a>
                </div>
                <!--Аудио файлы фонограмм-->
                <div class="full_elem_menu">
                    <a href="/pages/app/audio-release/files.aspx">
                        <div class="elem_menu_active">
                            Аудио файлы фонограмм					
                        </div>
                    </a>
                </div>
                <!--Метаданные фонограмм-->
                <div class="full_elem_menu">
                    <a href="/pages/app/audio-release/metadata.aspx">
                        <div class="elem_menu">
                            Метаданные фонограмм					
                        </div>
                    </a>
                </div>
                <!--Регионы-->
                <div class="full_elem_menu">
                    <a href="/pages/app/audio-release/regions.aspx">
                        <div class="elem_menu">
                            Регионы					
                        </div>
                    </a>
                </div>
                <!--Промо-->
                <div class="full_elem_menu">
                    <a href="/pages/app/audio-release/promo.aspx">
                        <div class="elem_menu">
                            Промо					
                        </div>
                    </a>
                </div>
                <!--Готовность-->
                <div class="full_elem_menu">
                    <a href="/pages/app/audio-release/ready.aspx">
                        <div class="elem_menu">
                            Готовность					
                        </div>
                    </a>
                </div>
                <!--Проверка и отправка-->
                <div class="full_elem_menu">
                    <a href="/pages/app/audio-release/check.aspx">
                        <div class="elem_menu">
                            Проверка и отправка					
                        </div>
                    </a>
                </div>
            </div>
            <!--/топ меню-->



            <script>
                (function () {  // анонимная функция (function(){ })(), чтобы переменные "a" и "b" не стали глобальными
                    var a = document.querySelector('#release_menu_top'), b = null;  // селектор блока, который нужно закрепить
                    window.addEventListener('scroll', Ascroll, false);
                    document.body.addEventListener('scroll', Ascroll, false);  // если у html и body высота равна 100%
                    function Ascroll() {
                        if (b == null) {  // добавить потомка-обёртку, чтобы убрать зависимость с соседями
                            var Sa = getComputedStyle(a, ''), s = '';
                            for (var i = 0; i < Sa.length; i++) {  // перечислить стили CSS, которые нужно скопировать с родителя
                                if (Sa[i].indexOf('overflow') == 0 || Sa[i].indexOf('padding') == 0 || Sa[i].indexOf('border') == 0 || Sa[i].indexOf('outline') == 0 || Sa[i].indexOf('box-shadow') == 0 || Sa[i].indexOf('background') == 0) {
                                    s += Sa[i] + ': ' + Sa.getPropertyValue(Sa[i]) + '; '
                                }
                            }
                            b = document.createElement('div');  // создать потомка
                            b.style.cssText = s + ' box-sizing: border-box; width: ' + a.offsetWidth + 'px; display: flex;';
                            a.insertBefore(b, a.firstChild);  // поместить потомка в цепляющийся блок первым
                            var l = a.childNodes.length;
                            for (var i = 1; i < l; i++) {  // переместить во вновь созданного потомка всех остальных потомков (итого: создан потомок-обёртка, внутри которого по прежнему работают скрипты)
                                b.appendChild(a.childNodes[1]);
                            }
                            a.style.height = b.getBoundingClientRect().height + 'px';  // если под скользящим элементом есть другие блоки, можно своё значение
                            a.style.padding = '0';
                            a.style.border = '0';  // если элементу присвоен padding или border
                        }
                        if (a.getBoundingClientRect().top <= 0) { // elem.getBoundingClientRect() возвращает в px координаты элемента относительно верхнего левого угла области просмотра окна браузера
                            b.className = 'sticky';
                        } else {
                            b.className = '';
                        }
                        window.addEventListener('resize', function () {
                            a.children[0].style.width = getComputedStyle(a, '').width
                        }, false);  // если изменить размер окна браузера, измениться ширина элемента
                    }
                })()
            </script>

            <!--Область перетаскивания-->

            <div class="AudioUpload fs-upload-element fs-upload fs-light">
                <div class="fs-upload-target">НАЖМИТЕ ИЛИ ПЕРЕТАЩИТЕ ФАЙЛЫ В ЭТУ ОБЛАСТЬ</div>
                <input class="fs-upload-input" type="file" multiple=""></div>
            <div id="AudioArea" class="AudioArea">
                <div id="AudioResult" class="AudioResult"></div>
            </div>



            <!--Область контента-->
            <div id="refresh_content">
                <ul id="list_content" class="ui-sortable">
                    <li class="file_list_elem flexim botmarg17 black ui-sortable-handle">
                        <div class="file_list_elem_number W45" id="846">
                            <div>1</div>
                        </div>

                        <div class="flexim">
                            <audio id="sound_846">
                                <source src="/user-uploads/preparation/release_audio/4/845/audtrk_01_Povoroty_CD_mast-p2p.wav" type="audio/ogg">
                            </audio>
                            <div onclick="play_846()" id="play_846" class="audio_play">
                                <img width="40px" height="40px" src="/img/ico/audio_play.svg"></div>
                            <div onclick="pause_846()" id="pause_846" class="audio_pause" hidden="">
                                <img width="40px" height="40px" src="/img/ico/audio_pause.svg"></div>
                            <div onclick="stop_846()" class="audio_stop">
                                <img width="22px" height="22px" src="/img/ico/audio_stop.svg"></div>
                        </div>

                        <script>
                            function play_846() {
                                $("audio").trigger('pause');
                                $(".audio_play").show();
                                $(".audio_pause").hide();
                                $("#play_846").hide();
                                $("#pause_846").show();
                                document.getElementById('sound_846').play();
                            }

                            function pause_846() {
                                document.getElementById('sound_846').pause();
                                $("#pause_846").hide();
                                $("#play_846").show();
                            }

                            function stop_846() {
                                document.getElementById('sound_846').pause();
                                document.getElementById('sound_846').currentTime = 0;
                                $("#pause_846").hide();
                                $("#play_846").show();
                            }
                        </script>
                        <div class="file_list_elem_r">01_Povoroty_CD_mast-p2p</div>
                        <div class="flexim">
                            <!--Кнопка создать рингтон-->

                            <!--Кнопка скачать-->
                            <a download="" href="/user-uploads/preparation/release_audio/4/845/audtrk_01_Povoroty_CD_mast-p2p.wav" style="margin-right: 20px;" title="Скачать">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px"></a>

                            <!--Кнопка удалить-->
                            <div id="delRelease_846" class="delRelease_846 delText" title="Удалить">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px"></div>
                        </div>


                        <script>
                            window.BXDEBUG = true;
                            BX.ready(function () {
                                var oPopup_846 = new BX.PopupWindow('call_feedback_846', window.body, {
                                    autoHide: true,
                                    offsetTop: 1,
                                    offsetLeft: 0,
                                    lightShadow: true,
                                    closeIcon: false,
                                    closeByEsc: true,
                                    overlay: {
                                        backgroundColor: 'black', opacity: '50'
                                    },
                                    buttons: [
                                        new BX.PopupWindowButton({
                                            text: "Да",
                                            className: "button_block green W75",
                                            events: {
                                                click: function () {
                                                    //Проверям загрузилась ли страци полностью
                                                    $(document).ready(function () {
                                                        //Действие по нажатию элемента с ID = btn_refresh
                                                        $.ajax({
                                                            method: "GET",
                                                            url: "/pages/app/audio-release/refresh-page/delfile.aspx", //загружаемая страница
                                                            data: { deleteid: 846, fileparam: "/home/e/evolik/contentoom.com/public_html/user-uploads/preparation/release_audio/4/845/audtrk_01_Povoroty_CD_mast-p2p.wav" }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    method: "GET",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-files.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {
                                                                        echo("Ошибка. Обновите пожалуйста страницу");
                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });

                                                    });

                                                    this.popupWindow.close();

                                                }
                                            }
                                        }),
                                        new BX.PopupWindowButton({
                                            text: "Нет",
                                            className: "button_block red W75",
                                            events: {
                                                click: function () {
                                                    this.popupWindow.close();
                                                }
                                            }
                                        })
                                    ]
                                });
                                oPopup_846.setContent(BX('hideBlock_846'));
                                BX.bindDelegate(
                                    document.body, 'click', { className: 'delRelease_846' },
                                    BX.proxy(function (e) {
                                        if (!e)
                                            e = window.event;
                                        oPopup_846.show();
                                        return BX.PreventDefault(e);
                                    }, oPopup_846)
                                );
                                document.getElementById('delRelease_846').focus();
                            });
                        </script>

                    </li>
                    <li class="file_list_elem flexim botmarg17 black ui-sortable-handle">
                        <div class="file_list_elem_number W45" id="847">
                            <div>2</div>
                        </div>

                        <div class="flexim">
                            <audio id="sound_847">
                                <source src="/user-uploads/preparation/release_audio/4/845/audtrk_02_Vne_Pravil_CD_mast_2-p2p.wav" type="audio/ogg">
                            </audio>
                            <div onclick="play_847()" id="play_847" class="audio_play">
                                <img width="40px" height="40px" src="/img/ico/audio_play.svg"></div>
                            <div onclick="pause_847()" id="pause_847" class="audio_pause" hidden="">
                                <img width="40px" height="40px" src="/img/ico/audio_pause.svg"></div>
                            <div onclick="stop_847()" class="audio_stop">
                                <img width="22px" height="22px" src="/img/ico/audio_stop.svg"></div>
                        </div>

                        <script>
                            function play_847() {
                                $("audio").trigger('pause');
                                $(".audio_play").show();
                                $(".audio_pause").hide();
                                $("#play_847").hide();
                                $("#pause_847").show();
                                document.getElementById('sound_847').play();
                            }

                            function pause_847() {
                                document.getElementById('sound_847').pause();
                                $("#pause_847").hide();
                                $("#play_847").show();
                            }

                            function stop_847() {
                                document.getElementById('sound_847').pause();
                                document.getElementById('sound_847').currentTime = 0;
                                $("#pause_847").hide();
                                $("#play_847").show();
                            }
                        </script>
                        <div class="file_list_elem_r">02_Vne_Pravil_CD_mast_2-p2p</div>
                        <div class="flexim">
                            <!--Кнопка создать рингтон-->

                            <!--Кнопка скачать-->
                            <a download="" href="/user-uploads/preparation/release_audio/4/845/audtrk_02_Vne_Pravil_CD_mast_2-p2p.wav" style="margin-right: 20px;" title="Скачать">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px"></a>

                            <!--Кнопка удалить-->
                            <div id="delRelease_847" class="delRelease_847 delText" title="Удалить">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px"></div>
                        </div>


                        <script>
                            window.BXDEBUG = true;
                            BX.ready(function () {
                                var oPopup_847 = new BX.PopupWindow('call_feedback_847', window.body, {
                                    autoHide: true,
                                    offsetTop: 1,
                                    offsetLeft: 0,
                                    lightShadow: true,
                                    closeIcon: false,
                                    closeByEsc: true,
                                    overlay: {
                                        backgroundColor: 'black', opacity: '50'
                                    },
                                    buttons: [
                                        new BX.PopupWindowButton({
                                            text: "Да",
                                            className: "button_block green W75",
                                            events: {
                                                click: function () {
                                                    //Проверям загрузилась ли страци полностью
                                                    $(document).ready(function () {
                                                        //Действие по нажатию элемента с ID = btn_refresh
                                                        $.ajax({
                                                            method: "GET",
                                                            url: "/pages/app/audio-release/refresh-page/delfile.aspx", //загружаемая страница
                                                            data: { deleteid: 847, fileparam: "/home/e/evolik/contentoom.com/public_html/user-uploads/preparation/release_audio/4/845/audtrk_02_Vne_Pravil_CD_mast_2-p2p.wav" }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    method: "GET",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-files.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {
                                                                        echo("Ошибка. Обновите пожалуйста страницу");
                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });

                                                    });

                                                    this.popupWindow.close();

                                                }
                                            }
                                        }),
                                        new BX.PopupWindowButton({
                                            text: "Нет",
                                            className: "button_block red W75",
                                            events: {
                                                click: function () {
                                                    this.popupWindow.close();
                                                }
                                            }
                                        })
                                    ]
                                });
                                oPopup_847.setContent(BX('hideBlock_847'));
                                BX.bindDelegate(
                                    document.body, 'click', { className: 'delRelease_847' },
                                    BX.proxy(function (e) {
                                        if (!e)
                                            e = window.event;
                                        oPopup_847.show();
                                        return BX.PreventDefault(e);
                                    }, oPopup_847)
                                );
                                document.getElementById('delRelease_847').focus();
                            });
                        </script>

                    </li>
                    <li class="file_list_elem flexim botmarg17 black ui-sortable-handle">
                        <div class="file_list_elem_number W45" id="848">
                            <div>3</div>
                        </div>

                        <div class="flexim">
                            <audio id="sound_848">
                                <source src="/user-uploads/preparation/release_audio/4/845/audtrk_03_Pulse_CD_mast-p2p.wav" type="audio/ogg">
                            </audio>
                            <div onclick="play_848()" id="play_848" class="audio_play">
                                <img width="40px" height="40px" src="/img/ico/audio_play.svg"></div>
                            <div onclick="pause_848()" id="pause_848" class="audio_pause" hidden="">
                                <img width="40px" height="40px" src="/img/ico/audio_pause.svg"></div>
                            <div onclick="stop_848()" class="audio_stop">
                                <img width="22px" height="22px" src="/img/ico/audio_stop.svg"></div>
                        </div>

                        <script>
                            function play_848() {
                                $("audio").trigger('pause');
                                $(".audio_play").show();
                                $(".audio_pause").hide();
                                $("#play_848").hide();
                                $("#pause_848").show();
                                document.getElementById('sound_848').play();
                            }

                            function pause_848() {
                                document.getElementById('sound_848').pause();
                                $("#pause_848").hide();
                                $("#play_848").show();
                            }

                            function stop_848() {
                                document.getElementById('sound_848').pause();
                                document.getElementById('sound_848').currentTime = 0;
                                $("#pause_848").hide();
                                $("#play_848").show();
                            }
                        </script>
                        <div class="file_list_elem_r">03_Pulse_CD_mast-p2p</div>
                        <div class="flexim">
                            <!--Кнопка создать рингтон-->

                            <!--Кнопка скачать-->
                            <a download="" href="/user-uploads/preparation/release_audio/4/845/audtrk_03_Pulse_CD_mast-p2p.wav" style="margin-right: 20px;" title="Скачать">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px"></a>

                            <!--Кнопка удалить-->
                            <div id="delRelease_848" class="delRelease_848 delText" title="Удалить">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px"></div>
                        </div>


                        <script>
                            window.BXDEBUG = true;
                            BX.ready(function () {
                                var oPopup_848 = new BX.PopupWindow('call_feedback_848', window.body, {
                                    autoHide: true,
                                    offsetTop: 1,
                                    offsetLeft: 0,
                                    lightShadow: true,
                                    closeIcon: false,
                                    closeByEsc: true,
                                    overlay: {
                                        backgroundColor: 'black', opacity: '50'
                                    },
                                    buttons: [
                                        new BX.PopupWindowButton({
                                            text: "Да",
                                            className: "button_block green W75",
                                            events: {
                                                click: function () {
                                                    //Проверям загрузилась ли страци полностью
                                                    $(document).ready(function () {
                                                        //Действие по нажатию элемента с ID = btn_refresh
                                                        $.ajax({
                                                            method: "GET",
                                                            url: "/pages/app/audio-release/refresh-page/delfile.aspx", //загружаемая страница
                                                            data: { deleteid: 848, fileparam: "/home/e/evolik/contentoom.com/public_html/user-uploads/preparation/release_audio/4/845/audtrk_03_Pulse_CD_mast-p2p.wav" }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    method: "GET",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-files.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {
                                                                        echo("Ошибка. Обновите пожалуйста страницу");
                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });

                                                    });

                                                    this.popupWindow.close();

                                                }
                                            }
                                        }),
                                        new BX.PopupWindowButton({
                                            text: "Нет",
                                            className: "button_block red W75",
                                            events: {
                                                click: function () {
                                                    this.popupWindow.close();
                                                }
                                            }
                                        })
                                    ]
                                });
                                oPopup_848.setContent(BX('hideBlock_848'));
                                BX.bindDelegate(
                                    document.body, 'click', { className: 'delRelease_848' },
                                    BX.proxy(function (e) {
                                        if (!e)
                                            e = window.event;
                                        oPopup_848.show();
                                        return BX.PreventDefault(e);
                                    }, oPopup_848)
                                );
                                document.getElementById('delRelease_848').focus();
                            });
                        </script>

                    </li>
                    <li class="file_list_elem flexim botmarg17 black ui-sortable-handle">
                        <div class="file_list_elem_number W45" id="849">
                            <div>4</div>
                        </div>

                        <div class="flexim">
                            <audio id="sound_849">
                                <source src="/user-uploads/preparation/release_audio/4/845/audtrk_04_Jeff_44_CD_mast-p2p.wav" type="audio/ogg">
                            </audio>
                            <div onclick="play_849()" id="play_849" class="audio_play">
                                <img width="40px" height="40px" src="/img/ico/audio_play.svg"></div>
                            <div onclick="pause_849()" id="pause_849" class="audio_pause" hidden="">
                                <img width="40px" height="40px" src="/img/ico/audio_pause.svg"></div>
                            <div onclick="stop_849()" class="audio_stop">
                                <img width="22px" height="22px" src="/img/ico/audio_stop.svg"></div>
                        </div>

                        <script>
                            function play_849() {
                                $("audio").trigger('pause');
                                $(".audio_play").show();
                                $(".audio_pause").hide();
                                $("#play_849").hide();
                                $("#pause_849").show();
                                document.getElementById('sound_849').play();
                            }

                            function pause_849() {
                                document.getElementById('sound_849').pause();
                                $("#pause_849").hide();
                                $("#play_849").show();
                            }

                            function stop_849() {
                                document.getElementById('sound_849').pause();
                                document.getElementById('sound_849').currentTime = 0;
                                $("#pause_849").hide();
                                $("#play_849").show();
                            }
                        </script>
                        <div class="file_list_elem_r">04_Jeff_44_CD_mast-p2p</div>
                        <div class="flexim">
                            <!--Кнопка создать рингтон-->

                            <!--Кнопка скачать-->
                            <a download="" href="/user-uploads/preparation/release_audio/4/845/audtrk_04_Jeff_44_CD_mast-p2p.wav" style="margin-right: 20px;" title="Скачать">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px"></a>

                            <!--Кнопка удалить-->
                            <div id="delRelease_849" class="delRelease_849 delText" title="Удалить">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px"></div>
                        </div>


                        <script>
                            window.BXDEBUG = true;
                            BX.ready(function () {
                                var oPopup_849 = new BX.PopupWindow('call_feedback_849', window.body, {
                                    autoHide: true,
                                    offsetTop: 1,
                                    offsetLeft: 0,
                                    lightShadow: true,
                                    closeIcon: false,
                                    closeByEsc: true,
                                    overlay: {
                                        backgroundColor: 'black', opacity: '50'
                                    },
                                    buttons: [
                                        new BX.PopupWindowButton({
                                            text: "Да",
                                            className: "button_block green W75",
                                            events: {
                                                click: function () {
                                                    //Проверям загрузилась ли страци полностью
                                                    $(document).ready(function () {
                                                        //Действие по нажатию элемента с ID = btn_refresh
                                                        $.ajax({
                                                            method: "GET",
                                                            url: "/pages/app/audio-release/refresh-page/delfile.aspx", //загружаемая страница
                                                            data: { deleteid: 849, fileparam: "/home/e/evolik/contentoom.com/public_html/user-uploads/preparation/release_audio/4/845/audtrk_04_Jeff_44_CD_mast-p2p.wav" }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    method: "GET",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-files.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {
                                                                        echo("Ошибка. Обновите пожалуйста страницу");
                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });

                                                    });

                                                    this.popupWindow.close();

                                                }
                                            }
                                        }),
                                        new BX.PopupWindowButton({
                                            text: "Нет",
                                            className: "button_block red W75",
                                            events: {
                                                click: function () {
                                                    this.popupWindow.close();
                                                }
                                            }
                                        })
                                    ]
                                });
                                oPopup_849.setContent(BX('hideBlock_849'));
                                BX.bindDelegate(
                                    document.body, 'click', { className: 'delRelease_849' },
                                    BX.proxy(function (e) {
                                        if (!e)
                                            e = window.event;
                                        oPopup_849.show();
                                        return BX.PreventDefault(e);
                                    }, oPopup_849)
                                );
                                document.getElementById('delRelease_849').focus();
                            });
                        </script>

                    </li>
                    <li class="file_list_elem flexim botmarg17 black ui-sortable-handle">
                        <div class="file_list_elem_number W45" id="850">
                            <div>5</div>
                        </div>

                        <div class="flexim">
                            <audio id="sound_850">
                                <source src="/user-uploads/preparation/release_audio/4/845/audtrk_05_Game_CD_mast-p2p.wav" type="audio/ogg">
                            </audio>
                            <div onclick="play_850()" id="play_850" class="audio_play">
                                <img width="40px" height="40px" src="/img/ico/audio_play.svg"></div>
                            <div onclick="pause_850()" id="pause_850" class="audio_pause" hidden="">
                                <img width="40px" height="40px" src="/img/ico/audio_pause.svg"></div>
                            <div onclick="stop_850()" class="audio_stop">
                                <img width="22px" height="22px" src="/img/ico/audio_stop.svg"></div>
                        </div>

                        <script>
                            function play_850() {
                                $("audio").trigger('pause');
                                $(".audio_play").show();
                                $(".audio_pause").hide();
                                $("#play_850").hide();
                                $("#pause_850").show();
                                document.getElementById('sound_850').play();
                            }

                            function pause_850() {
                                document.getElementById('sound_850').pause();
                                $("#pause_850").hide();
                                $("#play_850").show();
                            }

                            function stop_850() {
                                document.getElementById('sound_850').pause();
                                document.getElementById('sound_850').currentTime = 0;
                                $("#pause_850").hide();
                                $("#play_850").show();
                            }
                        </script>
                        <div class="file_list_elem_r">05_Game_CD_mast-p2p</div>
                        <div class="flexim">
                            <!--Кнопка создать рингтон-->

                            <!--Кнопка скачать-->
                            <a download="" href="/user-uploads/preparation/release_audio/4/845/audtrk_05_Game_CD_mast-p2p.wav" style="margin-right: 20px;" title="Скачать">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px"></a>

                            <!--Кнопка удалить-->
                            <div id="delRelease_850" class="delRelease_850 delText" title="Удалить">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px"></div>
                        </div>


                        <script>
                            window.BXDEBUG = true;
                            BX.ready(function () {
                                var oPopup_850 = new BX.PopupWindow('call_feedback_850', window.body, {
                                    autoHide: true,
                                    offsetTop: 1,
                                    offsetLeft: 0,
                                    lightShadow: true,
                                    closeIcon: false,
                                    closeByEsc: true,
                                    overlay: {
                                        backgroundColor: 'black', opacity: '50'
                                    },
                                    buttons: [
                                        new BX.PopupWindowButton({
                                            text: "Да",
                                            className: "button_block green W75",
                                            events: {
                                                click: function () {
                                                    //Проверям загрузилась ли страци полностью
                                                    $(document).ready(function () {
                                                        //Действие по нажатию элемента с ID = btn_refresh
                                                        $.ajax({
                                                            method: "GET",
                                                            url: "/pages/app/audio-release/refresh-page/delfile.aspx", //загружаемая страница
                                                            data: { deleteid: 850, fileparam: "/home/e/evolik/contentoom.com/public_html/user-uploads/preparation/release_audio/4/845/audtrk_05_Game_CD_mast-p2p.wav" }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    method: "GET",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-files.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {
                                                                        echo("Ошибка. Обновите пожалуйста страницу");
                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });

                                                    });

                                                    this.popupWindow.close();

                                                }
                                            }
                                        }),
                                        new BX.PopupWindowButton({
                                            text: "Нет",
                                            className: "button_block red W75",
                                            events: {
                                                click: function () {
                                                    this.popupWindow.close();
                                                }
                                            }
                                        })
                                    ]
                                });
                                oPopup_850.setContent(BX('hideBlock_850'));
                                BX.bindDelegate(
                                    document.body, 'click', { className: 'delRelease_850' },
                                    BX.proxy(function (e) {
                                        if (!e)
                                            e = window.event;
                                        oPopup_850.show();
                                        return BX.PreventDefault(e);
                                    }, oPopup_850)
                                );
                                document.getElementById('delRelease_850').focus();
                            });
                        </script>

                    </li>
                    <li class="file_list_elem flexim botmarg17 black ui-sortable-handle">
                        <div class="file_list_elem_number W45" id="851">
                            <div>6</div>
                        </div>

                        <div class="flexim">
                            <audio id="sound_851">
                                <source src="/user-uploads/preparation/release_audio/4/845/audtrk_06_Extaz_CD_mast-p2p.wav" type="audio/ogg">
                            </audio>
                            <div onclick="play_851()" id="play_851" class="audio_play">
                                <img width="40px" height="40px" src="/img/ico/audio_play.svg"></div>
                            <div onclick="pause_851()" id="pause_851" class="audio_pause" hidden="">
                                <img width="40px" height="40px" src="/img/ico/audio_pause.svg"></div>
                            <div onclick="stop_851()" class="audio_stop">
                                <img width="22px" height="22px" src="/img/ico/audio_stop.svg"></div>
                        </div>

                        <script>
                            function play_851() {
                                $("audio").trigger('pause');
                                $(".audio_play").show();
                                $(".audio_pause").hide();
                                $("#play_851").hide();
                                $("#pause_851").show();
                                document.getElementById('sound_851').play();
                            }

                            function pause_851() {
                                document.getElementById('sound_851').pause();
                                $("#pause_851").hide();
                                $("#play_851").show();
                            }

                            function stop_851() {
                                document.getElementById('sound_851').pause();
                                document.getElementById('sound_851').currentTime = 0;
                                $("#pause_851").hide();
                                $("#play_851").show();
                            }
                        </script>
                        <div class="file_list_elem_r">06_Extaz_CD_mast-p2p</div>
                        <div class="flexim">
                            <!--Кнопка создать рингтон-->

                            <!--Кнопка скачать-->
                            <a download="" href="/user-uploads/preparation/release_audio/4/845/audtrk_06_Extaz_CD_mast-p2p.wav" style="margin-right: 20px;" title="Скачать">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px"></a>

                            <!--Кнопка удалить-->
                            <div id="delRelease_851" class="delRelease_851 delText" title="Удалить">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px"></div>
                        </div>


                        <script>
                            window.BXDEBUG = true;
                            BX.ready(function () {
                                var oPopup_851 = new BX.PopupWindow('call_feedback_851', window.body, {
                                    autoHide: true,
                                    offsetTop: 1,
                                    offsetLeft: 0,
                                    lightShadow: true,
                                    closeIcon: false,
                                    closeByEsc: true,
                                    overlay: {
                                        backgroundColor: 'black', opacity: '50'
                                    },
                                    buttons: [
                                        new BX.PopupWindowButton({
                                            text: "Да",
                                            className: "button_block green W75",
                                            events: {
                                                click: function () {
                                                    //Проверям загрузилась ли страци полностью
                                                    $(document).ready(function () {
                                                        //Действие по нажатию элемента с ID = btn_refresh
                                                        $.ajax({
                                                            method: "GET",
                                                            url: "/pages/app/audio-release/refresh-page/delfile.aspx", //загружаемая страница
                                                            data: { deleteid: 851, fileparam: "/home/e/evolik/contentoom.com/public_html/user-uploads/preparation/release_audio/4/845/audtrk_06_Extaz_CD_mast-p2p.wav" }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    method: "GET",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-files.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {
                                                                        echo("Ошибка. Обновите пожалуйста страницу");
                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });

                                                    });

                                                    this.popupWindow.close();

                                                }
                                            }
                                        }),
                                        new BX.PopupWindowButton({
                                            text: "Нет",
                                            className: "button_block red W75",
                                            events: {
                                                click: function () {
                                                    this.popupWindow.close();
                                                }
                                            }
                                        })
                                    ]
                                });
                                oPopup_851.setContent(BX('hideBlock_851'));
                                BX.bindDelegate(
                                    document.body, 'click', { className: 'delRelease_851' },
                                    BX.proxy(function (e) {
                                        if (!e)
                                            e = window.event;
                                        oPopup_851.show();
                                        return BX.PreventDefault(e);
                                    }, oPopup_851)
                                );
                                document.getElementById('delRelease_851').focus();
                            });
                        </script>

                    </li>
                    <li class="file_list_elem flexim botmarg17 black ui-sortable-handle">
                        <div class="file_list_elem_number W45" id="852">
                            <div>7</div>
                        </div>

                        <div class="flexim">
                            <audio id="sound_852">
                                <source src="/user-uploads/preparation/release_audio/4/845/audtrk_07_Neokon_Povest3.3-p2p.wav" type="audio/ogg">
                            </audio>
                            <div onclick="play_852()" id="play_852" class="audio_play">
                                <img width="40px" height="40px" src="/img/ico/audio_play.svg"></div>
                            <div onclick="pause_852()" id="pause_852" class="audio_pause" hidden="">
                                <img width="40px" height="40px" src="/img/ico/audio_pause.svg"></div>
                            <div onclick="stop_852()" class="audio_stop">
                                <img width="22px" height="22px" src="/img/ico/audio_stop.svg"></div>
                        </div>

                        <script>
                            function play_852() {
                                $("audio").trigger('pause');
                                $(".audio_play").show();
                                $(".audio_pause").hide();
                                $("#play_852").hide();
                                $("#pause_852").show();
                                document.getElementById('sound_852').play();
                            }

                            function pause_852() {
                                document.getElementById('sound_852').pause();
                                $("#pause_852").hide();
                                $("#play_852").show();
                            }

                            function stop_852() {
                                document.getElementById('sound_852').pause();
                                document.getElementById('sound_852').currentTime = 0;
                                $("#pause_852").hide();
                                $("#play_852").show();
                            }
                        </script>
                        <div class="file_list_elem_r">07_Neokon_Povest3.3-p2p</div>
                        <div class="flexim">
                            <!--Кнопка создать рингтон-->

                            <!--Кнопка скачать-->
                            <a download="" href="/user-uploads/preparation/release_audio/4/845/audtrk_07_Neokon_Povest3.3-p2p.wav" style="margin-right: 20px;" title="Скачать">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px"></a>

                            <!--Кнопка удалить-->
                            <div id="delRelease_852" class="delRelease_852 delText" title="Удалить">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px"></div>
                        </div>


                        <script>
                            window.BXDEBUG = true;
                            BX.ready(function () {
                                var oPopup_852 = new BX.PopupWindow('call_feedback_852', window.body, {
                                    autoHide: true,
                                    offsetTop: 1,
                                    offsetLeft: 0,
                                    lightShadow: true,
                                    closeIcon: false,
                                    closeByEsc: true,
                                    overlay: {
                                        backgroundColor: 'black', opacity: '50'
                                    },
                                    buttons: [
                                        new BX.PopupWindowButton({
                                            text: "Да",
                                            className: "button_block green W75",
                                            events: {
                                                click: function () {
                                                    //Проверям загрузилась ли страци полностью
                                                    $(document).ready(function () {
                                                        //Действие по нажатию элемента с ID = btn_refresh
                                                        $.ajax({
                                                            method: "GET",
                                                            url: "/pages/app/audio-release/refresh-page/delfile.aspx", //загружаемая страница
                                                            data: { deleteid: 852, fileparam: "/home/e/evolik/contentoom.com/public_html/user-uploads/preparation/release_audio/4/845/audtrk_07_Neokon_Povest3.3-p2p.wav" }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    method: "GET",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-files.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {
                                                                        echo("Ошибка. Обновите пожалуйста страницу");
                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });

                                                    });

                                                    this.popupWindow.close();

                                                }
                                            }
                                        }),
                                        new BX.PopupWindowButton({
                                            text: "Нет",
                                            className: "button_block red W75",
                                            events: {
                                                click: function () {
                                                    this.popupWindow.close();
                                                }
                                            }
                                        })
                                    ]
                                });
                                oPopup_852.setContent(BX('hideBlock_852'));
                                BX.bindDelegate(
                                    document.body, 'click', { className: 'delRelease_852' },
                                    BX.proxy(function (e) {
                                        if (!e)
                                            e = window.event;
                                        oPopup_852.show();
                                        return BX.PreventDefault(e);
                                    }, oPopup_852)
                                );
                                document.getElementById('delRelease_852').focus();
                            });
                        </script>

                    </li>
                    <li class="file_list_elem flexim botmarg17 black ui-sortable-handle">
                        <div class="file_list_elem_number W45" id="853">
                            <div>8</div>
                        </div>

                        <div class="flexim">
                            <audio id="sound_853">
                                <source src="/user-uploads/preparation/release_audio/4/845/audtrk_08_SexHorses_CD_mast-p2p.wav" type="audio/ogg">
                            </audio>
                            <div onclick="play_853()" id="play_853" class="audio_play">
                                <img width="40px" height="40px" src="/img/ico/audio_play.svg"></div>
                            <div onclick="pause_853()" id="pause_853" class="audio_pause" hidden="">
                                <img width="40px" height="40px" src="/img/ico/audio_pause.svg"></div>
                            <div onclick="stop_853()" class="audio_stop">
                                <img width="22px" height="22px" src="/img/ico/audio_stop.svg"></div>
                        </div>

                        <script>
                            function play_853() {
                                $("audio").trigger('pause');
                                $(".audio_play").show();
                                $(".audio_pause").hide();
                                $("#play_853").hide();
                                $("#pause_853").show();
                                document.getElementById('sound_853').play();
                            }

                            function pause_853() {
                                document.getElementById('sound_853').pause();
                                $("#pause_853").hide();
                                $("#play_853").show();
                            }

                            function stop_853() {
                                document.getElementById('sound_853').pause();
                                document.getElementById('sound_853').currentTime = 0;
                                $("#pause_853").hide();
                                $("#play_853").show();
                            }
                        </script>
                        <div class="file_list_elem_r">08_SexHorses_CD_mast-p2p</div>
                        <div class="flexim">
                            <!--Кнопка создать рингтон-->

                            <!--Кнопка скачать-->
                            <a download="" href="/user-uploads/preparation/release_audio/4/845/audtrk_08_SexHorses_CD_mast-p2p.wav" style="margin-right: 20px;" title="Скачать">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px"></a>

                            <!--Кнопка удалить-->
                            <div id="delRelease_853" class="delRelease_853 delText" title="Удалить">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px"></div>
                        </div>


                        <script>
                            window.BXDEBUG = true;
                            BX.ready(function () {
                                var oPopup_853 = new BX.PopupWindow('call_feedback_853', window.body, {
                                    autoHide: true,
                                    offsetTop: 1,
                                    offsetLeft: 0,
                                    lightShadow: true,
                                    closeIcon: false,
                                    closeByEsc: true,
                                    overlay: {
                                        backgroundColor: 'black', opacity: '50'
                                    },
                                    buttons: [
                                        new BX.PopupWindowButton({
                                            text: "Да",
                                            className: "button_block green W75",
                                            events: {
                                                click: function () {
                                                    //Проверям загрузилась ли страци полностью
                                                    $(document).ready(function () {
                                                        //Действие по нажатию элемента с ID = btn_refresh
                                                        $.ajax({
                                                            method: "GET",
                                                            url: "/pages/app/audio-release/refresh-page/delfile.aspx", //загружаемая страница
                                                            data: { deleteid: 853, fileparam: "/home/e/evolik/contentoom.com/public_html/user-uploads/preparation/release_audio/4/845/audtrk_08_SexHorses_CD_mast-p2p.wav" }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    method: "GET",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-files.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {
                                                                        echo("Ошибка. Обновите пожалуйста страницу");
                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });

                                                    });

                                                    this.popupWindow.close();

                                                }
                                            }
                                        }),
                                        new BX.PopupWindowButton({
                                            text: "Нет",
                                            className: "button_block red W75",
                                            events: {
                                                click: function () {
                                                    this.popupWindow.close();
                                                }
                                            }
                                        })
                                    ]
                                });
                                oPopup_853.setContent(BX('hideBlock_853'));
                                BX.bindDelegate(
                                    document.body, 'click', { className: 'delRelease_853' },
                                    BX.proxy(function (e) {
                                        if (!e)
                                            e = window.event;
                                        oPopup_853.show();
                                        return BX.PreventDefault(e);
                                    }, oPopup_853)
                                );
                                document.getElementById('delRelease_853').focus();
                            });
                        </script>

                    </li>
                    <li class="file_list_elem flexim botmarg17 black ui-sortable-handle">
                        <div class="file_list_elem_number W45" id="854">
                            <div>9</div>
                        </div>

                        <div class="flexim">
                            <audio id="sound_854">
                                <source src="/user-uploads/preparation/release_audio/4/845/audtrk_09_S_Blues_CD_mast-p2p.wav" type="audio/ogg">
                            </audio>
                            <div onclick="play_854()" id="play_854" class="audio_play">
                                <img width="40px" height="40px" src="/img/ico/audio_play.svg"></div>
                            <div onclick="pause_854()" id="pause_854" class="audio_pause" hidden="">
                                <img width="40px" height="40px" src="/img/ico/audio_pause.svg"></div>
                            <div onclick="stop_854()" class="audio_stop">
                                <img width="22px" height="22px" src="/img/ico/audio_stop.svg"></div>
                        </div>

                        <script>
                            function play_854() {
                                $("audio").trigger('pause');
                                $(".audio_play").show();
                                $(".audio_pause").hide();
                                $("#play_854").hide();
                                $("#pause_854").show();
                                document.getElementById('sound_854').play();
                            }

                            function pause_854() {
                                document.getElementById('sound_854').pause();
                                $("#pause_854").hide();
                                $("#play_854").show();
                            }

                            function stop_854() {
                                document.getElementById('sound_854').pause();
                                document.getElementById('sound_854').currentTime = 0;
                                $("#pause_854").hide();
                                $("#play_854").show();
                            }
                        </script>
                        <div class="file_list_elem_r">09_S_Blues_CD_mast-p2p</div>
                        <div class="flexim">
                            <!--Кнопка создать рингтон-->

                            <!--Кнопка скачать-->
                            <a download="" href="/user-uploads/preparation/release_audio/4/845/audtrk_09_S_Blues_CD_mast-p2p.wav" style="margin-right: 20px;" title="Скачать">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px"></a>

                            <!--Кнопка удалить-->
                            <div id="delRelease_854" class="delRelease_854 delText" title="Удалить">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px"></div>
                        </div>


                        <script>
                            window.BXDEBUG = true;
                            BX.ready(function () {
                                var oPopup_854 = new BX.PopupWindow('call_feedback_854', window.body, {
                                    autoHide: true,
                                    offsetTop: 1,
                                    offsetLeft: 0,
                                    lightShadow: true,
                                    closeIcon: false,
                                    closeByEsc: true,
                                    overlay: {
                                        backgroundColor: 'black', opacity: '50'
                                    },
                                    buttons: [
                                        new BX.PopupWindowButton({
                                            text: "Да",
                                            className: "button_block green W75",
                                            events: {
                                                click: function () {
                                                    //Проверям загрузилась ли страци полностью
                                                    $(document).ready(function () {
                                                        //Действие по нажатию элемента с ID = btn_refresh
                                                        $.ajax({
                                                            method: "GET",
                                                            url: "/pages/app/audio-release/refresh-page/delfile.aspx", //загружаемая страница
                                                            data: { deleteid: 854, fileparam: "/home/e/evolik/contentoom.com/public_html/user-uploads/preparation/release_audio/4/845/audtrk_09_S_Blues_CD_mast-p2p.wav" }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    method: "GET",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-files.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {
                                                                        echo("Ошибка. Обновите пожалуйста страницу");
                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });

                                                    });

                                                    this.popupWindow.close();

                                                }
                                            }
                                        }),
                                        new BX.PopupWindowButton({
                                            text: "Нет",
                                            className: "button_block red W75",
                                            events: {
                                                click: function () {
                                                    this.popupWindow.close();
                                                }
                                            }
                                        })
                                    ]
                                });
                                oPopup_854.setContent(BX('hideBlock_854'));
                                BX.bindDelegate(
                                    document.body, 'click', { className: 'delRelease_854' },
                                    BX.proxy(function (e) {
                                        if (!e)
                                            e = window.event;
                                        oPopup_854.show();
                                        return BX.PreventDefault(e);
                                    }, oPopup_854)
                                );
                                document.getElementById('delRelease_854').focus();
                            });
                        </script>

                    </li>
                    <li class="file_list_elem flexim botmarg17 black ui-sortable-handle">
                        <div class="file_list_elem_number W45" id="855">
                            <div>10</div>
                        </div>

                        <div class="flexim">
                            <audio id="sound_855">
                                <source src="/user-uploads/preparation/release_audio/4/845/audtrk_10_Avalanche_CD_mast-p2p.wav" type="audio/ogg">
                            </audio>
                            <div onclick="play_855()" id="play_855" class="audio_play">
                                <img width="40px" height="40px" src="/img/ico/audio_play.svg"></div>
                            <div onclick="pause_855()" id="pause_855" class="audio_pause" hidden="">
                                <img width="40px" height="40px" src="/img/ico/audio_pause.svg"></div>
                            <div onclick="stop_855()" class="audio_stop">
                                <img width="22px" height="22px" src="/img/ico/audio_stop.svg"></div>
                        </div>

                        <script>
                            function play_855() {
                                $("audio").trigger('pause');
                                $(".audio_play").show();
                                $(".audio_pause").hide();
                                $("#play_855").hide();
                                $("#pause_855").show();
                                document.getElementById('sound_855').play();
                            }

                            function pause_855() {
                                document.getElementById('sound_855').pause();
                                $("#pause_855").hide();
                                $("#play_855").show();
                            }

                            function stop_855() {
                                document.getElementById('sound_855').pause();
                                document.getElementById('sound_855').currentTime = 0;
                                $("#pause_855").hide();
                                $("#play_855").show();
                            }
                        </script>
                        <div class="file_list_elem_r">10_Avalanche_CD_mast-p2p</div>
                        <div class="flexim">
                            <!--Кнопка создать рингтон-->

                            <!--Кнопка скачать-->
                            <a download="" href="/user-uploads/preparation/release_audio/4/845/audtrk_10_Avalanche_CD_mast-p2p.wav" style="margin-right: 20px;" title="Скачать">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px"></a>

                            <!--Кнопка удалить-->
                            <div id="delRelease_855" class="delRelease_855 delText" title="Удалить">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px"></div>
                        </div>


                        <script>
                            window.BXDEBUG = true;
                            BX.ready(function () {
                                var oPopup_855 = new BX.PopupWindow('call_feedback_855', window.body, {
                                    autoHide: true,
                                    offsetTop: 1,
                                    offsetLeft: 0,
                                    lightShadow: true,
                                    closeIcon: false,
                                    closeByEsc: true,
                                    overlay: {
                                        backgroundColor: 'black', opacity: '50'
                                    },
                                    buttons: [
                                        new BX.PopupWindowButton({
                                            text: "Да",
                                            className: "button_block green W75",
                                            events: {
                                                click: function () {
                                                    //Проверям загрузилась ли страци полностью
                                                    $(document).ready(function () {
                                                        //Действие по нажатию элемента с ID = btn_refresh
                                                        $.ajax({
                                                            method: "GET",
                                                            url: "/pages/app/audio-release/refresh-page/delfile.aspx", //загружаемая страница
                                                            data: { deleteid: 855, fileparam: "/home/e/evolik/contentoom.com/public_html/user-uploads/preparation/release_audio/4/845/audtrk_10_Avalanche_CD_mast-p2p.wav" }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    method: "GET",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-files.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {
                                                                        echo("Ошибка. Обновите пожалуйста страницу");
                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });

                                                    });

                                                    this.popupWindow.close();

                                                }
                                            }
                                        }),
                                        new BX.PopupWindowButton({
                                            text: "Нет",
                                            className: "button_block red W75",
                                            events: {
                                                click: function () {
                                                    this.popupWindow.close();
                                                }
                                            }
                                        })
                                    ]
                                });
                                oPopup_855.setContent(BX('hideBlock_855'));
                                BX.bindDelegate(
                                    document.body, 'click', { className: 'delRelease_855' },
                                    BX.proxy(function (e) {
                                        if (!e)
                                            e = window.event;
                                        oPopup_855.show();
                                        return BX.PreventDefault(e);
                                    }, oPopup_855)
                                );
                                document.getElementById('delRelease_855').focus();
                            });
                        </script>

                    </li>
                    <li class="file_list_elem flexim botmarg17 black ui-sortable-handle">
                        <div class="file_list_elem_number W45" id="856">
                            <div>11</div>
                        </div>

                        <div class="flexim">
                            <audio id="sound_856">
                                <source src="/user-uploads/preparation/release_audio/4/845/audtrk_11_Vokr_Purpur2.3-p2p.wav" type="audio/ogg">
                            </audio>
                            <div onclick="play_856()" id="play_856" class="audio_play">
                                <img width="40px" height="40px" src="/img/ico/audio_play.svg"></div>
                            <div onclick="pause_856()" id="pause_856" class="audio_pause" hidden="">
                                <img width="40px" height="40px" src="/img/ico/audio_pause.svg"></div>
                            <div onclick="stop_856()" class="audio_stop">
                                <img width="22px" height="22px" src="/img/ico/audio_stop.svg"></div>
                        </div>

                        <script>
                            function play_856() {
                                $("audio").trigger('pause');
                                $(".audio_play").show();
                                $(".audio_pause").hide();
                                $("#play_856").hide();
                                $("#pause_856").show();
                                document.getElementById('sound_856').play();
                            }

                            function pause_856() {
                                document.getElementById('sound_856').pause();
                                $("#pause_856").hide();
                                $("#play_856").show();
                            }

                            function stop_856() {
                                document.getElementById('sound_856').pause();
                                document.getElementById('sound_856').currentTime = 0;
                                $("#pause_856").hide();
                                $("#play_856").show();
                            }
                        </script>
                        <div class="file_list_elem_r">11_Vokr_Purpur2.3-p2p</div>
                        <div class="flexim">
                            <!--Кнопка создать рингтон-->

                            <!--Кнопка скачать-->
                            <a download="" href="/user-uploads/preparation/release_audio/4/845/audtrk_11_Vokr_Purpur2.3-p2p.wav" style="margin-right: 20px;" title="Скачать">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px"></a>

                            <!--Кнопка удалить-->
                            <div id="delRelease_856" class="delRelease_856 delText" title="Удалить">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px"></div>
                        </div>


                        <script>
                            window.BXDEBUG = true;
                            BX.ready(function () {
                                var oPopup_856 = new BX.PopupWindow('call_feedback_856', window.body, {
                                    autoHide: true,
                                    offsetTop: 1,
                                    offsetLeft: 0,
                                    lightShadow: true,
                                    closeIcon: false,
                                    closeByEsc: true,
                                    overlay: {
                                        backgroundColor: 'black', opacity: '50'
                                    },
                                    buttons: [
                                        new BX.PopupWindowButton({
                                            text: "Да",
                                            className: "button_block green W75",
                                            events: {
                                                click: function () {
                                                    //Проверям загрузилась ли страци полностью
                                                    $(document).ready(function () {
                                                        //Действие по нажатию элемента с ID = btn_refresh
                                                        $.ajax({
                                                            method: "GET",
                                                            url: "/pages/app/audio-release/refresh-page/delfile.aspx", //загружаемая страница
                                                            data: { deleteid: 856, fileparam: "/home/e/evolik/contentoom.com/public_html/user-uploads/preparation/release_audio/4/845/audtrk_11_Vokr_Purpur2.3-p2p.wav" }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    method: "GET",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-files.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {
                                                                        echo("Ошибка. Обновите пожалуйста страницу");
                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });

                                                    });

                                                    this.popupWindow.close();

                                                }
                                            }
                                        }),
                                        new BX.PopupWindowButton({
                                            text: "Нет",
                                            className: "button_block red W75",
                                            events: {
                                                click: function () {
                                                    this.popupWindow.close();
                                                }
                                            }
                                        })
                                    ]
                                });
                                oPopup_856.setContent(BX('hideBlock_856'));
                                BX.bindDelegate(
                                    document.body, 'click', { className: 'delRelease_856' },
                                    BX.proxy(function (e) {
                                        if (!e)
                                            e = window.event;
                                        oPopup_856.show();
                                        return BX.PreventDefault(e);
                                    }, oPopup_856)
                                );
                                document.getElementById('delRelease_856').focus();
                            });
                        </script>

                    </li>
                    <li class="file_list_elem flexim botmarg17 black ui-sortable-handle">
                        <div class="file_list_elem_number W45" id="857">
                            <div>12</div>
                        </div>

                        <div class="flexim">
                            <audio id="sound_857">
                                <source src="/user-uploads/preparation/release_audio/4/845/audtrk_12_Play_with_Me_CD_mast-p2p.wav" type="audio/ogg">
                            </audio>
                            <div onclick="play_857()" id="play_857" class="audio_play">
                                <img width="40px" height="40px" src="/img/ico/audio_play.svg"></div>
                            <div onclick="pause_857()" id="pause_857" class="audio_pause" hidden="">
                                <img width="40px" height="40px" src="/img/ico/audio_pause.svg"></div>
                            <div onclick="stop_857()" class="audio_stop">
                                <img width="22px" height="22px" src="/img/ico/audio_stop.svg"></div>
                        </div>

                        <script>
                            function play_857() {
                                $("audio").trigger('pause');
                                $(".audio_play").show();
                                $(".audio_pause").hide();
                                $("#play_857").hide();
                                $("#pause_857").show();
                                document.getElementById('sound_857').play();
                            }

                            function pause_857() {
                                document.getElementById('sound_857').pause();
                                $("#pause_857").hide();
                                $("#play_857").show();
                            }

                            function stop_857() {
                                document.getElementById('sound_857').pause();
                                document.getElementById('sound_857').currentTime = 0;
                                $("#pause_857").hide();
                                $("#play_857").show();
                            }
                        </script>
                        <div class="file_list_elem_r">12_Play_with_Me_CD_mast-p2p</div>
                        <div class="flexim">
                            <!--Кнопка создать рингтон-->

                            <!--Кнопка скачать-->
                            <a download="" href="/user-uploads/preparation/release_audio/4/845/audtrk_12_Play_with_Me_CD_mast-p2p.wav" style="margin-right: 20px;" title="Скачать">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px"></a>

                            <!--Кнопка удалить-->
                            <div id="delRelease_857" class="delRelease_857 delText" title="Удалить">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px"></div>
                        </div>


                        <script>
                            window.BXDEBUG = true;
                            BX.ready(function () {
                                var oPopup_857 = new BX.PopupWindow('call_feedback_857', window.body, {
                                    autoHide: true,
                                    offsetTop: 1,
                                    offsetLeft: 0,
                                    lightShadow: true,
                                    closeIcon: false,
                                    closeByEsc: true,
                                    overlay: {
                                        backgroundColor: 'black', opacity: '50'
                                    },
                                    buttons: [
                                        new BX.PopupWindowButton({
                                            text: "Да",
                                            className: "button_block green W75",
                                            events: {
                                                click: function () {
                                                    //Проверям загрузилась ли страци полностью
                                                    $(document).ready(function () {
                                                        //Действие по нажатию элемента с ID = btn_refresh
                                                        $.ajax({
                                                            method: "GET",
                                                            url: "/pages/app/audio-release/refresh-page/delfile.aspx", //загружаемая страница
                                                            data: { deleteid: 857, fileparam: "/home/e/evolik/contentoom.com/public_html/user-uploads/preparation/release_audio/4/845/audtrk_12_Play_with_Me_CD_mast-p2p.wav" }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    method: "GET",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-files.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {
                                                                        echo("Ошибка. Обновите пожалуйста страницу");
                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });

                                                    });

                                                    this.popupWindow.close();

                                                }
                                            }
                                        }),
                                        new BX.PopupWindowButton({
                                            text: "Нет",
                                            className: "button_block red W75",
                                            events: {
                                                click: function () {
                                                    this.popupWindow.close();
                                                }
                                            }
                                        })
                                    ]
                                });
                                oPopup_857.setContent(BX('hideBlock_857'));
                                BX.bindDelegate(
                                    document.body, 'click', { className: 'delRelease_857' },
                                    BX.proxy(function (e) {
                                        if (!e)
                                            e = window.event;
                                        oPopup_857.show();
                                        return BX.PreventDefault(e);
                                    }, oPopup_857)
                                );
                                document.getElementById('delRelease_857').focus();
                            });
                        </script>

                    </li>
                    <li class="file_list_elem flexim botmarg17 black ui-sortable-handle">
                        <div class="file_list_elem_number W45" id="858">
                            <div>13</div>
                        </div>

                        <div class="flexim">
                            <audio id="sound_858">
                                <source src="/user-uploads/preparation/release_audio/4/845/audtrk_13_Free_line_CD_mast-p2p.wav" type="audio/ogg">
                            </audio>
                            <div onclick="play_858()" id="play_858" class="audio_play">
                                <img width="40px" height="40px" src="/img/ico/audio_play.svg"></div>
                            <div onclick="pause_858()" id="pause_858" class="audio_pause" hidden="">
                                <img width="40px" height="40px" src="/img/ico/audio_pause.svg"></div>
                            <div onclick="stop_858()" class="audio_stop">
                                <img width="22px" height="22px" src="/img/ico/audio_stop.svg"></div>
                        </div>

                        <script>
                            function play_858() {
                                $("audio").trigger('pause');
                                $(".audio_play").show();
                                $(".audio_pause").hide();
                                $("#play_858").hide();
                                $("#pause_858").show();
                                document.getElementById('sound_858').play();
                            }

                            function pause_858() {
                                document.getElementById('sound_858').pause();
                                $("#pause_858").hide();
                                $("#play_858").show();
                            }

                            function stop_858() {
                                document.getElementById('sound_858').pause();
                                document.getElementById('sound_858').currentTime = 0;
                                $("#pause_858").hide();
                                $("#play_858").show();
                            }
                        </script>
                        <div class="file_list_elem_r">13_Free_line_CD_mast-p2p</div>
                        <div class="flexim">
                            <!--Кнопка создать рингтон-->

                            <!--Кнопка скачать-->
                            <a download="" href="/user-uploads/preparation/release_audio/4/845/audtrk_13_Free_line_CD_mast-p2p.wav" style="margin-right: 20px;" title="Скачать">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px"></a>

                            <!--Кнопка удалить-->
                            <div id="delRelease_858" class="delRelease_858 delText" title="Удалить">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px"></div>
                        </div>


                        <script>
                            window.BXDEBUG = true;
                            BX.ready(function () {
                                var oPopup_858 = new BX.PopupWindow('call_feedback_858', window.body, {
                                    autoHide: true,
                                    offsetTop: 1,
                                    offsetLeft: 0,
                                    lightShadow: true,
                                    closeIcon: false,
                                    closeByEsc: true,
                                    overlay: {
                                        backgroundColor: 'black', opacity: '50'
                                    },
                                    buttons: [
                                        new BX.PopupWindowButton({
                                            text: "Да",
                                            className: "button_block green W75",
                                            events: {
                                                click: function () {
                                                    //Проверям загрузилась ли страци полностью
                                                    $(document).ready(function () {
                                                        //Действие по нажатию элемента с ID = btn_refresh
                                                        $.ajax({
                                                            method: "GET",
                                                            url: "/pages/app/audio-release/refresh-page/delfile.aspx", //загружаемая страница
                                                            data: { deleteid: 858, fileparam: "/home/e/evolik/contentoom.com/public_html/user-uploads/preparation/release_audio/4/845/audtrk_13_Free_line_CD_mast-p2p.wav" }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    method: "GET",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-files.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {
                                                                        echo("Ошибка. Обновите пожалуйста страницу");
                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });

                                                    });

                                                    this.popupWindow.close();

                                                }
                                            }
                                        }),
                                        new BX.PopupWindowButton({
                                            text: "Нет",
                                            className: "button_block red W75",
                                            events: {
                                                click: function () {
                                                    this.popupWindow.close();
                                                }
                                            }
                                        })
                                    ]
                                });
                                oPopup_858.setContent(BX('hideBlock_858'));
                                BX.bindDelegate(
                                    document.body, 'click', { className: 'delRelease_858' },
                                    BX.proxy(function (e) {
                                        if (!e)
                                            e = window.event;
                                        oPopup_858.show();
                                        return BX.PreventDefault(e);
                                    }, oPopup_858)
                                );
                                document.getElementById('delRelease_858').focus();
                            });
                        </script>

                    </li>
                    <li class="file_list_elem flexim botmarg17 black ui-sortable-handle">
                        <div class="file_list_elem_number W45" id="859">
                            <div>14</div>
                        </div>

                        <div class="flexim">
                            <audio id="sound_859">
                                <source src="/user-uploads/preparation/release_audio/4/845/audtrk_14_I_Love_CD_mast-p2p.wav" type="audio/ogg">
                            </audio>
                            <div onclick="play_859()" id="play_859" class="audio_play">
                                <img width="40px" height="40px" src="/img/ico/audio_play.svg"></div>
                            <div onclick="pause_859()" id="pause_859" class="audio_pause" hidden="">
                                <img width="40px" height="40px" src="/img/ico/audio_pause.svg"></div>
                            <div onclick="stop_859()" class="audio_stop">
                                <img width="22px" height="22px" src="/img/ico/audio_stop.svg"></div>
                        </div>

                        <script>
                            function play_859() {
                                $("audio").trigger('pause');
                                $(".audio_play").show();
                                $(".audio_pause").hide();
                                $("#play_859").hide();
                                $("#pause_859").show();
                                document.getElementById('sound_859').play();
                            }

                            function pause_859() {
                                document.getElementById('sound_859').pause();
                                $("#pause_859").hide();
                                $("#play_859").show();
                            }

                            function stop_859() {
                                document.getElementById('sound_859').pause();
                                document.getElementById('sound_859').currentTime = 0;
                                $("#pause_859").hide();
                                $("#play_859").show();
                            }
                        </script>
                        <div class="file_list_elem_r">14_I_Love_CD_mast-p2p</div>
                        <div class="flexim">
                            <!--Кнопка создать рингтон-->

                            <!--Кнопка скачать-->
                            <a download="" href="/user-uploads/preparation/release_audio/4/845/audtrk_14_I_Love_CD_mast-p2p.wav" style="margin-right: 20px;" title="Скачать">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px"></a>

                            <!--Кнопка удалить-->
                            <div id="delRelease_859" class="delRelease_859 delText" title="Удалить">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px"></div>
                        </div>


                        <script>
                            window.BXDEBUG = true;
                            BX.ready(function () {
                                var oPopup_859 = new BX.PopupWindow('call_feedback_859', window.body, {
                                    autoHide: true,
                                    offsetTop: 1,
                                    offsetLeft: 0,
                                    lightShadow: true,
                                    closeIcon: false,
                                    closeByEsc: true,
                                    overlay: {
                                        backgroundColor: 'black', opacity: '50'
                                    },
                                    buttons: [
                                        new BX.PopupWindowButton({
                                            text: "Да",
                                            className: "button_block green W75",
                                            events: {
                                                click: function () {
                                                    //Проверям загрузилась ли страци полностью
                                                    $(document).ready(function () {
                                                        //Действие по нажатию элемента с ID = btn_refresh
                                                        $.ajax({
                                                            method: "GET",
                                                            url: "/pages/app/audio-release/refresh-page/delfile.aspx", //загружаемая страница
                                                            data: { deleteid: 859, fileparam: "/home/e/evolik/contentoom.com/public_html/user-uploads/preparation/release_audio/4/845/audtrk_14_I_Love_CD_mast-p2p.wav" }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    method: "GET",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-files.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {
                                                                        echo("Ошибка. Обновите пожалуйста страницу");
                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });

                                                    });

                                                    this.popupWindow.close();

                                                }
                                            }
                                        }),
                                        new BX.PopupWindowButton({
                                            text: "Нет",
                                            className: "button_block red W75",
                                            events: {
                                                click: function () {
                                                    this.popupWindow.close();
                                                }
                                            }
                                        })
                                    ]
                                });
                                oPopup_859.setContent(BX('hideBlock_859'));
                                BX.bindDelegate(
                                    document.body, 'click', { className: 'delRelease_859' },
                                    BX.proxy(function (e) {
                                        if (!e)
                                            e = window.event;
                                        oPopup_859.show();
                                        return BX.PreventDefault(e);
                                    }, oPopup_859)
                                );
                                document.getElementById('delRelease_859').focus();
                            });
                        </script>

                    </li>
                    <li class="file_list_elem flexim botmarg17 black ui-sortable-handle">
                        <div class="file_list_elem_number W45" id="860">
                            <div>15</div>
                        </div>

                        <div class="flexim">
                            <audio id="sound_860">
                                <source src="/user-uploads/preparation/release_audio/4/845/audtrk_15_Otkrovenye4.3-p2p.wav" type="audio/ogg">
                            </audio>
                            <div onclick="play_860()" id="play_860" class="audio_play">
                                <img width="40px" height="40px" src="/img/ico/audio_play.svg"></div>
                            <div onclick="pause_860()" id="pause_860" class="audio_pause" hidden="">
                                <img width="40px" height="40px" src="/img/ico/audio_pause.svg"></div>
                            <div onclick="stop_860()" class="audio_stop">
                                <img width="22px" height="22px" src="/img/ico/audio_stop.svg"></div>
                        </div>

                        <script>
                            function play_860() {
                                $("audio").trigger('pause');
                                $(".audio_play").show();
                                $(".audio_pause").hide();
                                $("#play_860").hide();
                                $("#pause_860").show();
                                document.getElementById('sound_860').play();
                            }

                            function pause_860() {
                                document.getElementById('sound_860').pause();
                                $("#pause_860").hide();
                                $("#play_860").show();
                            }

                            function stop_860() {
                                document.getElementById('sound_860').pause();
                                document.getElementById('sound_860').currentTime = 0;
                                $("#pause_860").hide();
                                $("#play_860").show();
                            }
                        </script>
                        <div class="file_list_elem_r">15_Otkrovenye4.3-p2p</div>
                        <div class="flexim">
                            <!--Кнопка создать рингтон-->

                            <!--Кнопка скачать-->
                            <a download="" href="/user-uploads/preparation/release_audio/4/845/audtrk_15_Otkrovenye4.3-p2p.wav" style="margin-right: 20px;" title="Скачать">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px"></a>

                            <!--Кнопка удалить-->
                            <div id="delRelease_860" class="delRelease_860 delText" title="Удалить">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px"></div>
                        </div>


                        <script>
                            window.BXDEBUG = true;
                            BX.ready(function () {
                                var oPopup_860 = new BX.PopupWindow('call_feedback_860', window.body, {
                                    autoHide: true,
                                    offsetTop: 1,
                                    offsetLeft: 0,
                                    lightShadow: true,
                                    closeIcon: false,
                                    closeByEsc: true,
                                    overlay: {
                                        backgroundColor: 'black', opacity: '50'
                                    },
                                    buttons: [
                                        new BX.PopupWindowButton({
                                            text: "Да",
                                            className: "button_block green W75",
                                            events: {
                                                click: function () {
                                                    //Проверям загрузилась ли страци полностью
                                                    $(document).ready(function () {
                                                        //Действие по нажатию элемента с ID = btn_refresh
                                                        $.ajax({
                                                            method: "GET",
                                                            url: "/pages/app/audio-release/refresh-page/delfile.aspx", //загружаемая страница
                                                            data: { deleteid: 860, fileparam: "/home/e/evolik/contentoom.com/public_html/user-uploads/preparation/release_audio/4/845/audtrk_15_Otkrovenye4.3-p2p.wav" }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    method: "GET",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-files.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {
                                                                        echo("Ошибка. Обновите пожалуйста страницу");
                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });

                                                    });

                                                    this.popupWindow.close();

                                                }
                                            }
                                        }),
                                        new BX.PopupWindowButton({
                                            text: "Нет",
                                            className: "button_block red W75",
                                            events: {
                                                click: function () {
                                                    this.popupWindow.close();
                                                }
                                            }
                                        })
                                    ]
                                });
                                oPopup_860.setContent(BX('hideBlock_860'));
                                BX.bindDelegate(
                                    document.body, 'click', { className: 'delRelease_860' },
                                    BX.proxy(function (e) {
                                        if (!e)
                                            e = window.event;
                                        oPopup_860.show();
                                        return BX.PreventDefault(e);
                                    }, oPopup_860)
                                );
                                document.getElementById('delRelease_860').focus();
                            });
                        </script>

                    </li>
                    <li class="file_list_elem flexim botmarg17 black ui-sortable-handle">
                        <div class="file_list_elem_number W45" id="861">
                            <div>16</div>
                        </div>

                        <div class="flexim">
                            <audio id="sound_861">
                                <source src="/user-uploads/preparation/release_audio/4/845/audtrk_16_Rubikon_CD_mast-p2p.wav" type="audio/ogg">
                            </audio>
                            <div onclick="play_861()" id="play_861" class="audio_play">
                                <img width="40px" height="40px" src="/img/ico/audio_play.svg"></div>
                            <div onclick="pause_861()" id="pause_861" class="audio_pause" hidden="">
                                <img width="40px" height="40px" src="/img/ico/audio_pause.svg"></div>
                            <div onclick="stop_861()" class="audio_stop">
                                <img width="22px" height="22px" src="/img/ico/audio_stop.svg"></div>
                        </div>

                        <script>
                            function play_861() {
                                $("audio").trigger('pause');
                                $(".audio_play").show();
                                $(".audio_pause").hide();
                                $("#play_861").hide();
                                $("#pause_861").show();
                                document.getElementById('sound_861').play();
                            }

                            function pause_861() {
                                document.getElementById('sound_861').pause();
                                $("#pause_861").hide();
                                $("#play_861").show();
                            }

                            function stop_861() {
                                document.getElementById('sound_861').pause();
                                document.getElementById('sound_861').currentTime = 0;
                                $("#pause_861").hide();
                                $("#play_861").show();
                            }
                        </script>
                        <div class="file_list_elem_r">16_Rubikon_CD_mast-p2p</div>
                        <div class="flexim">
                            <!--Кнопка создать рингтон-->

                            <!--Кнопка скачать-->
                            <a download="" href="/user-uploads/preparation/release_audio/4/845/audtrk_16_Rubikon_CD_mast-p2p.wav" style="margin-right: 20px;" title="Скачать">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px"></a>

                            <!--Кнопка удалить-->
                            <div id="delRelease_861" class="delRelease_861 delText" title="Удалить">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px"></div>
                        </div>


                        <script>
                            window.BXDEBUG = true;
                            BX.ready(function () {
                                var oPopup_861 = new BX.PopupWindow('call_feedback_861', window.body, {
                                    autoHide: true,
                                    offsetTop: 1,
                                    offsetLeft: 0,
                                    lightShadow: true,
                                    closeIcon: false,
                                    closeByEsc: true,
                                    overlay: {
                                        backgroundColor: 'black', opacity: '50'
                                    },
                                    buttons: [
                                        new BX.PopupWindowButton({
                                            text: "Да",
                                            className: "button_block green W75",
                                            events: {
                                                click: function () {
                                                    //Проверям загрузилась ли страци полностью
                                                    $(document).ready(function () {
                                                        //Действие по нажатию элемента с ID = btn_refresh
                                                        $.ajax({
                                                            method: "GET",
                                                            url: "/pages/app/audio-release/refresh-page/delfile.aspx", //загружаемая страница
                                                            data: { deleteid: 861, fileparam: "/home/e/evolik/contentoom.com/public_html/user-uploads/preparation/release_audio/4/845/audtrk_16_Rubikon_CD_mast-p2p.wav" }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    method: "GET",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-files.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {
                                                                        echo("Ошибка. Обновите пожалуйста страницу");
                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });

                                                    });

                                                    this.popupWindow.close();

                                                }
                                            }
                                        }),
                                        new BX.PopupWindowButton({
                                            text: "Нет",
                                            className: "button_block red W75",
                                            events: {
                                                click: function () {
                                                    this.popupWindow.close();
                                                }
                                            }
                                        })
                                    ]
                                });
                                oPopup_861.setContent(BX('hideBlock_861'));
                                BX.bindDelegate(
                                    document.body, 'click', { className: 'delRelease_861' },
                                    BX.proxy(function (e) {
                                        if (!e)
                                            e = window.event;
                                        oPopup_861.show();
                                        return BX.PreventDefault(e);
                                    }, oPopup_861)
                                );
                                document.getElementById('delRelease_861').focus();
                            });
                        </script>

                    </li>
                    <li class="file_list_elem flexim botmarg17 black ui-sortable-handle">
                        <div class="file_list_elem_number W45" id="862">
                            <div>17</div>
                        </div>

                        <div class="flexim">
                            <audio id="sound_862">
                                <source src="/user-uploads/preparation/release_audio/4/845/audtrk_17_Friends_CD_mast-p2p.wav" type="audio/ogg">
                            </audio>
                            <div onclick="play_862()" id="play_862" class="audio_play">
                                <img width="40px" height="40px" src="/img/ico/audio_play.svg"></div>
                            <div onclick="pause_862()" id="pause_862" class="audio_pause" hidden="">
                                <img width="40px" height="40px" src="/img/ico/audio_pause.svg"></div>
                            <div onclick="stop_862()" class="audio_stop">
                                <img width="22px" height="22px" src="/img/ico/audio_stop.svg"></div>
                        </div>

                        <script>
                            function play_862() {
                                $("audio").trigger('pause');
                                $(".audio_play").show();
                                $(".audio_pause").hide();
                                $("#play_862").hide();
                                $("#pause_862").show();
                                document.getElementById('sound_862').play();
                            }

                            function pause_862() {
                                document.getElementById('sound_862').pause();
                                $("#pause_862").hide();
                                $("#play_862").show();
                            }

                            function stop_862() {
                                document.getElementById('sound_862').pause();
                                document.getElementById('sound_862').currentTime = 0;
                                $("#pause_862").hide();
                                $("#play_862").show();
                            }
                        </script>
                        <div class="file_list_elem_r">17_Friends_CD_mast-p2p</div>
                        <div class="flexim">
                            <!--Кнопка создать рингтон-->

                            <!--Кнопка скачать-->
                            <a download="" href="/user-uploads/preparation/release_audio/4/845/audtrk_17_Friends_CD_mast-p2p.wav" style="margin-right: 20px;" title="Скачать">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px"></a>

                            <!--Кнопка удалить-->
                            <div id="delRelease_862" class="delRelease_862 delText" title="Удалить">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px"></div>
                        </div>


                        <script>
                            window.BXDEBUG = true;
                            BX.ready(function () {
                                var oPopup_862 = new BX.PopupWindow('call_feedback_862', window.body, {
                                    autoHide: true,
                                    offsetTop: 1,
                                    offsetLeft: 0,
                                    lightShadow: true,
                                    closeIcon: false,
                                    closeByEsc: true,
                                    overlay: {
                                        backgroundColor: 'black', opacity: '50'
                                    },
                                    buttons: [
                                        new BX.PopupWindowButton({
                                            text: "Да",
                                            className: "button_block green W75",
                                            events: {
                                                click: function () {
                                                    //Проверям загрузилась ли страци полностью
                                                    $(document).ready(function () {
                                                        //Действие по нажатию элемента с ID = btn_refresh
                                                        $.ajax({
                                                            method: "GET",
                                                            url: "/pages/app/audio-release/refresh-page/delfile.aspx", //загружаемая страница
                                                            data: { deleteid: 862, fileparam: "/home/e/evolik/contentoom.com/public_html/user-uploads/preparation/release_audio/4/845/audtrk_17_Friends_CD_mast-p2p.wav" }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    method: "GET",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-files.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {
                                                                        echo("Ошибка. Обновите пожалуйста страницу");
                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });

                                                    });

                                                    this.popupWindow.close();

                                                }
                                            }
                                        }),
                                        new BX.PopupWindowButton({
                                            text: "Нет",
                                            className: "button_block red W75",
                                            events: {
                                                click: function () {
                                                    this.popupWindow.close();
                                                }
                                            }
                                        })
                                    ]
                                });
                                oPopup_862.setContent(BX('hideBlock_862'));
                                BX.bindDelegate(
                                    document.body, 'click', { className: 'delRelease_862' },
                                    BX.proxy(function (e) {
                                        if (!e)
                                            e = window.event;
                                        oPopup_862.show();
                                        return BX.PreventDefault(e);
                                    }, oPopup_862)
                                );
                                document.getElementById('delRelease_862').focus();
                            });
                        </script>

                    </li>
                    <li class="file_list_elem flexim botmarg17 black ui-sortable-handle">
                        <div class="file_list_elem_number W45" id="863">
                            <div>18</div>
                        </div>

                        <div class="flexim">
                            <audio id="sound_863">
                                <source src="/user-uploads/preparation/release_audio/4/845/audtrk_18_Smyteniye5.3-p2p.wav" type="audio/ogg">
                            </audio>
                            <div onclick="play_863()" id="play_863" class="audio_play">
                                <img width="40px" height="40px" src="/img/ico/audio_play.svg"></div>
                            <div onclick="pause_863()" id="pause_863" class="audio_pause" hidden="">
                                <img width="40px" height="40px" src="/img/ico/audio_pause.svg"></div>
                            <div onclick="stop_863()" class="audio_stop">
                                <img width="22px" height="22px" src="/img/ico/audio_stop.svg"></div>
                        </div>

                        <script>
                            function play_863() {
                                $("audio").trigger('pause');
                                $(".audio_play").show();
                                $(".audio_pause").hide();
                                $("#play_863").hide();
                                $("#pause_863").show();
                                document.getElementById('sound_863').play();
                            }

                            function pause_863() {
                                document.getElementById('sound_863').pause();
                                $("#pause_863").hide();
                                $("#play_863").show();
                            }

                            function stop_863() {
                                document.getElementById('sound_863').pause();
                                document.getElementById('sound_863').currentTime = 0;
                                $("#pause_863").hide();
                                $("#play_863").show();
                            }
                        </script>
                        <div class="file_list_elem_r">18_Smyteniye5.3-p2p</div>
                        <div class="flexim">
                            <!--Кнопка создать рингтон-->

                            <!--Кнопка скачать-->
                            <a download="" href="/user-uploads/preparation/release_audio/4/845/audtrk_18_Smyteniye5.3-p2p.wav" style="margin-right: 20px;" title="Скачать">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px"></a>

                            <!--Кнопка удалить-->
                            <div id="delRelease_863" class="delRelease_863 delText" title="Удалить">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px"></div>
                        </div>


                        <script>
                            window.BXDEBUG = true;
                            BX.ready(function () {
                                var oPopup_863 = new BX.PopupWindow('call_feedback_863', window.body, {
                                    autoHide: true,
                                    offsetTop: 1,
                                    offsetLeft: 0,
                                    lightShadow: true,
                                    closeIcon: false,
                                    closeByEsc: true,
                                    overlay: {
                                        backgroundColor: 'black', opacity: '50'
                                    },
                                    buttons: [
                                        new BX.PopupWindowButton({
                                            text: "Да",
                                            className: "button_block green W75",
                                            events: {
                                                click: function () {
                                                    //Проверям загрузилась ли страци полностью
                                                    $(document).ready(function () {
                                                        //Действие по нажатию элемента с ID = btn_refresh
                                                        $.ajax({
                                                            method: "GET",
                                                            url: "/pages/app/audio-release/refresh-page/delfile.aspx", //загружаемая страница
                                                            data: { deleteid: 863, fileparam: "/home/e/evolik/contentoom.com/public_html/user-uploads/preparation/release_audio/4/845/audtrk_18_Smyteniye5.3-p2p.wav" }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    method: "GET",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-files.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {
                                                                        echo("Ошибка. Обновите пожалуйста страницу");
                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });

                                                    });

                                                    this.popupWindow.close();

                                                }
                                            }
                                        }),
                                        new BX.PopupWindowButton({
                                            text: "Нет",
                                            className: "button_block red W75",
                                            events: {
                                                click: function () {
                                                    this.popupWindow.close();
                                                }
                                            }
                                        })
                                    ]
                                });
                                oPopup_863.setContent(BX('hideBlock_863'));
                                BX.bindDelegate(
                                    document.body, 'click', { className: 'delRelease_863' },
                                    BX.proxy(function (e) {
                                        if (!e)
                                            e = window.event;
                                        oPopup_863.show();
                                        return BX.PreventDefault(e);
                                    }, oPopup_863)
                                );
                                document.getElementById('delRelease_863').focus();
                            });
                        </script>

                    </li>
                    <li class="file_list_elem flexim botmarg17 black ui-sortable-handle">
                        <div class="file_list_elem_number W45" id="864">
                            <div>19</div>
                        </div>

                        <div class="flexim">
                            <audio id="sound_864">
                                <source src="/user-uploads/preparation/release_audio/4/845/audtrk_19_Na_Schastye_CD_mast-p2p.wav" type="audio/ogg">
                            </audio>
                            <div onclick="play_864()" id="play_864" class="audio_play">
                                <img width="40px" height="40px" src="/img/ico/audio_play.svg"></div>
                            <div onclick="pause_864()" id="pause_864" class="audio_pause" hidden="">
                                <img width="40px" height="40px" src="/img/ico/audio_pause.svg"></div>
                            <div onclick="stop_864()" class="audio_stop">
                                <img width="22px" height="22px" src="/img/ico/audio_stop.svg"></div>
                        </div>

                        <script>
                            function play_864() {
                                $("audio").trigger('pause');
                                $(".audio_play").show();
                                $(".audio_pause").hide();
                                $("#play_864").hide();
                                $("#pause_864").show();
                                document.getElementById('sound_864').play();
                            }

                            function pause_864() {
                                document.getElementById('sound_864').pause();
                                $("#pause_864").hide();
                                $("#play_864").show();
                            }

                            function stop_864() {
                                document.getElementById('sound_864').pause();
                                document.getElementById('sound_864').currentTime = 0;
                                $("#pause_864").hide();
                                $("#play_864").show();
                            }
                        </script>
                        <div class="file_list_elem_r">19_Na_Schastye_CD_mast-p2p</div>
                        <div class="flexim">
                            <!--Кнопка создать рингтон-->

                            <!--Кнопка скачать-->
                            <a download="" href="/user-uploads/preparation/release_audio/4/845/audtrk_19_Na_Schastye_CD_mast-p2p.wav" style="margin-right: 20px;" title="Скачать">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px"></a>

                            <!--Кнопка удалить-->
                            <div id="delRelease_864" class="delRelease_864 delText" title="Удалить">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px"></div>
                        </div>


                        <script>
                            window.BXDEBUG = true;
                            BX.ready(function () {
                                var oPopup_864 = new BX.PopupWindow('call_feedback_864', window.body, {
                                    autoHide: true,
                                    offsetTop: 1,
                                    offsetLeft: 0,
                                    lightShadow: true,
                                    closeIcon: false,
                                    closeByEsc: true,
                                    overlay: {
                                        backgroundColor: 'black', opacity: '50'
                                    },
                                    buttons: [
                                        new BX.PopupWindowButton({
                                            text: "Да",
                                            className: "button_block green W75",
                                            events: {
                                                click: function () {
                                                    //Проверям загрузилась ли страци полностью
                                                    $(document).ready(function () {
                                                        //Действие по нажатию элемента с ID = btn_refresh
                                                        $.ajax({
                                                            method: "GET",
                                                            url: "/pages/app/audio-release/refresh-page/delfile.aspx", //загружаемая страница
                                                            data: { deleteid: 864, fileparam: "/home/e/evolik/contentoom.com/public_html/user-uploads/preparation/release_audio/4/845/audtrk_19_Na_Schastye_CD_mast-p2p.wav" }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    method: "GET",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-files.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {
                                                                        echo("Ошибка. Обновите пожалуйста страницу");
                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });

                                                    });

                                                    this.popupWindow.close();

                                                }
                                            }
                                        }),
                                        new BX.PopupWindowButton({
                                            text: "Нет",
                                            className: "button_block red W75",
                                            events: {
                                                click: function () {
                                                    this.popupWindow.close();
                                                }
                                            }
                                        })
                                    ]
                                });
                                oPopup_864.setContent(BX('hideBlock_864'));
                                BX.bindDelegate(
                                    document.body, 'click', { className: 'delRelease_864' },
                                    BX.proxy(function (e) {
                                        if (!e)
                                            e = window.event;
                                        oPopup_864.show();
                                        return BX.PreventDefault(e);
                                    }, oPopup_864)
                                );
                                document.getElementById('delRelease_864').focus();
                            });
                        </script>

                    </li>
                </ul>
                <script>	
                    $("#list_content").sortable({
                        update: function () {
                            $('.file_list_elem_number').each(function (i, obj) {
                                $(this).html(i + 1);
                            });
                        }
                    });
                </script>
            </div>
        </div>
    </div>
    <div class="release_button_block flexim">
		<div class="button apply" id="save_list">СОХРАНИТЬ ПОРЯДОК</div>
		<div id="status"></div>
			<script>
                $(document).ready(function () {
                    $('#save_list').click(function () {

                        $('.file_list_elem_number').each(function (i, obj) {
                            let k = i + 1;
                            $.ajax({
                                type: "POST",
                                url: "/app/audio-release/refresh-page/save-number-file-list.php",
                                data: { "fileID": $(this).attr("id"), "Number": k },
                                dataType: 'html',
                                cache: false,
                            })
                                .done(function (result) {
                                    $("#status").html("порядок сохранён.");
                                })
                                .fail(function (error) {
                                    $("#status").html("Ошибка. Попробуйте ещё раз.");
                                });
                        });

                    });
                });
            </script>
	</div>
</asp:Content>
