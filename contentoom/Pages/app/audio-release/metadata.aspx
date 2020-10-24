<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/template/app/app.Master" CodeBehind="metadata.aspx.vb" Inherits="contentoom.audioReleaseMetadata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Метаданные фонограмм аудио релиза
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderApp" runat="server">
    <form id="form1" runat="server">
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
                        <div class="elem_menu">
                            Аудио файлы фонограмм					
                        </div>
                    </a>
                </div>
                <!--Метаданные фонограмм-->
                <div class="full_elem_menu">
                    <a href="/pages/app/audio-release/metadata.aspx">
                        <div class="elem_menu_active">
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
            <!--топ меню-->

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

            <div id="area_button_add">
                <!--Область кнопки-->
                <!--Создание-->
                <input id="btn_addph_3" class="purple_but botmarg17" type="button" value="ДОБАВИТЬ ФОНОГРАММУ">
                <script>
                    $(document).ready(function () {
                        $('#btn_addph_3').click(function () {
                            $.ajax({
                                method: "POST",
                                url: "/pages/app/audio-release/refresh-page/create-iblock-ph-3.aspx",
                                data: { ReleaseID: 845, RUserID: 4 },
                                dataType: 'html',
                                cache: false,
                            })
                                .done(function (result) {
                                    //Обновление списка
                                    $.ajax({
                                        method: "POST",
                                        url: "/pages/app/audio-release/refresh-page/refresh-list-metadata.aspx", //загружаемая страница
                                        data: { CODE: 845 }, //параметры которые передаём
                                        dataType: 'html', //Тип данных
                                        cache: false,
                                    })
                                        .done(function (result) {
                                            $("div.popup-window").remove();
                                            $("div.popup-window-overlay").remove();
                                            $("#add_content").html(result);
                                        })
                                        .fail(function (error) {

                                        });
                                    //Обновление кнопки
                                    $.ajax({
                                        method: "POST",
                                        url: "/pages/app/audio-release/refresh-page/create-iblock-ph-button-refresh.aspx", //загружаемая страница
                                        data: { ReleaseID: 845, RUserID: 4 }, //параметры которые передаём
                                        dataType: 'html', //Тип данных
                                        cache: false,
                                    })
                                        .done(function (result) {
                                            $("#area_button_add").html(result);
                                        })
                                        .fail(function (error) {

                                        });
                                })
                                .fail(function (error) {

                                });

                        });

                    });
                </script>
            </div>

            <!--Область контента-->
            <div id="add_content">
                <!--Таблица-->
                <table class="MetadataList">
                    <thead>
                        <tr>
                            <!--№-->
                            <th style="width: 39px; padding-left: 17px; padding-right: 0px;">№</th>
                            <!--Название фонограммы-->
                            <th style="padding-left: 0px;">Название фонограммы</th>
                            <!--Действия-->
                            <th style="text-align: right;">Действия</th>
                        </tr>
                    </thead>
                </table>
                <ul id="list_content" class="ui-sortable">

                    <li class="file_list_elem flexim botmarg17 ui-sortable-handle">
                        <div class="meta_list_elem_number W45" id="865">1</div>
                        <div class="W100W" id="metaName_865">Повороты судьбы</div>
                        <div>
                            <a href="#" class="phEdit_865" onclick="phEdit_865()">
                                <div class="flexim">
                                    <img src="/img/ico/edit.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Редактировать">
                                </div>
                            </a>
                           <asp:Button id="Button1" Text="Submit" OnClick="Button1_Click" runat="server"/>
                            <script runat="server">
                                Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs)

                                    Dim queryString As String = "meta-info.aspx"
                                    Dim newWin As String = "window.open('" & queryString & "');"
                                    ClientScript.RegisterStartupScript(Me.GetType(), "pop", newWin, True)

                                End Sub
                            </script>
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div id="deleteContent_865" class="deleteContent_865 delText">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Удалить">
                            </div>

                            <!--Диалоговое окно удаления-->

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_865 = new BX.PopupWindow('del_dialog_865', window.body, {
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
                                                        $.ajax({
                                                            method: "POST",
                                                            url: "/pages/app/audio-release/refresh-page/delMetaData.aspx", //загружаемая страница
                                                            data: { "deleteid": 865 }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                //Обновление списка
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-metadata.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("div.popup-window").remove();
                                                                        $("div.popup-window-overlay").remove();
                                                                        $("#add_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                                //Обновление кнопки
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/create-iblock-ph-button-refresh.aspx", //загружаемая страница
                                                                    data: { ReleaseID: 845, RUserID: 4 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#area_button_add").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                            })
                                                            .fail(function (error) {

                                                            });
                                                        oPopup_865.close();
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "Нет",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_865.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_865.setContent(BX('hideBlock_865'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'deleteContent_865' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_865.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_865)
                                    );
                                    document.getElementById('deleteContent_865').focus();
                                });
                            </script>


                            <script>
                                $('#deleteContent_865').click(function () {

                                });
                            </script>
                        </div>
                    </li>



                    <li class="file_list_elem flexim botmarg17 ui-sortable-handle">
                        <div class="meta_list_elem_number W45" id="866">2</div>
                        <div class="W100W" id="metaName_866">Rules Don’t Apply</div>
                        <div>
                            <a href="#" onclick="phEdit_866()">
                                <div class="flexim">
                                    <img src="/img/ico/edit.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Редактировать">
                                </div>
                            </a>
                            <script>
                                function phEdit_866() {
                                    BX.SidePanel.Instance.open("/pages/app/audio-release/metadata-edit.aspx?edit=Y&CODE=866&lang_ui=ru",
                                        {
                                            cacheable: false, //кеширование страницы
                                            allowChangeHistory: false,
                                            animationDuration: 0.01, //длительность анимации открытия
                                            Title: "Редактирование фонограмммы", //Заголовок страницы
                                            width: 750, //ширина слайдера
                                            events: {
                                                onunload: function (event) {
                                                    console.log(event.getSlider());
                                                },
                                                onClose: function (event) {
                                                    //Обновление имени файла
                                                    //Обновление списка
                                                    $.ajax({
                                                        method: "POST",
                                                        url: "/pages/app/audio-release/refresh-page/get-meta-name.aspx", //загружаемая страница
                                                        data: { metaID: 866 }, //параметры которые передаём
                                                        dataType: 'html', //Тип данных
                                                        cache: false,
                                                    })
                                                        .done(function (result) {
                                                            $("#metaName_866").html(result);
                                                        })
                                                        .fail(function (error) {

                                                        });
                                                }
                                            }
                                        });
                                }
                            </script>
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div id="deleteContent_866" class="deleteContent_866 delText">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Удалить">
                            </div>

                            <!--Диалоговое окно удаления-->

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_866 = new BX.PopupWindow('del_dialog_866', window.body, {
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
                                                        $.ajax({
                                                            method: "POST",
                                                            url: "/pages/app/audio-release/refresh-page/delMetaData.aspx", //загружаемая страница
                                                            data: { "deleteid": 866 }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                //Обновление списка
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-metadata.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("div.popup-window").remove();
                                                                        $("div.popup-window-overlay").remove();
                                                                        $("#add_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                                //Обновление кнопки
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/create-iblock-ph-button-refresh.aspx", //загружаемая страница
                                                                    data: { ReleaseID: 845, RUserID: 4 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#area_button_add").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                            })
                                                            .fail(function (error) {

                                                            });
                                                        oPopup_866.close();
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "Нет",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_866.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_866.setContent(BX('hideBlock_866'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'deleteContent_866' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_866.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_866)
                                    );
                                    document.getElementById('deleteContent_866').focus();
                                });
                            </script>


                            <script>
                                $('#deleteContent_866').click(function () {

                                });
                            </script>
                        </div>
                    </li>



                    <li class="file_list_elem flexim botmarg17 ui-sortable-handle">
                        <div class="meta_list_elem_number W45" id="867">3</div>
                        <div class="W100W" id="metaName_867">Pulse</div>
                        <div>
                            <a href="#" onclick="phEdit_867()">
                                <div class="flexim">
                                    <img src="/img/ico/edit.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Редактировать">
                                </div>
                            </a>
                            <script>
                                function phEdit_867() {
                                    BX.SidePanel.Instance.open("/pages/app/audio-release/metadata-edit.aspx?edit=Y&CODE=867&lang_ui=ru",
                                        {
                                            cacheable: false, //кеширование страницы
                                            allowChangeHistory: false,
                                            animationDuration: 0.01, //длительность анимации открытия
                                            Title: "Редактирование фонограмммы", //Заголовок страницы
                                            width: 750, //ширина слайдера
                                            events: {
                                                onunload: function (event) {
                                                    console.log(event.getSlider());
                                                },
                                                onClose: function (event) {
                                                    //Обновление имени файла
                                                    //Обновление списка
                                                    $.ajax({
                                                        method: "POST",
                                                        url: "/pages/app/audio-release/refresh-page/get-meta-name.aspx", //загружаемая страница
                                                        data: { metaID: 867 }, //параметры которые передаём
                                                        dataType: 'html', //Тип данных
                                                        cache: false,
                                                    })
                                                        .done(function (result) {
                                                            $("#metaName_867").html(result);
                                                        })
                                                        .fail(function (error) {

                                                        });
                                                }
                                            }
                                        });
                                }
                            </script>
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div id="deleteContent_867" class="deleteContent_867 delText">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Удалить">
                            </div>

                            <!--Диалоговое окно удаления-->

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_867 = new BX.PopupWindow('del_dialog_867', window.body, {
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
                                                        $.ajax({
                                                            method: "POST",
                                                            url: "/pages/app/audio-release/refresh-page/delMetaData.aspx", //загружаемая страница
                                                            data: { "deleteid": 867 }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                //Обновление списка
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-metadata.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("div.popup-window").remove();
                                                                        $("div.popup-window-overlay").remove();
                                                                        $("#add_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                                //Обновление кнопки
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/create-iblock-ph-button-refresh.aspx", //загружаемая страница
                                                                    data: { ReleaseID: 845, RUserID: 4 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#area_button_add").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                            })
                                                            .fail(function (error) {

                                                            });
                                                        oPopup_867.close();
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "Нет",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_867.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_867.setContent(BX('hideBlock_867'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'deleteContent_867' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_867.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_867)
                                    );
                                    document.getElementById('deleteContent_867').focus();
                                });
                            </script>


                            <script>
                                $('#deleteContent_867').click(function () {

                                });
                            </script>
                        </div>
                    </li>



                    <li class="file_list_elem flexim botmarg17 ui-sortable-handle">
                        <div class="meta_list_elem_number W45" id="868">4</div>
                        <div class="W100W" id="metaName_868">Привет, Jeff!</div>
                        <div>
                            <a href="#" onclick="phEdit_868()">
                                <div class="flexim">
                                    <img src="/img/ico/edit.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Редактировать">
                                </div>
                            </a>
                            <script>
                                function phEdit_868() {
                                    BX.SidePanel.Instance.open("/pages/app/audio-release/metadata-edit.aspx?edit=Y&CODE=868&lang_ui=ru",
                                        {
                                            cacheable: false, //кеширование страницы
                                            allowChangeHistory: false,
                                            animationDuration: 0.01, //длительность анимации открытия
                                            Title: "Редактирование фонограмммы", //Заголовок страницы
                                            width: 750, //ширина слайдера
                                            events: {
                                                onunload: function (event) {
                                                    console.log(event.getSlider());
                                                },
                                                onClose: function (event) {
                                                    //Обновление имени файла
                                                    //Обновление списка
                                                    $.ajax({
                                                        method: "POST",
                                                        url: "/pages/app/audio-release/refresh-page/get-meta-name.aspx", //загружаемая страница
                                                        data: { metaID: 868 }, //параметры которые передаём
                                                        dataType: 'html', //Тип данных
                                                        cache: false,
                                                    })
                                                        .done(function (result) {
                                                            $("#metaName_868").html(result);
                                                        })
                                                        .fail(function (error) {

                                                        });
                                                }
                                            }
                                        });
                                }
                            </script>
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div id="deleteContent_868" class="deleteContent_868 delText">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Удалить">
                            </div>

                            <!--Диалоговое окно удаления-->

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_868 = new BX.PopupWindow('del_dialog_868', window.body, {
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
                                                        $.ajax({
                                                            method: "POST",
                                                            url: "/pages/app/audio-release/refresh-page/delMetaData.aspx", //загружаемая страница
                                                            data: { "deleteid": 868 }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                //Обновление списка
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-metadata.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("div.popup-window").remove();
                                                                        $("div.popup-window-overlay").remove();
                                                                        $("#add_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                                //Обновление кнопки
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/create-iblock-ph-button-refresh.aspx", //загружаемая страница
                                                                    data: { ReleaseID: 845, RUserID: 4 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#area_button_add").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                            })
                                                            .fail(function (error) {

                                                            });
                                                        oPopup_868.close();
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "Нет",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_868.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_868.setContent(BX('hideBlock_868'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'deleteContent_868' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_868.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_868)
                                    );
                                    document.getElementById('deleteContent_868').focus();
                                });
                            </script>


                            <script>
                                $('#deleteContent_868').click(function () {

                                });
                            </script>
                        </div>
                    </li>



                    <li class="file_list_elem flexim botmarg17 ui-sortable-handle">
                        <div class="meta_list_elem_number W45" id="869">5</div>
                        <div class="W100W" id="metaName_869">Game</div>
                        <div>
                            <a href="#" onclick="phEdit_869()">
                                <div class="flexim">
                                    <img src="/img/ico/edit.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Редактировать">
                                </div>
                            </a>
                            <script>
                                function phEdit_869() {
                                    BX.SidePanel.Instance.open("/pages/app/audio-release/metadata-edit.aspx?edit=Y&CODE=869&lang_ui=ru",
                                        {
                                            cacheable: false, //кеширование страницы
                                            allowChangeHistory: false,
                                            animationDuration: 0.01, //длительность анимации открытия
                                            Title: "Редактирование фонограмммы", //Заголовок страницы
                                            width: 750, //ширина слайдера
                                            events: {
                                                onunload: function (event) {
                                                    console.log(event.getSlider());
                                                },
                                                onClose: function (event) {
                                                    //Обновление имени файла
                                                    //Обновление списка
                                                    $.ajax({
                                                        method: "POST",
                                                        url: "/pages/app/audio-release/refresh-page/get-meta-name.aspx", //загружаемая страница
                                                        data: { metaID: 869 }, //параметры которые передаём
                                                        dataType: 'html', //Тип данных
                                                        cache: false,
                                                    })
                                                        .done(function (result) {
                                                            $("#metaName_869").html(result);
                                                        })
                                                        .fail(function (error) {

                                                        });
                                                }
                                            }
                                        });
                                }
                            </script>
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div id="deleteContent_869" class="deleteContent_869 delText">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Удалить">
                            </div>

                            <!--Диалоговое окно удаления-->

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_869 = new BX.PopupWindow('del_dialog_869', window.body, {
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
                                                        $.ajax({
                                                            method: "POST",
                                                            url: "/pages/app/audio-release/refresh-page/delMetaData.aspx", //загружаемая страница
                                                            data: { "deleteid": 869 }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                //Обновление списка
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-metadata.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("div.popup-window").remove();
                                                                        $("div.popup-window-overlay").remove();
                                                                        $("#add_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                                //Обновление кнопки
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/create-iblock-ph-button-refresh.aspx", //загружаемая страница
                                                                    data: { ReleaseID: 845, RUserID: 4 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#area_button_add").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                            })
                                                            .fail(function (error) {

                                                            });
                                                        oPopup_869.close();
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "Нет",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_869.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_869.setContent(BX('hideBlock_869'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'deleteContent_869' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_869.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_869)
                                    );
                                    document.getElementById('deleteContent_869').focus();
                                });
                            </script>


                            <script>
                                $('#deleteContent_869').click(function () {

                                });
                            </script>
                        </div>
                    </li>



                    <li class="file_list_elem flexim botmarg17 ui-sortable-handle">
                        <div class="meta_list_elem_number W45" id="870">6</div>
                        <div class="W100W" id="metaName_870">Ecstasy </div>
                        <div>
                            <a href="#" onclick="phEdit_870()">
                                <div class="flexim">
                                    <img src="/img/ico/edit.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Редактировать">
                                </div>
                            </a>
                            <script>
                                function phEdit_870() {
                                    BX.SidePanel.Instance.open("/pages/app/audio-release/metadata-edit.aspx?edit=Y&CODE=870&lang_ui=ru",
                                        {
                                            cacheable: false, //кеширование страницы
                                            allowChangeHistory: false,
                                            animationDuration: 0.01, //длительность анимации открытия
                                            Title: "Редактирование фонограмммы", //Заголовок страницы
                                            width: 750, //ширина слайдера
                                            events: {
                                                onunload: function (event) {
                                                    console.log(event.getSlider());
                                                },
                                                onClose: function (event) {
                                                    //Обновление имени файла
                                                    //Обновление списка
                                                    $.ajax({
                                                        method: "POST",
                                                        url: "/pages/app/audio-release/refresh-page/get-meta-name.aspx", //загружаемая страница
                                                        data: { metaID: 870 }, //параметры которые передаём
                                                        dataType: 'html', //Тип данных
                                                        cache: false,
                                                    })
                                                        .done(function (result) {
                                                            $("#metaName_870").html(result);
                                                        })
                                                        .fail(function (error) {

                                                        });
                                                }
                                            }
                                        });
                                }
                            </script>
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div id="deleteContent_870" class="deleteContent_870 delText">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Удалить">
                            </div>

                            <!--Диалоговое окно удаления-->

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_870 = new BX.PopupWindow('del_dialog_870', window.body, {
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
                                                        $.ajax({
                                                            method: "POST",
                                                            url: "/pages/app/audio-release/refresh-page/delMetaData.aspx", //загружаемая страница
                                                            data: { "deleteid": 870 }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                //Обновление списка
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-metadata.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("div.popup-window").remove();
                                                                        $("div.popup-window-overlay").remove();
                                                                        $("#add_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                                //Обновление кнопки
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/create-iblock-ph-button-refresh.aspx", //загружаемая страница
                                                                    data: { ReleaseID: 845, RUserID: 4 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#area_button_add").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                            })
                                                            .fail(function (error) {

                                                            });
                                                        oPopup_870.close();
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "Нет",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_870.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_870.setContent(BX('hideBlock_870'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'deleteContent_870' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_870.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_870)
                                    );
                                    document.getElementById('deleteContent_870').focus();
                                });
                            </script>


                            <script>
                                $('#deleteContent_870').click(function () {

                                });
                            </script>
                        </div>
                    </li>



                    <li class="file_list_elem flexim botmarg17 ui-sortable-handle">
                        <div class="meta_list_elem_number W45" id="871">7</div>
                        <div class="W100W" id="metaName_871">Неоконченная повесть </div>
                        <div>
                            <a href="#" onclick="phEdit_871()">
                                <div class="flexim">
                                    <img src="/img/ico/edit.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Редактировать">
                                </div>
                            </a>
                            <script>
                                function phEdit_871() {
                                    BX.SidePanel.Instance.open("/pages/app/audio-release/metadata-edit.aspx?edit=Y&CODE=871&lang_ui=ru",
                                        {
                                            cacheable: false, //кеширование страницы
                                            allowChangeHistory: false,
                                            animationDuration: 0.01, //длительность анимации открытия
                                            Title: "Редактирование фонограмммы", //Заголовок страницы
                                            width: 750, //ширина слайдера
                                            events: {
                                                onunload: function (event) {
                                                    console.log(event.getSlider());
                                                },
                                                onClose: function (event) {
                                                    //Обновление имени файла
                                                    //Обновление списка
                                                    $.ajax({
                                                        method: "POST",
                                                        url: "/pages/app/audio-release/refresh-page/get-meta-name.aspx", //загружаемая страница
                                                        data: { metaID: 871 }, //параметры которые передаём
                                                        dataType: 'html', //Тип данных
                                                        cache: false,
                                                    })
                                                        .done(function (result) {
                                                            $("#metaName_871").html(result);
                                                        })
                                                        .fail(function (error) {

                                                        });
                                                }
                                            }
                                        });
                                }
                            </script>
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div id="deleteContent_871" class="deleteContent_871 delText">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Удалить">
                            </div>

                            <!--Диалоговое окно удаления-->

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_871 = new BX.PopupWindow('del_dialog_871', window.body, {
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
                                                        $.ajax({
                                                            method: "POST",
                                                            url: "/pages/app/audio-release/refresh-page/delMetaData.aspx", //загружаемая страница
                                                            data: { "deleteid": 871 }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                //Обновление списка
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-metadata.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("div.popup-window").remove();
                                                                        $("div.popup-window-overlay").remove();
                                                                        $("#add_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                                //Обновление кнопки
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/create-iblock-ph-button-refresh.aspx", //загружаемая страница
                                                                    data: { ReleaseID: 845, RUserID: 4 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#area_button_add").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                            })
                                                            .fail(function (error) {

                                                            });
                                                        oPopup_871.close();
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "Нет",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_871.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_871.setContent(BX('hideBlock_871'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'deleteContent_871' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_871.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_871)
                                    );
                                    document.getElementById('deleteContent_871').focus();
                                });
                            </script>


                            <script>
                                $('#deleteContent_871').click(function () {

                                });
                            </script>
                        </div>
                    </li>



                    <li class="file_list_elem flexim botmarg17 ui-sortable-handle">
                        <div class="meta_list_elem_number W45" id="872">8</div>
                        <div class="W100W" id="metaName_872">Sexyhorsessuccess</div>
                        <div>
                            <a href="#" onclick="phEdit_872()">
                                <div class="flexim">
                                    <img src="/img/ico/edit.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Редактировать">
                                </div>
                            </a>
                            <script>
                                function phEdit_872() {
                                    BX.SidePanel.Instance.open("/pages/app/audio-release/metadata-edit.aspx?edit=Y&CODE=872&lang_ui=ru",
                                        {
                                            cacheable: false, //кеширование страницы
                                            allowChangeHistory: false,
                                            animationDuration: 0.01, //длительность анимации открытия
                                            Title: "Редактирование фонограмммы", //Заголовок страницы
                                            width: 750, //ширина слайдера
                                            events: {
                                                onunload: function (event) {
                                                    console.log(event.getSlider());
                                                },
                                                onClose: function (event) {
                                                    //Обновление имени файла
                                                    //Обновление списка
                                                    $.ajax({
                                                        method: "POST",
                                                        url: "/pages/app/audio-release/refresh-page/get-meta-name.aspx", //загружаемая страница
                                                        data: { metaID: 872 }, //параметры которые передаём
                                                        dataType: 'html', //Тип данных
                                                        cache: false,
                                                    })
                                                        .done(function (result) {
                                                            $("#metaName_872").html(result);
                                                        })
                                                        .fail(function (error) {

                                                        });
                                                }
                                            }
                                        });
                                }
                            </script>
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div id="deleteContent_872" class="deleteContent_872 delText">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Удалить">
                            </div>

                            <!--Диалоговое окно удаления-->

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_872 = new BX.PopupWindow('del_dialog_872', window.body, {
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
                                                        $.ajax({
                                                            method: "POST",
                                                            url: "/pages/app/audio-release/refresh-page/delMetaData.aspx", //загружаемая страница
                                                            data: { "deleteid": 872 }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                //Обновление списка
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-metadata.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("div.popup-window").remove();
                                                                        $("div.popup-window-overlay").remove();
                                                                        $("#add_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                                //Обновление кнопки
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/create-iblock-ph-button-refresh.aspx", //загружаемая страница
                                                                    data: { ReleaseID: 845, RUserID: 4 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#area_button_add").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                            })
                                                            .fail(function (error) {

                                                            });
                                                        oPopup_872.close();
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "Нет",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_872.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_872.setContent(BX('hideBlock_872'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'deleteContent_872' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_872.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_872)
                                    );
                                    document.getElementById('deleteContent_872').focus();
                                });
                            </script>


                            <script>
                                $('#deleteContent_872').click(function () {

                                });
                            </script>
                        </div>
                    </li>



                    <li class="file_list_elem flexim botmarg17 ui-sortable-handle">
                        <div class="meta_list_elem_number W45" id="873">9</div>
                        <div class="W100W" id="metaName_873">Summer Blues</div>
                        <div>
                            <a href="#" onclick="phEdit_873()">
                                <div class="flexim">
                                    <img src="/img/ico/edit.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Редактировать">
                                </div>
                            </a>
                            <script>
                                function phEdit_873() {
                                    BX.SidePanel.Instance.open("/pages/app/audio-release/metadata-edit.aspx?edit=Y&CODE=873&lang_ui=ru",
                                        {
                                            cacheable: false, //кеширование страницы
                                            allowChangeHistory: false,
                                            animationDuration: 0.01, //длительность анимации открытия
                                            Title: "Редактирование фонограмммы", //Заголовок страницы
                                            width: 750, //ширина слайдера
                                            events: {
                                                onunload: function (event) {
                                                    console.log(event.getSlider());
                                                },
                                                onClose: function (event) {
                                                    //Обновление имени файла
                                                    //Обновление списка
                                                    $.ajax({
                                                        method: "POST",
                                                        url: "/pages/app/audio-release/refresh-page/get-meta-name.aspx", //загружаемая страница
                                                        data: { metaID: 873 }, //параметры которые передаём
                                                        dataType: 'html', //Тип данных
                                                        cache: false,
                                                    })
                                                        .done(function (result) {
                                                            $("#metaName_873").html(result);
                                                        })
                                                        .fail(function (error) {

                                                        });
                                                }
                                            }
                                        });
                                }
                            </script>
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div id="deleteContent_873" class="deleteContent_873 delText">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Удалить">
                            </div>

                            <!--Диалоговое окно удаления-->

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_873 = new BX.PopupWindow('del_dialog_873', window.body, {
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
                                                        $.ajax({
                                                            method: "POST",
                                                            url: "/pages/app/audio-release/refresh-page/delMetaData.aspx", //загружаемая страница
                                                            data: { "deleteid": 873 }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                //Обновление списка
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-metadata.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("div.popup-window").remove();
                                                                        $("div.popup-window-overlay").remove();
                                                                        $("#add_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                                //Обновление кнопки
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/create-iblock-ph-button-refresh.aspx", //загружаемая страница
                                                                    data: { ReleaseID: 845, RUserID: 4 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#area_button_add").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                            })
                                                            .fail(function (error) {

                                                            });
                                                        oPopup_873.close();
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "Нет",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_873.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_873.setContent(BX('hideBlock_873'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'deleteContent_873' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_873.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_873)
                                    );
                                    document.getElementById('deleteContent_873').focus();
                                });
                            </script>


                            <script>
                                $('#deleteContent_873').click(function () {

                                });
                            </script>
                        </div>
                    </li>



                    <li class="file_list_elem flexim botmarg17 ui-sortable-handle">
                        <div class="meta_list_elem_number W45" id="874">10</div>
                        <div class="W100W" id="metaName_874">Avalanche</div>
                        <div>
                            <a href="#" onclick="phEdit_874()">
                                <div class="flexim">
                                    <img src="/img/ico/edit.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Редактировать">
                                </div>
                            </a>
                            <script>
                                function phEdit_874() {
                                    BX.SidePanel.Instance.open("/pages/app/audio-release/metadata-edit.aspx?edit=Y&CODE=874&lang_ui=ru",
                                        {
                                            cacheable: false, //кеширование страницы
                                            allowChangeHistory: false,
                                            animationDuration: 0.01, //длительность анимации открытия
                                            Title: "Редактирование фонограмммы", //Заголовок страницы
                                            width: 750, //ширина слайдера
                                            events: {
                                                onunload: function (event) {
                                                    console.log(event.getSlider());
                                                },
                                                onClose: function (event) {
                                                    //Обновление имени файла
                                                    //Обновление списка
                                                    $.ajax({
                                                        method: "POST",
                                                        url: "/pages/app/audio-release/refresh-page/get-meta-name.aspx", //загружаемая страница
                                                        data: { metaID: 874 }, //параметры которые передаём
                                                        dataType: 'html', //Тип данных
                                                        cache: false,
                                                    })
                                                        .done(function (result) {
                                                            $("#metaName_874").html(result);
                                                        })
                                                        .fail(function (error) {

                                                        });
                                                }
                                            }
                                        });
                                }
                            </script>
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div id="deleteContent_874" class="deleteContent_874 delText">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Удалить">
                            </div>

                            <!--Диалоговое окно удаления-->

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_874 = new BX.PopupWindow('del_dialog_874', window.body, {
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
                                                        $.ajax({
                                                            method: "POST",
                                                            url: "/pages/app/audio-release/refresh-page/delMetaData.aspx", //загружаемая страница
                                                            data: { "deleteid": 874 }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                //Обновление списка
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-metadata.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("div.popup-window").remove();
                                                                        $("div.popup-window-overlay").remove();
                                                                        $("#add_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                                //Обновление кнопки
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/create-iblock-ph-button-refresh.aspx", //загружаемая страница
                                                                    data: { ReleaseID: 845, RUserID: 4 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#area_button_add").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                            })
                                                            .fail(function (error) {

                                                            });
                                                        oPopup_874.close();
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "Нет",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_874.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_874.setContent(BX('hideBlock_874'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'deleteContent_874' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_874.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_874)
                                    );
                                    document.getElementById('deleteContent_874').focus();
                                });
                            </script>


                            <script>
                                $('#deleteContent_874').click(function () {

                                });
                            </script>
                        </div>
                    </li>



                    <li class="file_list_elem flexim botmarg17 ui-sortable-handle">
                        <div class="meta_list_elem_number W45" id="875">11</div>
                        <div class="W100W" id="metaName_875">Вокруг пурпурного C</div>
                        <div>
                            <a href="#" onclick="phEdit_875()">
                                <div class="flexim">
                                    <img src="/img/ico/edit.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Редактировать">
                                </div>
                            </a>
                            <script>
                                function phEdit_875() {
                                    BX.SidePanel.Instance.open("/pages/app/audio-release/metadata-edit.aspx?edit=Y&CODE=875&lang_ui=ru",
                                        {
                                            cacheable: false, //кеширование страницы
                                            allowChangeHistory: false,
                                            animationDuration: 0.01, //длительность анимации открытия
                                            Title: "Редактирование фонограмммы", //Заголовок страницы
                                            width: 750, //ширина слайдера
                                            events: {
                                                onunload: function (event) {
                                                    console.log(event.getSlider());
                                                },
                                                onClose: function (event) {
                                                    //Обновление имени файла
                                                    //Обновление списка
                                                    $.ajax({
                                                        method: "POST",
                                                        url: "/pages/app/audio-release/refresh-page/get-meta-name.aspx", //загружаемая страница
                                                        data: { metaID: 875 }, //параметры которые передаём
                                                        dataType: 'html', //Тип данных
                                                        cache: false,
                                                    })
                                                        .done(function (result) {
                                                            $("#metaName_875").html(result);
                                                        })
                                                        .fail(function (error) {

                                                        });
                                                }
                                            }
                                        });
                                }
                            </script>
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div id="deleteContent_875" class="deleteContent_875 delText">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Удалить">
                            </div>

                            <!--Диалоговое окно удаления-->

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_875 = new BX.PopupWindow('del_dialog_875', window.body, {
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
                                                        $.ajax({
                                                            method: "POST",
                                                            url: "/pages/app/audio-release/refresh-page/delMetaData.aspx", //загружаемая страница
                                                            data: { "deleteid": 875 }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                //Обновление списка
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-metadata.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("div.popup-window").remove();
                                                                        $("div.popup-window-overlay").remove();
                                                                        $("#add_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                                //Обновление кнопки
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/create-iblock-ph-button-refresh.aspx", //загружаемая страница
                                                                    data: { ReleaseID: 845, RUserID: 4 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#area_button_add").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                            })
                                                            .fail(function (error) {

                                                            });
                                                        oPopup_875.close();
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "Нет",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_875.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_875.setContent(BX('hideBlock_875'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'deleteContent_875' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_875.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_875)
                                    );
                                    document.getElementById('deleteContent_875').focus();
                                });
                            </script>


                            <script>
                                $('#deleteContent_875').click(function () {

                                });
                            </script>
                        </div>
                    </li>



                    <li class="file_list_elem flexim botmarg17 ui-sortable-handle">
                        <div class="meta_list_elem_number W45" id="876">12</div>
                        <div class="W100W" id="metaName_876">Play with Me</div>
                        <div>
                            <a href="#" onclick="phEdit_876()">
                                <div class="flexim">
                                    <img src="/img/ico/edit.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Редактировать">
                                </div>
                            </a>
                            <script>
                                function phEdit_876() {
                                    BX.SidePanel.Instance.open("/pages/app/audio-release/metadata-edit.aspx?edit=Y&CODE=876&lang_ui=ru",
                                        {
                                            cacheable: false, //кеширование страницы
                                            allowChangeHistory: false,
                                            animationDuration: 0.01, //длительность анимации открытия
                                            Title: "Редактирование фонограмммы", //Заголовок страницы
                                            width: 750, //ширина слайдера
                                            events: {
                                                onunload: function (event) {
                                                    console.log(event.getSlider());
                                                },
                                                onClose: function (event) {
                                                    //Обновление имени файла
                                                    //Обновление списка
                                                    $.ajax({
                                                        method: "POST",
                                                        url: "/pages/app/audio-release/refresh-page/get-meta-name.aspx", //загружаемая страница
                                                        data: { metaID: 876 }, //параметры которые передаём
                                                        dataType: 'html', //Тип данных
                                                        cache: false,
                                                    })
                                                        .done(function (result) {
                                                            $("#metaName_876").html(result);
                                                        })
                                                        .fail(function (error) {

                                                        });
                                                }
                                            }
                                        });
                                }
                            </script>
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div id="deleteContent_876" class="deleteContent_876 delText">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Удалить">
                            </div>

                            <!--Диалоговое окно удаления-->

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_876 = new BX.PopupWindow('del_dialog_876', window.body, {
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
                                                        $.ajax({
                                                            method: "POST",
                                                            url: "/pages/app/audio-release/refresh-page/delMetaData.aspx", //загружаемая страница
                                                            data: { "deleteid": 876 }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                //Обновление списка
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-metadata.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("div.popup-window").remove();
                                                                        $("div.popup-window-overlay").remove();
                                                                        $("#add_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                                //Обновление кнопки
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/create-iblock-ph-button-refresh.aspx", //загружаемая страница
                                                                    data: { ReleaseID: 845, RUserID: 4 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#area_button_add").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                            })
                                                            .fail(function (error) {

                                                            });
                                                        oPopup_876.close();
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "Нет",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_876.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_876.setContent(BX('hideBlock_876'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'deleteContent_876' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_876.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_876)
                                    );
                                    document.getElementById('deleteContent_876').focus();
                                });
                            </script>


                            <script>
                                $('#deleteContent_876').click(function () {

                                });
                            </script>
                        </div>
                    </li>



                    <li class="file_list_elem flexim botmarg17 ui-sortable-handle">
                        <div class="meta_list_elem_number W45" id="877">13</div>
                        <div class="W100W" id="metaName_877">Free Line</div>
                        <div>
                            <a href="#" onclick="phEdit_877()">
                                <div class="flexim">
                                    <img src="/img/ico/edit.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Редактировать">
                                </div>
                            </a>
                            <script>
                                function phEdit_877() {
                                    BX.SidePanel.Instance.open("/pages/app/audio-release/metadata-edit.aspx?edit=Y&CODE=877&lang_ui=ru",
                                        {
                                            cacheable: false, //кеширование страницы
                                            allowChangeHistory: false,
                                            animationDuration: 0.01, //длительность анимации открытия
                                            Title: "Редактирование фонограмммы", //Заголовок страницы
                                            width: 750, //ширина слайдера
                                            events: {
                                                onunload: function (event) {
                                                    console.log(event.getSlider());
                                                },
                                                onClose: function (event) {
                                                    //Обновление имени файла
                                                    //Обновление списка
                                                    $.ajax({
                                                        method: "POST",
                                                        url: "/pages/app/audio-release/refresh-page/get-meta-name.aspx", //загружаемая страница
                                                        data: { metaID: 877 }, //параметры которые передаём
                                                        dataType: 'html', //Тип данных
                                                        cache: false,
                                                    })
                                                        .done(function (result) {
                                                            $("#metaName_877").html(result);
                                                        })
                                                        .fail(function (error) {

                                                        });
                                                }
                                            }
                                        });
                                }
                            </script>
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div id="deleteContent_877" class="deleteContent_877 delText">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Удалить">
                            </div>

                            <!--Диалоговое окно удаления-->

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_877 = new BX.PopupWindow('del_dialog_877', window.body, {
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
                                                        $.ajax({
                                                            method: "POST",
                                                            url: "/pages/app/audio-release/refresh-page/delMetaData.aspx", //загружаемая страница
                                                            data: { "deleteid": 877 }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                //Обновление списка
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-metadata.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("div.popup-window").remove();
                                                                        $("div.popup-window-overlay").remove();
                                                                        $("#add_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                                //Обновление кнопки
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/create-iblock-ph-button-refresh.aspx", //загружаемая страница
                                                                    data: { ReleaseID: 845, RUserID: 4 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#area_button_add").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                            })
                                                            .fail(function (error) {

                                                            });
                                                        oPopup_877.close();
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "Нет",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_877.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_877.setContent(BX('hideBlock_877'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'deleteContent_877' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_877.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_877)
                                    );
                                    document.getElementById('deleteContent_877').focus();
                                });
                            </script>


                            <script>
                                $('#deleteContent_877').click(function () {

                                });
                            </script>
                        </div>
                    </li>



                    <li class="file_list_elem flexim botmarg17 ui-sortable-handle">
                        <div class="meta_list_elem_number W45" id="878">14</div>
                        <div class="W100W" id="metaName_878">Я люблю</div>
                        <div>
                            <a href="#" onclick="phEdit_878()">
                                <div class="flexim">
                                    <img src="/img/ico/edit.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Редактировать">
                                </div>
                            </a>
                            <script>
                                function phEdit_878() {
                                    BX.SidePanel.Instance.open("/pages/app/audio-release/metadata-edit.aspx?edit=Y&CODE=878&lang_ui=ru",
                                        {
                                            cacheable: false, //кеширование страницы
                                            allowChangeHistory: false,
                                            animationDuration: 0.01, //длительность анимации открытия
                                            Title: "Редактирование фонограмммы", //Заголовок страницы
                                            width: 750, //ширина слайдера
                                            events: {
                                                onunload: function (event) {
                                                    console.log(event.getSlider());
                                                },
                                                onClose: function (event) {
                                                    //Обновление имени файла
                                                    //Обновление списка
                                                    $.ajax({
                                                        method: "POST",
                                                        url: "/pages/app/audio-release/refresh-page/get-meta-name.aspx", //загружаемая страница
                                                        data: { metaID: 878 }, //параметры которые передаём
                                                        dataType: 'html', //Тип данных
                                                        cache: false,
                                                    })
                                                        .done(function (result) {
                                                            $("#metaName_878").html(result);
                                                        })
                                                        .fail(function (error) {

                                                        });
                                                }
                                            }
                                        });
                                }
                            </script>
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div id="deleteContent_878" class="deleteContent_878 delText">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Удалить">
                            </div>

                            <!--Диалоговое окно удаления-->

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_878 = new BX.PopupWindow('del_dialog_878', window.body, {
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
                                                        $.ajax({
                                                            method: "POST",
                                                            url: "/pages/app/audio-release/refresh-page/delMetaData.aspx", //загружаемая страница
                                                            data: { "deleteid": 878 }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                //Обновление списка
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-metadata.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("div.popup-window").remove();
                                                                        $("div.popup-window-overlay").remove();
                                                                        $("#add_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                                //Обновление кнопки
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/create-iblock-ph-button-refresh.aspx", //загружаемая страница
                                                                    data: { ReleaseID: 845, RUserID: 4 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#area_button_add").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                            })
                                                            .fail(function (error) {

                                                            });
                                                        oPopup_878.close();
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "Нет",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_878.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_878.setContent(BX('hideBlock_878'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'deleteContent_878' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_878.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_878)
                                    );
                                    document.getElementById('deleteContent_878').focus();
                                });
                            </script>


                            <script>
                                $('#deleteContent_878').click(function () {

                                });
                            </script>
                        </div>
                    </li>



                    <li class="file_list_elem flexim botmarg17 ui-sortable-handle">
                        <div class="meta_list_elem_number W45" id="879">15</div>
                        <div class="W100W" id="metaName_879">Откровение</div>
                        <div>
                            <a href="#" onclick="phEdit_879()">
                                <div class="flexim">
                                    <img src="/img/ico/edit.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Редактировать">
                                </div>
                            </a>
                            <script>
                                function phEdit_879() {
                                    BX.SidePanel.Instance.open("/pages/app/audio-release/metadata-edit.aspx?edit=Y&CODE=879&lang_ui=ru",
                                        {
                                            cacheable: false, //кеширование страницы
                                            allowChangeHistory: false,
                                            animationDuration: 0.01, //длительность анимации открытия
                                            Title: "Редактирование фонограмммы", //Заголовок страницы
                                            width: 750, //ширина слайдера
                                            events: {
                                                onunload: function (event) {
                                                    console.log(event.getSlider());
                                                },
                                                onClose: function (event) {
                                                    //Обновление имени файла
                                                    //Обновление списка
                                                    $.ajax({
                                                        method: "POST",
                                                        url: "/pages/app/audio-release/refresh-page/get-meta-name.aspx", //загружаемая страница
                                                        data: { metaID: 879 }, //параметры которые передаём
                                                        dataType: 'html', //Тип данных
                                                        cache: false,
                                                    })
                                                        .done(function (result) {
                                                            $("#metaName_879").html(result);
                                                        })
                                                        .fail(function (error) {

                                                        });
                                                }
                                            }
                                        });
                                }
                            </script>
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div id="deleteContent_879" class="deleteContent_879 delText">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Удалить">
                            </div>

                            <!--Диалоговое окно удаления-->

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_879 = new BX.PopupWindow('del_dialog_879', window.body, {
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
                                                        $.ajax({
                                                            method: "POST",
                                                            url: "/pages/app/audio-release/refresh-page/delMetaData.aspx", //загружаемая страница
                                                            data: { "deleteid": 879 }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                //Обновление списка
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-metadata.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("div.popup-window").remove();
                                                                        $("div.popup-window-overlay").remove();
                                                                        $("#add_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                                //Обновление кнопки
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/create-iblock-ph-button-refresh.aspx", //загружаемая страница
                                                                    data: { ReleaseID: 845, RUserID: 4 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#area_button_add").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                            })
                                                            .fail(function (error) {

                                                            });
                                                        oPopup_879.close();
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "Нет",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_879.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_879.setContent(BX('hideBlock_879'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'deleteContent_879' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_879.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_879)
                                    );
                                    document.getElementById('deleteContent_879').focus();
                                });
                            </script>


                            <script>
                                $('#deleteContent_879').click(function () {

                                });
                            </script>
                        </div>
                    </li>



                    <li class="file_list_elem flexim botmarg17 ui-sortable-handle">
                        <div class="meta_list_elem_number W45" id="880">16</div>
                        <div class="W100W" id="metaName_880">Rubicon</div>
                        <div>
                            <a href="#" onclick="phEdit_880()">
                                <div class="flexim">
                                    <img src="/img/ico/edit.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Редактировать">
                                </div>
                            </a>
                            <script>
                                function phEdit_880() {
                                    BX.SidePanel.Instance.open("/pages/app/audio-release/metadata-edit.aspx?edit=Y&CODE=880&lang_ui=ru",
                                        {
                                            cacheable: false, //кеширование страницы
                                            allowChangeHistory: false,
                                            animationDuration: 0.01, //длительность анимации открытия
                                            Title: "Редактирование фонограмммы", //Заголовок страницы
                                            width: 750, //ширина слайдера
                                            events: {
                                                onunload: function (event) {
                                                    console.log(event.getSlider());
                                                },
                                                onClose: function (event) {
                                                    //Обновление имени файла
                                                    //Обновление списка
                                                    $.ajax({
                                                        method: "POST",
                                                        url: "/pages/app/audio-release/refresh-page/get-meta-name.aspx", //загружаемая страница
                                                        data: { metaID: 880 }, //параметры которые передаём
                                                        dataType: 'html', //Тип данных
                                                        cache: false,
                                                    })
                                                        .done(function (result) {
                                                            $("#metaName_880").html(result);
                                                        })
                                                        .fail(function (error) {

                                                        });
                                                }
                                            }
                                        });
                                }
                            </script>
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div id="deleteContent_880" class="deleteContent_880 delText">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Удалить">
                            </div>

                            <!--Диалоговое окно удаления-->

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_880 = new BX.PopupWindow('del_dialog_880', window.body, {
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
                                                        $.ajax({
                                                            method: "POST",
                                                            url: "/pages/app/audio-release/refresh-page/delMetaData.aspx", //загружаемая страница
                                                            data: { "deleteid": 880 }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                //Обновление списка
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-metadata.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("div.popup-window").remove();
                                                                        $("div.popup-window-overlay").remove();
                                                                        $("#add_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                                //Обновление кнопки
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/create-iblock-ph-button-refresh.aspx", //загружаемая страница
                                                                    data: { ReleaseID: 845, RUserID: 4 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#area_button_add").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                            })
                                                            .fail(function (error) {

                                                            });
                                                        oPopup_880.close();
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "Нет",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_880.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_880.setContent(BX('hideBlock_880'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'deleteContent_880' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_880.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_880)
                                    );
                                    document.getElementById('deleteContent_880').focus();
                                });
                            </script>


                            <script>
                                $('#deleteContent_880').click(function () {

                                });
                            </script>
                        </div>
                    </li>



                    <li class="file_list_elem flexim botmarg17 ui-sortable-handle">
                        <div class="meta_list_elem_number W45" id="881">17</div>
                        <div class="W100W" id="metaName_881">Памяти друзей</div>
                        <div>
                            <a href="#" onclick="phEdit_881()">
                                <div class="flexim">
                                    <img src="/img/ico/edit.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Редактировать">
                                </div>
                            </a>
                            <script>
                                function phEdit_881() {
                                    BX.SidePanel.Instance.open("/pages/app/audio-release/metadata-edit.aspx?edit=Y&CODE=881&lang_ui=ru",
                                        {
                                            cacheable: false, //кеширование страницы
                                            allowChangeHistory: false,
                                            animationDuration: 0.01, //длительность анимации открытия
                                            Title: "Редактирование фонограмммы", //Заголовок страницы
                                            width: 750, //ширина слайдера
                                            events: {
                                                onunload: function (event) {
                                                    console.log(event.getSlider());
                                                },
                                                onClose: function (event) {
                                                    //Обновление имени файла
                                                    //Обновление списка
                                                    $.ajax({
                                                        method: "POST",
                                                        url: "/pages/app/audio-release/refresh-page/get-meta-name.aspx", //загружаемая страница
                                                        data: { metaID: 881 }, //параметры которые передаём
                                                        dataType: 'html', //Тип данных
                                                        cache: false,
                                                    })
                                                        .done(function (result) {
                                                            $("#metaName_881").html(result);
                                                        })
                                                        .fail(function (error) {

                                                        });
                                                }
                                            }
                                        });
                                }
                            </script>
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div id="deleteContent_881" class="deleteContent_881 delText">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Удалить">
                            </div>

                            <!--Диалоговое окно удаления-->

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_881 = new BX.PopupWindow('del_dialog_881', window.body, {
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
                                                        $.ajax({
                                                            method: "POST",
                                                            url: "/pages/app/audio-release/refresh-page/delMetaData.aspx", //загружаемая страница
                                                            data: { "deleteid": 881 }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                //Обновление списка
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/refresh-list-metadata.aspx", //загружаемая страница
                                                                    data: { CODE: 845 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("div.popup-window").remove();
                                                                        $("div.popup-window-overlay").remove();
                                                                        $("#add_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                                //Обновление кнопки
                                                                $.ajax({
                                                                    method: "POST",
                                                                    url: "/pages/app/audio-release/refresh-page/create-iblock-ph-button-refresh.aspx", //загружаемая страница
                                                                    data: { ReleaseID: 845, RUserID: 4 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        $("#area_button_add").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });

                                                            })
                                                            .fail(function (error) {

                                                            });
                                                        oPopup_881.close();
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "Нет",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_881.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_881.setContent(BX('hideBlock_881'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'deleteContent_881' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_881.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_881)
                                    );
                                    document.getElementById('deleteContent_881').focus();
                                });
                            </script>


                            <script>
                                $('#deleteContent_881').click(function () {

                                });
                            </script>
                        </div>
                    </li>



                    <li class="file_list_elem flexim botmarg17 ui-sortable-handle">
                        <div class="meta_list_elem_number W45" id="882">18</div>
                        <div class="W100W" id="metaName_882">Смятение</div>
                        <div>
                            <a href="#" onclick="phEdit_882()">
                                <div class="flexim">
                                    <img src="/img/ico/edit.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Редактировать">
                                </div>
                            </a>
                            <script>
                                function phEdit_882() {
                                    BX.SidePanel.Instance.open("/pages/app/audio-release/metadata-edit.aspx?edit=Y&CODE=882&lang_ui=ru",
                                        {
                                            cacheable: false, //кеширование страницы
                                            allowChangeHistory: false,
                                            animationDuration: 0.01, //длительность анимации открытия
                                            Title: "Редактирование фонограмммы", //Заголовок страницы
                                            width: 750, //ширина слайдера
                                            events: {
                                                onunload: function (event) {
                                                    console.log(event.getSlider());
                                                },
                                                onClose: function (event) {
                                                    //Обновление имени файла
                                                    //Обновление списка
                                                    $.ajax({
                                                        method: "POST",
                                                        url: "/pages/app/audio-release/refresh-page/get-meta-name.aspx", //загружаемая страница
                                                        data: { metaID: 882 }, //параметры которые передаём
                                                        dataType: 'html', //Тип данных
                                                        cache: false,
                                                    })
                                                        .done(function (result) {
                                                            $("#metaName_882").html(result);
                                                        })
                                                        .fail(function (error) {

                                                        });
                                                }
                                            }
                                        });
                                }
                            </script>
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div id="deleteContent_882" class="deleteContent_882 delText">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Удалить">
                            </div>
                        </div>
                    </li>



                    <li class="file_list_elem flexim botmarg17 ui-sortable-handle">
                        <div class="meta_list_elem_number W45" id="883">19</div>
                        <div class="W100W" id="metaName_883">На счастье!</div>
                        <div>
                            <a href="#" onclick="phEdit_883()">
                                <div class="flexim">
                                    <img src="/img/ico/edit.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Редактировать">
                                </div>
                            </a>
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div id="deleteContent_883" class="deleteContent_883 delText">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px" title="Удалить">
                            </div>
                        </div>
                    </li>


                </ul>

                <script>	
                    $("#list_content").sortable({
                        update: function () {
                            $('.meta_list_elem_number').each(function (i, obj) {
                                $(this).html(i + 1);
                            });
                        }
                    });
                </script>

            </div>

        </div>
    </div>
    <div class="release_button_block flexim">
		<div class="button apply" id="save_list" 1="">СОХРАНИТЬ ПОРЯДОК</div>
	</div>
        </form>
</asp:Content>
