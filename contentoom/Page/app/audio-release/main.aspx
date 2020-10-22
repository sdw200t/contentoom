<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/template/app/app.Master" CodeBehind="main.aspx.vb" Inherits="contentoom.AudioReleaseMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Данные аудио релиза
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
                <h1>ДАННЫЕ РЕЛИЗА</h1>
            </div>

            <!--топ меню-->
            <div class="release_menu_top" id="release_menu_top">
                <!--Данные релиза-->
                <div class="full_elem_menu">
                    <a href="/page/app/audio-release/main.aspx?edit=Y&amp;CODE=845&amp;lang_ui=ru">
                        <div class="elem_menu_active">
                            Данные релиза					
                        </div>
                    </a>
                </div>
                <!--Аудио файлы фонограмм-->
                <div class="full_elem_menu">
                    <a href="/page/app/audio-release/files.aspx?edit=Y&amp;CODE=845&amp;CREATED=4&amp;lang_ui=ru">
                        <div class="elem_menu">
                            Аудио файлы фонограмм					
                        </div>
                    </a>
                </div>
                <!--Метаданные фонограмм-->
                <div class="full_elem_menu">
                    <a href="/page/app/audio-release/metadata.aspx?edit=Y&amp;CODE=845&amp;CREATED=4&amp;lang_ui=ru">
                        <div class="elem_menu">
                            Метаданные фонограмм					
                        </div>
                    </a>
                </div>
                <!--Регионы-->
                <div class="full_elem_menu">
                    <a href="/page/app/audio-release/regions.aspx?edit=Y&amp;CODE=845&amp;CREATED=4&amp;lang_ui=ru">
                        <div class="elem_menu">
                            Регионы					
                        </div>
                    </a>
                </div>
                <!--Промо-->
                <div class="full_elem_menu">
                    <a href="/page/app/audio-release/promo.aspx?edit=Y&amp;CODE=845&amp;CREATED=4&amp;lang_ui=ru">
                        <div class="elem_menu">
                            Промо					
                        </div>
                    </a>
                </div>
                <!--Готовность-->
                <div class="full_elem_menu">
                    <a href="/page/app/audio-release/ready.aspx?edit=Y&amp;CODE=845&amp;CREATED=4&amp;lang_ui=ru">
                        <div class="elem_menu">
                            Готовность					
                        </div>
                    </a>
                </div>
                <!--Проверка и отправка-->
                <div class="full_elem_menu">
                    <a href="/page/app/audio-release/check.aspx?edit=Y&amp;CODE=845&amp;CREATED=4&amp;lang_ui=ru">
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

            <div class="flexim" style="margin-top: 37px;">

                <div style="margin-right: 37px;">

                    <!--Статус-->
                    <div class="elem_name botmarg37">
                        Статус:
												<input type="hidden" name="PROPERTY[94][0][VALUE]" value="status_01_correction">
                        <input class="input_disabled W450" type="text" value="На исправлении" disabled="" title="Не редактируется">
                    </div>

                    <!--Тип-->
                    <div class="elem_name">
                        Тип				
                    </div>
                    <div class="botmarg37">
                        <select name="PROPERTY[1][0][VALUE]">
                            <option value="">(не выбрано)</option>
                            <option value="jazz">Джаз </option>
                            <option value="classic">Классическая </option>
                            <option value="standart" selected="selected">Стандартный аудио релиз </option>
                        </select>
                    </div>

                    <!--Название-->
                    <div class="elem_name">
                        Название аудио релиза				
                    </div>
                    <div class="botmarg37">
                        <input type="text" name="PROPERTY[NAME][0]" class="input_text W450" value="Повороты судьбы ">
                    </div>


                    <!--Версия, подзаголовок-->
                    <div class="elem_name">
                        Версия, подзаголовок				
                    </div>
                    <div class="botmarg37 flexim">
                        <input type="text" name="PROPERTY[28][0][VALUE]" class="input_text W450" value="">
                        <span class="tooltip tooltipstered">
                            <div class="counter_but">?</div>
                        </span>
                    </div>


                </div>

                <div class="W400">
                    <!--Обложка-->
                    <div id="cover_area"></div>
                    <div class="upload_cover"></div>
                    <input id="inputCover" type="hidden" name="PROPERTY[4][0]" class="input_text W450" value="/img/ico/cover.gif">

                    <div class="flexim">
                        <div id="cover_show">
                            <img style="border-radius: 10px;" width="100%" src="/img/ico/cover.gif">
                        </div>
                        <div>
                            <!--Кнопка удалить-->
                            <div class="black" onclick="delCover()" style="margin-left: 20px; cursor: pointer; margin-top: 10px;" title="Удалить обложку">
                                <img src="/img/ico/delete_active.svg" width="40px" height="40px">
                            </div>
                            <script type="text/javascript">
                                function delCover() {
                                    document.getElementById("cover_show").innerHTML = '<img width="100%" src="/img/ico/cover.gif">';
                                    document.getElementById("inputCover").value = null;
                                    $.post('/app/refresh-page/delfile.aspx', { file: $arResult[ELEMENT_PROPERTIES][4][0][VALUE] });
                                }
                            </script>

                            <!--Кнопка скачать-->
                            <a download="" href="/img/ico/cover.gif" class="black" style="margin-left: 20px;" title="Скачать обложку">
                                <img src="/img/ico/download_active.svg" width="40px" height="40px" style="margin-top: 10px;"></a>
                        </div>
                    </div>

                    <div class="CoverUpload fs-upload-element fs-upload fs-light">
                        <div class="fs-upload-target">Загрузить</div>
                        <input class="fs-upload-input" type="file">
                    </div>
                    <div id="CoverResult" class="CoverResult"></div>

                </div>
            </div>

            <datalist id="listArtistName">
                <option value="апр"></option>
                <option value="апруке"></option>
                <option value="йцуек"></option>
                <option value="Антон"></option>
                <option value="Антон"></option>
                <option value="sgg"></option>
            </datalist>

            <!--Имя основного Исполнителя-->
            <div class="elem_name">
                Имя основного исполнителя           
            </div>
            <div class="botmarg37">
                <div id="main0" class="counter_poly botmarg37">
                    <div class="main_class W500">
                        <input type="text" id="MainArtist_0" name="PROPERTY[6][0][VALUE]" list="listArtistName" class="input_text W450" value="Дмитрий Четвергов" placeholder="Имя основного исполнителя">
                        <!--Ссылка на Apple-->
                        <input type="text" name="PROPERTY[98][0][VALUE]" class="input_text W450" value="ссылка" placeholder="Ссылка на Apple">
                        <!--Ссылка на Spotify-->
                        <input type="text" name="PROPERTY[99][0][VALUE]" class="input_text W450" value="" placeholder="Ссылка на Spotify">
                    </div>
                    <!--Кнопки доб/уд-->
                    <span class="tooltip tooltipstered">
                        <div class="counter_but">?</div>
                    </span>
                    <div class="counter_but" onclick="addMain()">+</div>
                    <div class="counter_but" onclick="delMain()">-</div>
                    <div class="counter_but" onclick="SaveArtist_0()">
                        <img src="/img/ico/name_artist_save.svg">
                    </div>
                    <script>
                        function SaveArtist_0() {
                            $(document).ready(function () {
                                $.ajax({
                                    type: "POST",
                                    url: "/page/app/audio-release/refresh-page/save-artist-name.aspx",
                                    data: { "Artists": ["апр", "апруке", "йцуек", "Антон", "Антон", "sgg",], "UserID": 1, "NewArtist": document.getElementById("MainArtist_0").value },
                                    dataType: 'html',
                                    cache: false,
                                })
                                    .done(function (result) {
                                        console.log('ok');
                                    })
                                    .fail(function (error) {

                                    });
                            });
                        }
                    </script>
                </div>

                <div id="r_main" class="botmarg37">
                </div>

                <script type="text/javascript">
                    var xMain = 0;

                    function addMain() {
                        if (document.getElementById('MainArtist_' + xMain).value !== "") {
                            document.getElementById('MainArtist_' + xMain).placeholder = "Имя основного исполнителя";
                            document.getElementById('MainArtist_' + xMain).className = "input_text W450";
                            var profile = document.getElementById('r_main');
                            var div = document.createElement('div');
                            div.id = 'main' + ++xMain;
                            div.classList.toggle('botmarg37');
                            div.innerHTML = '<input class="input_text W450" list="listArtistName" type="text" name="PROPERTY[6][' + xMain + ']" id="MainArtist_' + xMain + '" placeholder="Имя основного исполнителя"><input class="input_text W450" type="text" name="PROPERTY[98][' + xMain + ']" placeholder="Ссылка на Apple"><input class="input_text W450" type="text" name="PROPERTY[99][' + xMain + ']" placeholder="Ссылка на Spotify">';
                            profile.appendChild(div);
                        }
                        else {
                            document.getElementById('MainArtist_' + xMain).placeholder = "Заполните основного исполнителя!";
                            document.getElementById('MainArtist_' + xMain).className = "input_text W450 botmarg7 redBoarder";
                            document.getElementById('MainArtist_' + xMain).focus();
                        }
                    }

                    function delMain() {
                        if (xMain > 0) {
                            var div = document.getElementById('main' + xMain);
                            div.remove();
                            --xMain;
                        }
                    }
                </script>
            </div>

            <!--Имя включенного Исполнителя (Feat.)-->
            <div class="elem_name">
                Имя включенного Исполнителя (Feat.)           
            </div>
            <div class="botmarg37">
                <div id="feat0" class="counter_poly">
                    <input type="text" name="PROPERTY[7][0][VALUE]" class="input_text W450" id="PROPERTY_7_0" value="">
                    <span class="tooltip tooltipstered">
                        <div class="counter_but">?</div>
                    </span>
                    <div class="counter_but" onclick="addFeat()">+</div>
                    <div class="counter_but" onclick="delFeat()">-</div>
                </div>

                <div id="r_feat">
                </div>

                <script type="text/javascript">
                    var xFeat = 0;

                    function addFeat() {
                        if (document.getElementById('PROPERTY_7_' + xFeat).value !== "") {
                            document.getElementById('PROPERTY_7_' + xFeat).placeholder = "Имя включенного Исполнителя (Feat.)";
                            document.getElementById('PROPERTY_7_' + xFeat).className = "input_text W450";
                            var profile = document.getElementById('r_feat');
                            var div = document.createElement('div');
                            div.id = 'feat' + ++xFeat;
                            div.innerHTML = '<input class="input_text W450" type="text" name="PROPERTY[7][' + xFeat + '][VALUE]" id="PROPERTY_7_' + xFeat + '">';
                            profile.appendChild(div);
                        }
                        else {
                            document.getElementById('PROPERTY_7_' + xFeat).placeholder = "Заполните включенного исполнителя!";
                            document.getElementById('PROPERTY_7_' + xFeat).className = "input_text W450 botmarg7 redBoarder";
                            document.getElementById('PROPERTY_7_' + xFeat).focus();
                        }
                    }

                    function delFeat() {
                        if (xFeat > 0) {
                            var div = document.getElementById('feat' + xFeat);
                            div.remove();
                            --xFeat;
                        }
                    }
                </script>
            </div>

            <!--Имя ремиксера, битмейкера-->
            <div class="elem_name">
                Имя ремиксера, битмейкера           
            </div>
            <div class="botmarg37">
                <div id="remix0" class="counter_poly">
                    <input type="text" name="PROPERTY[29][0][VALUE]" class="input_text W450" id="PROPERTY_29_0" value="">
                    <span class="tooltip tooltipstered">
                        <div class="counter_but">?</div>
                    </span>
                    <div class="counter_but" onclick="addRemix()">+</div>
                    <div class="counter_but" onclick="delRemix()">-</div>
                </div>

                <div id="r_remix">
                </div>

                <script type="text/javascript">
                    var xRemix = 0;

                    function addRemix() {
                        if (document.getElementById('PROPERTY_29_' + xRemix).value !== "") {
                            document.getElementById('PROPERTY_29_' + xRemix).placeholder = "Имя ремиксера, битмейкера";
                            document.getElementById('PROPERTY_29_' + xRemix).className = "input_text W450";
                            var profile = document.getElementById('r_remix');
                            var div = document.createElement('div');
                            div.id = 'remix' + ++xRemix;
                            div.innerHTML = '<input class="input_text W450" type="text" name="PROPERTY[29][' + xRemix + '][VALUE]" id="PROPERTY_29_' + xRemix + '">';
                            profile.appendChild(div);
                        }
                        else {
                            document.getElementById('PROPERTY_29_' + xRemix).placeholder = "Заполните ремиксера, битмейкера!";
                            document.getElementById('PROPERTY_29_' + xRemix).className = "input_text W450 botmarg7 redBoarder";
                            document.getElementById('PROPERTY_29_' + xRemix).focus();
                        }
                    }

                    function delRemix() {
                        if (xRemix > 0) {
                            var div = document.getElementById('remix' + xRemix);
                            div.remove();
                            --xRemix;
                        }
                    }
                </script>
            </div>

            <!--Жанр-->
            <div class="elem_name">
                Жанр           
            </div>
            <div class="botmarg37">
                <select name="PROPERTY[8][0][VALUE]" id="genre">
                    <option value="">(не выбрано)</option>
                    <option value="43">Alternative </option>
                    <option value="160">Anime </option>
                    <option value="396">Arabic </option>
                    <option value="56">Blues </option>
                    <option value="407">Brazilian </option>
                    <option value="162">Children's Music </option>
                    <option value="473">Chinese </option>
                    <option value="174">Christian &amp; Gospel </option>
                    <option value="40">Classical </option>
                    <option value="83">Comedy </option>
                    <option value="16">Country </option>
                    <option value="535">Cuban </option>
                    <option value="8">Dance </option>
                    <option value="544">Disney </option>
                    <option value="10">Electronic </option>
                    <option value="594">Enka </option>
                    <option value="595">Fitness &amp; Workout </option>
                    <option value="596">Folk </option>
                    <option value="304">French Pop </option>
                    <option value="598">German Folk </option>
                    <option value="599">German Pop </option>
                    <option value="600">Hip Hop/Rap </option>
                    <option value="164">Holiday </option>
                    <option value="581">Indian </option>
                    <option value="610">Inspirational </option>
                    <option value="11">Instrumental </option>
                    <option value="22">Jazz </option>
                    <option value="613">J-Pop </option>
                    <option value="165">Karaoke </option>
                    <option value="629">Kayokyoku </option>
                    <option value="630">Korean </option>
                    <option value="77">Latin </option>
                    <option value="641">Marching Bands </option>
                    <option value="52">New Age </option>
                    <option value="4">Pop </option>
                    <option value="167">R&amp;B/Soul </option>
                    <option value="39">Reggae </option>
                    <option value="6" selected="selected">Rock </option>
                    <option value="700">Russian </option>
                    <option value="168">Singer/Songwriter </option>
                    <option value="69">Soundtrack </option>
                    <option value="169">Spoken Word </option>
                    <option value="692">Tarab </option>
                    <option value="41">Vocal </option>
                    <option value="170">World </option>
                </select>
            </div>

            <!--Стиль-->
            <div class="elem_name">
                Стиль           
            </div>
            <div class="botmarg37">
                <div id="refreshStyle">
                    <select name="PROPERTY[9][0][VALUE]">
                        <option value="">(не выбрано)</option>










































































































































































































































































































































































































































































































                        <option value="35">Adult Alternative</option>


                        <option value="66">American Trad Rock</option>


                        <option value="560">Arena Rock</option>


                        <option value="561">Blues-Rock</option>


                        <option value="562">British Invasion</option>


                        <option value="563">Chinese Rock</option>


                        <option value="147">Death Metal/Black Metal</option>


                        <option value="58">Glam Rock</option>


                        <option value="51">Hair Metal</option>


                        <option value="23" selected="selected">Hard Rock</option>


                        <option value="24">Heavy Metal</option>


                        <option value="564">Jam Bands</option>


                        <option value="565">Korean Rock</option>


                        <option value="70">Prog-Rock/Art Rock</option>


                        <option value="318">Psychedelic</option>


                        <option value="566">Rockabilly</option>


                        <option value="45">Rock &amp; Roll</option>


                        <option value="567">Roots Rock</option>


                        <option value="698">Russian Rock</option>


                        <option value="668">Singer/Songwriter</option>


                        <option value="569">Southern Rock</option>


                        <option value="570">Surf</option>


                        <option value="571">Tex-Mex</option>






























































































































                    </select>
                </div>
                <script>
                    $("#genre").change(function () {
                        $(document).ready(function () {
                            $.ajax({
                                type: "POST",
                                url: "/page/app/audio-release/refresh-page/style-list.aspx",
                                data: { "GenreID": document.getElementById("genre").value },
                                dataType: 'html',
                                cache: false,
                            })
                                .done(function (result) {
                                    console.log('ok');
                                    document.getElementById("refreshStyle").innerHTML = result;
                                    console.log(result);
                                })
                                .fail(function (error) {

                                });
                        });
                    });
                </script>
            </div>

            <!--Вид-->
            <div class="elem_name">
                Вид           
            </div>
            <div class="botmarg37 flexim">
                <div>
                    <div class="checkbox_area">
                        <input type="radio" name="PROPERTY[11][0]" id="view_0" class="checkbox_flag W25 Y25" value="view_release" checked="">
                        <label for="view_0" class="checkbox_name W400 Y45">
                            <p>Аудио релиз</p>
                        </label>
                        <br>
                    </div>
                    <div class="checkbox_area">
                        <input type="radio" name="PROPERTY[11][0]" id="view_1" class="checkbox_flag W25 Y25" value="view_collection">
                        <label for="view_1" class="checkbox_name W400 Y45">
                            <p>Сборник</p>
                        </label>
                        <br>
                    </div>
                </div>
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>


            <!--Формат аудио релиза-->
            <div class="elem_name">
                Формат аудио релиза           
            </div>
            <div class="botmarg37 flexim">
                <select name="PROPERTY[13][0][VALUE]">
                    <option value="">(не выбрано)</option>
                    <option value="format_single">Single </option>
                    <option value="format_ep">EP </option>
                    <option value="format_album" selected="selected">Album </option>
                </select>
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>

            <!--℗ Рекорд-лейбл (Смежные права)-->
            <div class="elem_name">
                ℗ Рекорд-лейбл (Смежные права)           
            </div>
            <div class="botmarg37">
                <input type="text" name="PROPERTY[15][0][VALUE]" class="input_text W450" id="PROPERTY_15_0" value="Moscow City Records">
            </div>
            <script>
                $("#PROPERTY_15_0").change(function () {
                    if (document.getElementById("PROPERTY_15_0").value != "" && document.getElementById("PROPERTY_16_0").value == "") {
                        document.getElementById("PROPERTY_16_0").value = document.getElementById("PROPERTY_15_0").value;
                    };

                });
            </script>

            <!--© Музыкальный издатель (Авторские права)-->
            <div class="elem_name">
                © Музыкальный издатель (Авторские права)           
            </div>
            <div class="botmarg37">
                <input type="text" name="PROPERTY[16][0][VALUE]" class="input_text W450" id="PROPERTY_16_0" value="Moscow City Records">
            </div>

            <!--Витрина-->
            <div class="elem_name">
                Витрина           
            </div>

            <div class="checkbox botmarg7 flexim">
                <input type="checkbox" name="CheckAllShowcase" id="CheckAllShowcase" class="checkbox_flag W25 Y25" style="display: none;">
                <label for="CheckAllShowcase" class="checkbox_name W400 Y45">
                    <p>Выбрать все</p>
                </label>
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>
            <div class="checkbox_list botmarg37" id="AllShowcase">
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][0][VALUE]" id="showcase_0" class="checkbox_flag W25 Y25 checkShowcase" value="1" checked="">
                    <label for="showcase_0" class="checkbox_name W400 Y45">
                        <p>Google</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][1][VALUE]" id="showcase_1" class="checkbox_flag W25 Y25 checkShowcase" value="6" checked="">
                    <label for="showcase_1" class="checkbox_name W400 Y45">
                        <p>Spotify</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][2][VALUE]" id="showcase_2" class="checkbox_flag W25 Y25 checkShowcase" value="11" checked="">
                    <label for="showcase_2" class="checkbox_name W400 Y45">
                        <p>Deezer</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][3][VALUE]" id="showcase_3" class="checkbox_flag W25 Y25 checkShowcase" value="12" checked="">
                    <label for="showcase_3" class="checkbox_name W400 Y45">
                        <p>7digital</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][4][VALUE]" id="showcase_4" class="checkbox_flag W25 Y25 checkShowcase" value="19" checked="">
                    <label for="showcase_4" class="checkbox_name W400 Y45">
                        <p>Shazam</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][5][VALUE]" id="showcase_5" class="checkbox_flag W25 Y25 checkShowcase" value="20" checked="">
                    <label for="showcase_5" class="checkbox_name W400 Y45">
                        <p>iTunes</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][6][VALUE]" id="showcase_6" class="checkbox_flag W25 Y25 checkShowcase" value="22" checked="">
                    <label for="showcase_6" class="checkbox_name W400 Y45">
                        <p>Yandex Music</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][7][VALUE]" id="showcase_7" class="checkbox_flag W25 Y25 checkShowcase" value="27" checked="">
                    <label for="showcase_7" class="checkbox_name W400 Y45">
                        <p>Zvooq</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][8][VALUE]" id="showcase_8" class="checkbox_flag W25 Y25 checkShowcase" value="37" checked="">
                    <label for="showcase_8" class="checkbox_name W400 Y45">
                        <p>Amazon</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][9][VALUE]" id="showcase_9" class="checkbox_flag W25 Y25 checkShowcase" value="38" checked="">
                    <label for="showcase_9" class="checkbox_name W400 Y45">
                        <p>Juke</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][10][VALUE]" id="showcase_10" class="checkbox_flag W25 Y25 checkShowcase" value="39" checked="">
                    <label for="showcase_10" class="checkbox_name W400 Y45">
                        <p>TIDAL</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][11][VALUE]" id="showcase_11" class="checkbox_flag W25 Y25 checkShowcase" value="71" checked="">
                    <label for="showcase_11" class="checkbox_name W400 Y45">
                        <p>SoundExchange</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][12][VALUE]" id="showcase_12" class="checkbox_flag W25 Y25 checkShowcase" value="72" checked="">
                    <label for="showcase_12" class="checkbox_name W400 Y45">
                        <p>BK</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][13][VALUE]" id="showcase_13" class="checkbox_flag W25 Y25 checkShowcase" value="90" checked="">
                    <label for="showcase_13" class="checkbox_name W400 Y45">
                        <p>YoutubeClaime</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][14][VALUE]" id="showcase_14" class="checkbox_flag W25 Y25 checkShowcase" value="99" checked="">
                    <label for="showcase_14" class="checkbox_name W400 Y45">
                        <p>Zaycev_Net</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][15][VALUE]" id="showcase_15" class="checkbox_flag W25 Y25 checkShowcase" value="100" checked="">
                    <label for="showcase_15" class="checkbox_name W400 Y45">
                        <p>Boomplay</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][16][VALUE]" id="showcase_16" class="checkbox_flag W25 Y25 checkShowcase" value="103" checked="">
                    <label for="showcase_16" class="checkbox_name W400 Y45">
                        <p>Smule</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][17][VALUE]" id="showcase_17" class="checkbox_flag W25 Y25 checkShowcase" value="106" checked="">
                    <label for="showcase_17" class="checkbox_name W400 Y45">
                        <p>iMusica</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][18][VALUE]" id="showcase_18" class="checkbox_flag W25 Y25 checkShowcase" value="111" checked="">
                    <label for="showcase_18" class="checkbox_name W400 Y45">
                        <p>I-ONE</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][19][VALUE]" id="showcase_19" class="checkbox_flag W25 Y25 checkShowcase" value="120" checked="">
                    <label for="showcase_19" class="checkbox_name W400 Y45">
                        <p>LINE</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][20][VALUE]" id="showcase_20" class="checkbox_flag W25 Y25 checkShowcase" value="121" checked="">
                    <label for="showcase_20" class="checkbox_name W400 Y45">
                        <p>BIBLIO</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][21][VALUE]" id="showcase_21" class="checkbox_flag W25 Y25 checkShowcase" value="122" checked="">
                    <label for="showcase_21" class="checkbox_name W400 Y45">
                        <p>KDigitalMedia</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][22][VALUE]" id="showcase_22" class="checkbox_flag W25 Y25 checkShowcase" value="123" checked="">
                    <label for="showcase_22" class="checkbox_name W400 Y45">
                        <p>Lyrics Find</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][23][VALUE]" id="showcase_23" class="checkbox_flag W25 Y25 checkShowcase" value="133" checked="">
                    <label for="showcase_23" class="checkbox_name W400 Y45">
                        <p>SoundCloud</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][24][VALUE]" id="showcase_24" class="checkbox_flag W25 Y25 checkShowcase" value="135" checked="">
                    <label for="showcase_24" class="checkbox_name W400 Y45">
                        <p>PrimePhonic</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][25][VALUE]" id="showcase_25" class="checkbox_flag W25 Y25 checkShowcase" value="136" checked="">
                    <label for="showcase_25" class="checkbox_name W400 Y45">
                        <p>AnghamiVideo</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][26][VALUE]" id="showcase_26" class="checkbox_flag W25 Y25 checkShowcase" value="137" checked="">
                    <label for="showcase_26" class="checkbox_name W400 Y45">
                        <p>HIGHRESAUDIO</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][27][VALUE]" id="showcase_27" class="checkbox_flag W25 Y25 checkShowcase" value="138" checked="">
                    <label for="showcase_27" class="checkbox_name W400 Y45">
                        <p>MusixMatch</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][28][VALUE]" id="showcase_28" class="checkbox_flag W25 Y25 checkShowcase" value="139" checked="">
                    <label for="showcase_28" class="checkbox_name W400 Y45">
                        <p>Idagio</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][29][VALUE]" id="showcase_29" class="checkbox_flag W25 Y25 checkShowcase" value="140" checked="">
                    <label for="showcase_29" class="checkbox_name W400 Y45">
                        <p>MonkingMe</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][30][VALUE]" id="showcase_30" class="checkbox_flag W25 Y25 checkShowcase" value="144" checked="">
                    <label for="showcase_30" class="checkbox_name W400 Y45">
                        <p>BOOKMATE</p>
                    </label>
                    <br>
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[30][31][VALUE]" id="showcase_31" class="checkbox_flag W25 Y25 checkShowcase" value="147" checked="">
                    <label for="showcase_31" class="checkbox_name W400 Y45">
                        <p>Facebook</p>
                    </label>
                    <br>
                </div>
                <script>
                    $(document).ready(function () {
                        $("#CheckAllShowcase").click(function () {
                            if (!$("#CheckAllShowcase").is(":checked"))
                                $(".checkShowcase").removeAttr("checked");
                            else
                                $(".checkShowcase").attr("checked", "checked");
                        });
                    });
                </script>
            </div>


            <!--Дата первой публикации-->
            <div class="elem_name">
                Дата первой публикации           
            </div>
            <div class="botmarg37 flexim">
                <input type="text" name="PROPERTY[10][0][VALUE]" class="input_text W400 mask-date" value="13.08.2020">
                <img src="/img/ico/calendar.gif" alt="Выбрать дату в календаре" class="calendar-icon" onclick="BX.calendar({node:this, field:'PROPERTY[10][0][VALUE]', form: 'iblock_add', bTime: false, currentTime: '1590840617', bHideTime: true});" onmouseover="BX.addClass(this, 'calendar-icon-hover');" onmouseout="BX.removeClass(this, 'calendar-icon-hover');" border="0">
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>

            <!--Год копирайта-->
            <div class="elem_name">
                Год копирайта           
            </div>
            <div class="botmarg37">
                <select name="PROPERTY[14][0][VALUE]" class="input_text W450" value="2020">
                    <option value="">Выберите год</option>
                    <option value="2020" selected="">2020</option>
                    <option value="2019">2019</option>
                    <option value="2018">2018</option>
                    <option value="2017">2017</option>
                    <option value="2016">2016</option>
                    <option value="2015">2015</option>
                    <option value="2014">2014</option>
                    <option value="2013">2013</option>
                    <option value="2012">2012</option>
                    <option value="2011">2011</option>
                    <option value="2010">2010</option>
                    <option value="2009">2009</option>
                    <option value="2008">2008</option>
                    <option value="2007">2007</option>
                    <option value="2006">2006</option>
                    <option value="2005">2005</option>
                    <option value="2004">2004</option>
                    <option value="2003">2003</option>
                    <option value="2002">2002</option>
                    <option value="2001">2001</option>
                    <option value="2000">2000</option>
                    <option value="1999">1999</option>
                    <option value="1998">1998</option>
                    <option value="1997">1997</option>
                    <option value="1996">1996</option>
                    <option value="1995">1995</option>
                    <option value="1994">1994</option>
                    <option value="1993">1993</option>
                    <option value="1992">1992</option>
                    <option value="1991">1991</option>
                    <option value="1990">1990</option>
                    <option value="1989">1989</option>
                    <option value="1988">1988</option>
                    <option value="1987">1987</option>
                    <option value="1986">1986</option>
                    <option value="1985">1985</option>
                    <option value="1984">1984</option>
                    <option value="1983">1983</option>
                    <option value="1982">1982</option>
                    <option value="1981">1981</option>
                    <option value="1980">1980</option>
                    <option value="1979">1979</option>
                    <option value="1978">1978</option>
                    <option value="1977">1977</option>
                    <option value="1976">1976</option>
                    <option value="1975">1975</option>
                    <option value="1974">1974</option>
                    <option value="1973">1973</option>
                    <option value="1972">1972</option>
                    <option value="1971">1971</option>
                    <option value="1970">1970</option>
                    <option value="1969">1969</option>
                    <option value="1968">1968</option>
                    <option value="1967">1967</option>
                    <option value="1966">1966</option>
                    <option value="1965">1965</option>
                    <option value="1964">1964</option>
                    <option value="1963">1963</option>
                    <option value="1962">1962</option>
                    <option value="1961">1961</option>
                    <option value="1960">1960</option>
                    <option value="1959">1959</option>
                    <option value="1958">1958</option>
                    <option value="1957">1957</option>
                    <option value="1956">1956</option>
                    <option value="1955">1955</option>
                    <option value="1954">1954</option>
                    <option value="1953">1953</option>
                    <option value="1952">1952</option>
                    <option value="1951">1951</option>
                    <option value="1950">1950</option>
                    <option value="1949">1949</option>
                    <option value="1948">1948</option>
                    <option value="1947">1947</option>
                    <option value="1946">1946</option>
                    <option value="1945">1945</option>
                    <option value="1944">1944</option>
                    <option value="1943">1943</option>
                    <option value="1942">1942</option>
                    <option value="1941">1941</option>
                    <option value="1940">1940</option>
                    <option value="1939">1939</option>
                    <option value="1938">1938</option>
                    <option value="1937">1937</option>
                    <option value="1936">1936</option>
                    <option value="1935">1935</option>
                    <option value="1934">1934</option>
                    <option value="1933">1933</option>
                    <option value="1932">1932</option>
                    <option value="1931">1931</option>
                    <option value="1930">1930</option>
                    <option value="1929">1929</option>
                    <option value="1928">1928</option>
                    <option value="1927">1927</option>
                    <option value="1926">1926</option>
                    <option value="1925">1925</option>
                    <option value="1924">1924</option>
                    <option value="1923">1923</option>
                    <option value="1922">1922</option>
                    <option value="1921">1921</option>
                    <option value="1920">1920</option>
                    <option value="1919">1919</option>
                    <option value="1918">1918</option>
                    <option value="1917">1917</option>
                    <option value="1916">1916</option>
                    <option value="1915">1915</option>
                    <option value="1914">1914</option>
                    <option value="1913">1913</option>
                    <option value="1912">1912</option>
                    <option value="1911">1911</option>
                    <option value="1910">1910</option>
                    <option value="1909">1909</option>
                    <option value="1908">1908</option>
                    <option value="1907">1907</option>
                    <option value="1906">1906</option>
                    <option value="1905">1905</option>
                    <option value="1904">1904</option>
                    <option value="1903">1903</option>
                    <option value="1902">1902</option>
                    <option value="1901">1901</option>
                    <option value="1900">1900</option>
                </select>
            </div>

            <!--Дата старта продаж-->
            <div class="elem_name">
                Дата старта продаж           
            </div>
            <div class="botmarg37 flexim">
                <input type="text" name="PROPERTY[17][0][VALUE]" class="input_text W400 mask-date" id="PROPERTY_17_0" value="15.09.2020">
                <img src="/img/ico/calendar.gif" alt="Выбрать дату в календаре" class="calendar-icon" onclick="BX.calendar({node:this, field:'PROPERTY[17][0][VALUE]', form: 'iblock_add', bTime: false, currentTime: '1590840617', bHideTime: true});" onmouseover="BX.addClass(this, 'calendar-icon-hover');" onmouseout="BX.removeClass(this, 'calendar-icon-hover');" border="0">
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>
            <script>
                $("#PROPERTY_17_0").change(function () {
                    if (document.getElementById("PROPERTY_17_0").value !== "") {
                        let textCreat = "27.08.2020";
                        let dateCreate = new Date(textCreat.replace(/(\d+).(\d+).(\d+)/, '$2/$1/$3'));
                        let dateStart = new Date(document.getElementById("PROPERTY_17_0").value.replace(/(\d+).(\d+).(\d+)/, '$2/$1/$3'));

                        if (dateStart < dateCreate) {
                            document.getElementById("PROPERTY_17_0").value = "";
                            document.getElementById("PROPERTY_17_0").placeholder = "Не может быть меньши даты создания!";
                            document.getElementById("PROPERTY_17_0").className = "input_text W400 redBoarder";
                        }
                        else {
                            document.getElementById("PROPERTY_51_0").value = document.getElementById("PROPERTY_17_0").value;
                            document.getElementById("PROPERTY_53_0").value = document.getElementById("PROPERTY_17_0").value;
                            document.getElementById("PROPERTY_18_0").value = document.getElementById("PROPERTY_17_0").value;
                            document.getElementById("PROPERTY_39_0").value = document.getElementById("PROPERTY_17_0").value;
                            document.getElementById("PROPERTY_41_0").value = document.getElementById("PROPERTY_17_0").value;
                        }
                    };

                });
            </script>

            <!--Дата предварительного заказа-->
            <div class="elem_name">
                Дата предварительного заказа           
            </div>
            <div class="botmarg37 flexim">
                <input type="text" name="PROPERTY[18][0][VALUE]" class="input_text W400 mask-date" id="PROPERTY_18_0" value="15.09.2020">
                <img src="/img/ico/calendar.gif" alt="Выбрать дату в календаре" class="calendar-icon" onclick="BX.calendar({node:this, field:'PROPERTY[18][0][VALUE]', form: 'iblock_add', bTime: false, currentTime: '1590840617', bHideTime: true});" onmouseover="BX.addClass(this, 'calendar-icon-hover');" onmouseout="BX.removeClass(this, 'calendar-icon-hover');" border="0">
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>
            <script>
                $("#PROPERTY_18_0").change(function () {
                    if (document.getElementById("PROPERTY_18_0").value !== "") {
                        let textCreat = "27.08.2020";
                        let dateCreate = new Date(textCreat.replace(/(\d+).(\d+).(\d+)/, '$2/$1/$3'));
                        let dateStart = new Date(document.getElementById("PROPERTY_17_0").value.replace(/(\d+).(\d+).(\d+)/, '$2/$1/$3'));
                        let datePreorder = new Date(document.getElementById("PROPERTY_18_0").value.replace(/(\d+).(\d+).(\d+)/, '$2/$1/$3'));

                        if (datePreorder < dateCreate) {
                            document.getElementById("PROPERTY_18_0").value = "";
                            document.getElementById("PROPERTY_18_0").placeholder = "Не может быть меньши даты создания!";
                            document.getElementById("PROPERTY_18_0").className = "input_text W400 redBoarder";
                        }
                        if (datePreorder > dateStart) {
                            document.getElementById("PROPERTY_18_0").value = "";
                            document.getElementById("PROPERTY_18_0").placeholder = "Не может быть меньши даты создания!";
                            document.getElementById("PROPERTY_18_0").className = "input_text W400 redBoarder";
                        }
                    };

                });
            </script>

            <!--		Настройка параметров отгрузки на площадку Apple iTunes	-->
            <h2>Настройка параметров отгрузки на площадку Apple iTunes</h2>

            <!--Доступен в iTunes Store-->
            <div class="elem_name">
                Доступен в iTunes Store           
            </div>
            <div class="botmarg37">
                <select name="PROPERTY[38][0][VALUE]">
                    <option value="" id="genre">(не выбрано)</option>
                    <option value="monetize" selected="selected">монетизировать </option>
                </select>
            </div>

            <!--Дата эксклюзивного старта в ITUNES-->
            <div class="elem_name">
                Дата эксклюзивного старта в ITUNES           
            </div>
            <div class="botmarg37 flexim">
                <input type="text" name="PROPERTY[39][0][VALUE]" class="input_text W400 mask-date" id="PROPERTY_39_0" value="15.09.2020">
                <img src="/img/ico/calendar.gif" alt="Выбрать дату в календаре" class="calendar-icon" onclick="BX.calendar({node:this, field:'PROPERTY[39][0][VALUE]', form: 'iblock_add', bTime: false, currentTime: '1590840617', bHideTime: true});" onmouseover="BX.addClass(this, 'calendar-icon-hover');" onmouseout="BX.removeClass(this, 'calendar-icon-hover');" border="0">
            </div>
            <script>
                $("#PROPERTY_39_0").change(function () {
                    if (document.getElementById("PROPERTY_39_0").value !== "") {
                        let textCreat = "27.08.2020";
                        let dateCreate = new Date(textCreat.replace(/(\d+).(\d+).(\d+)/, '$2/$1/$3'));
                        let dateExItunes = new Date(document.getElementById("PROPERTY_39_0").value.replace(/(\d+).(\d+).(\d+)/, '$2/$1/$3'));

                        if (dateExItunes < dateCreate) {
                            document.getElementById("PROPERTY_39_0").value = "";
                            document.getElementById("PROPERTY_39_0").placeholder = "Не может быть меньши даты создания!";
                            document.getElementById("PROPERTY_39_0").className = "input_text W400 redBoarder";
                        }
                    };

                });
            </script>

            <!--Доступен в Apple Music-->
            <div class="elem_name">
                Доступен в Apple Music           
            </div>
            <div class="botmarg37">
                <select name="PROPERTY[40][0][VALUE]">
                    <option value="" id="genre">(не выбрано)</option>
                    <option value="monetize" selected="selected">монетизировать </option>
                </select>
            </div>

            <!--Дата эксклюзивного старта в  Apple Music-->
            <div class="elem_name">
                Дата эксклюзивного старта в Apple Music           
            </div>
            <div class="botmarg37 flexim">
                <input type="text" name="PROPERTY[41][0][VALUE]" class="input_text W400 mask-date" id="PROPERTY_41_0" value="15.09.2020">
                <img src="/img/ico/calendar.gif" alt="Выбрать дату в календаре" class="calendar-icon" onclick="BX.calendar({node:this, field:'PROPERTY[41][0][VALUE]', form: 'iblock_add', bTime: false, currentTime: '1590840617', bHideTime: true});" onmouseover="BX.addClass(this, 'calendar-icon-hover');" onmouseout="BX.removeClass(this, 'calendar-icon-hover');" border="0">
            </div>
            <script>
                $("#PROPERTY_41_0").change(function () {
                    if (document.getElementById("PROPERTY_41_0").value !== "") {
                        let textCreat = "27.08.2020";
                        let dateCreate = new Date(textCreat.replace(/(\d+).(\d+).(\d+)/, '$2/$1/$3'));
                        let dateExApple = new Date(document.getElementById("PROPERTY_41_0").value.replace(/(\d+).(\d+).(\d+)/, '$2/$1/$3'));

                        if (dateExApple < dateCreate) {
                            document.getElementById("PROPERTY_41_0").value = "";
                            document.getElementById("PROPERTY_41_0").placeholder = "Не может быть меньши даты создания!";
                            document.getElementById("PROPERTY_41_0").className = "input_text W400 redBoarder";
                        }
                    };

                });
            </script>

            <!--Ценовая категория альбома ITUNES-->
            <div class="elem_name">
                Ценовая категория альбома ITUNES           
            </div>
            <div class="botmarg37 flexim">
                <select name="PROPERTY[42][0][VALUE]">
                    <option value="" id="PriceCategory">(не выбрано)</option>
                    <option value="1">Digital 45 : 1.49€ </option>
                    <option value="2">Mini EP : 1.99€ </option>
                    <option value="3" selected="selected">EP : 2.99€ </option>
                </select>
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>

            <!--Ценовая категория трека ITUNES-->
            <div class="elem_name">
                Ценовая категория трека ITUNES           
            </div>
            <div class="botmarg37 flexim">
                <select name="PROPERTY[43][0][VALUE]">
                    <option value="" id="PriceCategory">(не выбрано)</option>
                    <option value="1">Back : 10руб / 0.69$ / 0.69€ </option>
                    <option value="2">Mid : 15руб / 0.99$ / 0.99€ </option>
                    <option value="3" selected="selected">Front : 19руб / 1.29$ / 1.29€ </option>
                </select>
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>

            <!--Минимальная цена-->
            <div class="elem_name">
                Минимальная цена           
            </div>
            <div class="botmarg37">
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[44][0][VALUE]" id="showcase44_0" class="checkbox_flag W25 Y25" value="yesno_yes">
                    <label for="showcase44_0" class="checkbox_name W400 Y45">
                        <p>Да</p>
                    </label>
                    <br>
                </div>
            </div>

            <!--Минимальная ценовая категория трека iTunes-->
            <div class="elem_name">
                Минимальная ценовая категория трека iTunes           
            </div>
            <div class="botmarg37">
                <select name="PROPERTY[45][0][VALUE]">
                    <option value="">(не выбрано)</option>
                    <option value="low" selected="selected">Low </option>
                    <option value="lowest">Lowest </option>
                </select>
            </div>

            <!--UPC код аудио релиза-->
            <div class="elem_name">
                UPC код аудио релиза           
            </div>
            <div class="botmarg37 flexim">
                <input type="text" name="PROPERTY[20][0][VALUE]" class="input_text W450" value="3616407404005">
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>

            <!--Каталожный номер аудио релиза пользовательский-->
            <div class="elem_name">
                Каталожный номер аудио релиза (пользовательский)           
            </div>
            <div class="botmarg37 flexim">
                <input type="text" name="PROPERTY[22][0][VALUE]" class="input_text W450" value="">
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>

            <!--Язык аудио релиза-->
            <div class="elem_name">
                Язык аудио релиза           
            </div>
            <div class="botmarg37 flexim">
                <select name="PROPERTY[19][0][VALUE]">
                    <option value="">(не выбрано)</option>
                    <option value="ru" selected="selected">Russian </option>
                    <option value="en">English </option>
                    <option value="az">Azerbaijani </option>
                    <option value="sq">Albanian </option>
                    <option value="am">Amharic </option>
                    <option value="ar">Arab </option>
                    <option value="hy">Armenian </option>
                    <option value="af">Afrikaans </option>
                    <option value="eu">Basque </option>
                    <option value="be">Belarusian </option>
                    <option value="bn">Bengal </option>
                    <option value="my">Burmese </option>
                    <option value="bg">Bulgarian </option>
                    <option value="bs">Bosnian </option>
                    <option value="cy">Welsh </option>
                    <option value="hu">Hungarian </option>
                    <option value="vi">Vietnamese </option>
                    <option value="ht">Haitian Creole </option>
                    <option value="gl">Galician </option>
                    <option value="el">Greek </option>
                    <option value="kl">Greenlandic </option>
                    <option value="ka">Georgian </option>
                    <option value="gu">Gujarati </option>
                    <option value="da">Danish </option>
                    <option value="zu">Zulu </option>
                    <option value="he">Hebrew </option>
                    <option value="lg">Igbo </option>
                    <option value="yi">Yiddish </option>
                    <option value="id">Indonesian </option>
                    <option value="ga">Irish </option>
                    <option value="yo">Yoruba </option>
                    <option value="is">Icelandic </option>
                    <option value="es">Spanish </option>
                    <option value="it">Italian </option>
                    <option value="kk">Kazakh </option>
                    <option value="kn">Kannada </option>
                    <option value="ca">Catalan </option>
                    <option value="ky">Kyrgyz </option>
                    <option value="zh">Chinese </option>
                    <option value="qu">Quechua </option>
                    <option value="ko">Korean </option>
                    <option value="co">Corsican </option>
                    <option value="ku">Kurdish </option>
                    <option value="km">Khmer </option>
                    <option value="lo">Lao </option>
                    <option value="la">Latin </option>
                    <option value="lv">Latvian </option>
                    <option value="ln">Lingala </option>
                    <option value="lt">Lithuanian </option>
                    <option value="lb">Luxembourgish </option>
                    <option value="mk">Macedonian </option>
                    <option value="mg">Malagasy </option>
                    <option value="ms">Malay </option>
                    <option value="ml">Malayalam </option>
                    <option value="mt">Maltese </option>
                    <option value="mi">Maori </option>
                    <option value="mr">Marathi </option>
                    <option value="mn">Mongolian </option>
                    <option value="de">German </option>
                    <option value="ne">Nepali </option>
                    <option value="no">Norwegian </option>
                    <option value="fa">Persian </option>
                    <option value="pl">Polish </option>
                    <option value="pt">Portuguese </option>
                    <option value="ps">Pashto </option>
                    <option value="ro">Romanian </option>
                    <option value="se">Northern Sami </option>
                    <option value="sm">Samoan </option>
                    <option value="sr">Serbian </option>
                    <option value="sd">Sindhi </option>
                    <option value="si">Sinhalese </option>
                    <option value="sk">Slovak </option>
                    <option value="sl">Slovenian </option>
                    <option value="so">Somali </option>
                    <option value="sw">Swahili </option>
                    <option value="su">Sundanese </option>
                    <option value="tl">Tagalog </option>
                    <option value="tg">Tajik </option>
                    <option value="th">Thai </option>
                    <option value="ta">Tamil </option>
                    <option value="te">Telugu </option>
                    <option value="tr">Turkish </option>
                    <option value="uz">Uzbek </option>
                    <option value="uk">Ukrainian </option>
                    <option value="ur">Urdu </option>
                    <option value="ug">Uyghur </option>
                    <option value="fo">Faroese </option>
                    <option value="fj">Fijian </option>
                    <option value="fi">Finnish </option>
                    <option value="fr">French </option>
                    <option value="ha">Hausa </option>
                    <option value="hi">Hindi </option>
                    <option value="hr">Croatian </option>
                    <option value="cs">Czech </option>
                    <option value="ny">Chichewa </option>
                    <option value="sv">Swedish </option>
                    <option value="sn">Shona </option>
                    <option value="et">Estonian </option>
                    <option value="ja">Japanese </option>
                </select>
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>

            <!--Язык метаданных релиза-->
            <div class="elem_name">
                Язык метаданных релиза           
            </div>
            <div class="botmarg37 flexim">
                <select name="PROPERTY[164][0][VALUE]">
                    <option value="">(не выбрано)</option>
                    <option value="ru" selected="selected">Russian </option>
                    <option value="en">English </option>
                    <option value="az">Azerbaijani </option>
                    <option value="sq">Albanian </option>
                    <option value="am">Amharic </option>
                    <option value="ar">Arab </option>
                    <option value="hy">Armenian </option>
                    <option value="af">Afrikaans </option>
                    <option value="eu">Basque </option>
                    <option value="be">Belarusian </option>
                    <option value="bn">Bengal </option>
                    <option value="my">Burmese </option>
                    <option value="bg">Bulgarian </option>
                    <option value="bs">Bosnian </option>
                    <option value="cy">Welsh </option>
                    <option value="hu">Hungarian </option>
                    <option value="vi">Vietnamese </option>
                    <option value="ht">Haitian Creole </option>
                    <option value="gl">Galician </option>
                    <option value="el">Greek </option>
                    <option value="kl">Greenlandic </option>
                    <option value="ka">Georgian </option>
                    <option value="gu">Gujarati </option>
                    <option value="da">Danish </option>
                    <option value="zu">Zulu </option>
                    <option value="he">Hebrew </option>
                    <option value="lg">Igbo </option>
                    <option value="yi">Yiddish </option>
                    <option value="id">Indonesian </option>
                    <option value="ga">Irish </option>
                    <option value="yo">Yoruba </option>
                    <option value="is">Icelandic </option>
                    <option value="es">Spanish </option>
                    <option value="it">Italian </option>
                    <option value="kk">Kazakh </option>
                    <option value="kn">Kannada </option>
                    <option value="ca">Catalan </option>
                    <option value="ky">Kyrgyz </option>
                    <option value="zh">Chinese </option>
                    <option value="qu">Quechua </option>
                    <option value="ko">Korean </option>
                    <option value="co">Corsican </option>
                    <option value="ku">Kurdish </option>
                    <option value="km">Khmer </option>
                    <option value="lo">Lao </option>
                    <option value="la">Latin </option>
                    <option value="lv">Latvian </option>
                    <option value="ln">Lingala </option>
                    <option value="lt">Lithuanian </option>
                    <option value="lb">Luxembourgish </option>
                    <option value="mk">Macedonian </option>
                    <option value="mg">Malagasy </option>
                    <option value="ms">Malay </option>
                    <option value="ml">Malayalam </option>
                    <option value="mt">Maltese </option>
                    <option value="mi">Maori </option>
                    <option value="mr">Marathi </option>
                    <option value="mn">Mongolian </option>
                    <option value="de">German </option>
                    <option value="ne">Nepali </option>
                    <option value="no">Norwegian </option>
                    <option value="fa">Persian </option>
                    <option value="pl">Polish </option>
                    <option value="pt">Portuguese </option>
                    <option value="ps">Pashto </option>
                    <option value="ro">Romanian </option>
                    <option value="se">Northern Sami </option>
                    <option value="sm">Samoan </option>
                    <option value="sr">Serbian </option>
                    <option value="sd">Sindhi </option>
                    <option value="si">Sinhalese </option>
                    <option value="sk">Slovak </option>
                    <option value="sl">Slovenian </option>
                    <option value="so">Somali </option>
                    <option value="sw">Swahili </option>
                    <option value="su">Sundanese </option>
                    <option value="tl">Tagalog </option>
                    <option value="tg">Tajik </option>
                    <option value="th">Thai </option>
                    <option value="ta">Tamil </option>
                    <option value="te">Telugu </option>
                    <option value="tr">Turkish </option>
                    <option value="uz">Uzbek </option>
                    <option value="uk">Ukrainian </option>
                    <option value="ur">Urdu </option>
                    <option value="ug">Uyghur </option>
                    <option value="fo">Faroese </option>
                    <option value="fj">Fijian </option>
                    <option value="fi">Finnish </option>
                    <option value="fr">French </option>
                    <option value="ha">Hausa </option>
                    <option value="hi">Hindi </option>
                    <option value="hr">Croatian </option>
                    <option value="cs">Czech </option>
                    <option value="ny">Chichewa </option>
                    <option value="sv">Swedish </option>
                    <option value="sn">Shona </option>
                    <option value="et">Estonian </option>
                    <option value="ja">Japanese </option>
                </select>
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>

            <!--Премьера в России?-->
            <div class="elem_name">
                Премьера в России?           
            </div>
            <div class="botmarg37">
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[24][0][VALUE]" id="showcase24_0" class="checkbox_flag W25 Y25" value="yesno_yes" checked="">
                    <label for="showcase24_0" class="checkbox_name W400 Y45">
                        <p>Да</p>
                    </label>
                    <br>
                </div>
            </div>

            <!--Цифровой буклет iTunes-->
            <div class="elem_name">
                Цифровой буклет iTunes           
            </div>
            <div>
                <input id="inputBooklet" type="hidden" name="PROPERTY[25][0][VALUE]" class="input_text W450" value="/user-uploads/preparation/release_audio/4/845/cover.jpg">
                <div class="flexim botmarg7">
                    <div class="BookletUpload topmarg7 fs-upload-element fs-upload fs-light">
                        <div class="fs-upload-target">Загрузить</div>
                        <input class="fs-upload-input" type="file">
                    </div>
                    <div class="counter_but" onclick="delBooklet()">X</div>
                    <script type="text/javascript">
                        function delBooklet() {
                            document.getElementById("booklet_show").innerHTML = '<img width="100%" height="45px" src="/img/ico/digital_buklet_empety.svg">';
                            document.getElementById("inputBooklet").value = null;
                            $.post('/app/refresh-page/delfile.aspx', { file: "/user-uploads/preparation/4/845/booklet.pdf" });
                        }
                    </script>
                    <div id="booklet_show" class="booklet_show topmarg7 W45 Y45">
                        <img width="100%" height="45px" src="/img/ico/digital_buklet.svg">
                    </div>
                </div>
                <div id="BookletResult" class="BookletResult"></div>
            </div>

            <!--Буклет содержит ненормативную лексику-->
            <div class="elem_name">
                Буклет содержит ненормативную лексику           
            </div>
            <div class="botmarg37">
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[26][0][VALUE]" id="showcase26_0" class="checkbox_flag W25 Y25" value="yesno_yes">
                    <label for="showcase26_0" class="checkbox_name W400 Y45">
                        <p>Да</p>
                    </label>
                    <br>
                </div>
            </div>

            <!--Описание-->
            <div class="elem_name botmarg7">
                Описание		
            </div>
            <div class="botmarg37">
                <div unselectable="on" style="width: 550px;">
                    <div class=" nicEdit-panelContain" unselectable="on" style="overflow: hidden; width: 100%; border: 1px solid rgb(204, 204, 204); background-color: rgb(239, 239, 239);">
                        <div class=" nicEdit-panel" unselectable="on" style="margin: 0px 2px 2px; zoom: 1; overflow: hidden;"></div>
                    </div>
                </div>
                <div style="width: 550px; border-width: 0px 1px 1px; border-top-style: initial; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; overflow: hidden auto; max-height: 400px;">
                    <div class=" nicEdit-main" contenteditable="true" style="width: 542px; margin: 4px; min-height: 47px; overflow: hidden;">
                        Описание<div>В две строки</div>
                    </div>
                </div>
                <textarea name="PROPERTY[165][0][VALUE]" id="PROPERTY_165_0" wrap="off" class="W550" style="display: none;">Описание&lt;div&gt;В две строки&lt;/div&gt;</textarea>
            </div>

            <!--Информация для модератора-->
            <div class="elem_name botmarg7">
                Информация для модератора		
            </div>
            <div class="botmarg37">
                <div unselectable="on" style="width: 550px;">
                    <div class=" nicEdit-panelContain" unselectable="on" style="overflow: hidden; width: 100%; border: 1px solid rgb(204, 204, 204); background-color: rgb(239, 239, 239);">
                        <div class=" nicEdit-panel" unselectable="on" style="margin: 0px 2px 2px; zoom: 1; overflow: hidden;"></div>
                    </div>
                </div>
                <div style="width: 550px; border-width: 0px 1px 1px; border-top-style: initial; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; overflow: hidden auto; max-height: 400px;">
                    <div class=" nicEdit-main" contenteditable="true" style="width: 542px; margin: 4px; min-height: 47px; overflow: hidden;">
                        Информация для модератора<div>В несколько строк</div>
                    </div>
                </div>
                <textarea name="PROPERTY[166][0][VALUE]" id="PROPERTY_166_0" wrap="off" class="W550" style="display: none;">Информация для модератора&lt;div&gt;В несколько строк&lt;/div&gt;</textarea>
            </div>

            <!--Mastered for iTunes (MFIT)-->
            <div class="elem_name">
                Mastered for iTunes (MFIT)           
            </div>
            <div class="botmarg37">
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[46][0][VALUE]" id="showcase46_0" class="checkbox_flag W25 Y25" value="yesno_yes">
                    <label for="showcase46_0" class="checkbox_name W400 Y45">
                        <p>Да</p>
                    </label>
                    <br>
                </div>
            </div>

            <!--Название студии-->
            <div class="elem_name">
                Название студии           
            </div>
            <div class="botmarg37">
                <input type="text" name="PROPERTY[47][0][VALUE]" class="input_text W450" value="">
            </div>

            <!--Страна-->
            <div class="elem_name">
                Страна           
            </div>
            <div class="botmarg37">
                <input type="text" name="PROPERTY[48][0][VALUE]" class="input_text W450" value="">
            </div>

            <!--E-mail студии-->
            <div class="elem_name">
                E-mail студии           
            </div>
            <div class="botmarg37">
                <input type="text" name="PROPERTY[49][0][VALUE]" class="input_text W450" value="">
            </div>

            <!--Город-->
            <div class="elem_name">
                Город           
            </div>
            <div class="botmarg37">
                <input type="text" name="PROPERTY[50][0][VALUE]" class="input_text W450" value="">
            </div>

            <!--		Настройка параметров отгрузки на площадку YouTube	-->
            <h2>Настройка параметров отгрузки на площадку YouTube</h2>

            <!--Дата старта продаж в YouTube Premium-->
            <div class="elem_name">
                Дата старта продаж в YouTube Premium           
            </div>
            <div class="botmarg37 flexim">
                <input type="text" name="PROPERTY[51][0][VALUE]" class="input_text W400 mask-date" id="PROPERTY_51_0" value="15.09.2020">
                <img src="/img/ico/calendar.gif" alt="Выбрать дату в календаре" class="calendar-icon" onclick="BX.calendar({node:this, field:'PROPERTY[51][0][VALUE]', form: 'iblock_add', bTime: false, currentTime: '1590840617', bHideTime: true});" onmouseover="BX.addClass(this, 'calendar-icon-hover');" onmouseout="BX.removeClass(this, 'calendar-icon-hover');" border="0">
            </div>

            <!--Копии на YouTube-->
            <div class="elem_name">
                Копии на YouTube           
            </div>
            <div class="botmarg37">
                <select name="PROPERTY[52][0][VALUE]">
                    <option value="" id="genre">(не выбрано)</option>
                    <option value="monetize" selected="selected">монетизировать </option>
                </select>
            </div>

            <!--		Настройка параметров отгрузки на площадку Вконтакте	-->
            <h2>Настройка параметров отгрузки на площадку Вконтакте</h2>

            <!--Дата старта продаж ВК-->
            <div class="elem_name">
                Дата старта продаж           
            </div>
            <div class="botmarg37 flexim">
                <input type="text" name="PROPERTY[53][0][VALUE]" class="input_text W400 mask-date" id="PROPERTY_53_0" value="15.09.2020">
                <img src="/img/ico/calendar.gif" alt="Выбрать дату в календаре" class="calendar-icon" onclick="BX.calendar({node:this, field:'PROPERTY[53][0][VALUE]', form: 'iblock_add', bTime: false, currentTime: '1590840617', bHideTime: true});" onmouseover="BX.addClass(this, 'calendar-icon-hover');" onmouseout="BX.removeClass(this, 'calendar-icon-hover');" border="0">
            </div>

            <!--Время-->
            <div class="elem_name">
                Время           
            </div>
            <div class="botmarg37">
                <input type="text" name="PROPERTY[54][0][VALUE]" class="input_text W450 mask-time" value="00:00">
            </div>

        </div>
    </div>
    <div class="release_button_block">
        <input type="submit" name="iblock_apply" class="apply W160" value="СОХРАНИТЬ">
    </div>
</asp:Content>
