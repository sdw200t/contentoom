<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/template/app/app.Master" CodeBehind="check.aspx.vb" Inherits="contentoom.audioReleaseCheck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Проверка и отправка аудио релиза
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
                <h1>ПРОВЕРКА И ОТПРАВКА</h1>
            </div>

            <!--топ меню-->
            <div class="release_menu_top" id="release_menu_top" style="height: 66px; padding: 0px; border: 0px;">
                <div style="background: none 0% 0% / auto repeat scroll padding-box border-box rgb(255, 255, 255); background-blend-mode: normal; border-block-end: 0px none rgb(84, 101, 126); border-block-start: 0px none rgb(84, 101, 126); border: 0px none rgb(84, 101, 126); border-radius: 0px; border-collapse: separate; border-inline-end: 0px none rgb(84, 101, 126); border-inline-start: 0px none rgb(84, 101, 126); box-shadow: none; outline: rgb(84, 101, 126) none 0px; outline-offset: 0px; overflow-anchor: auto; overflow-wrap: normal; overflow: visible; padding-block-end: 10px; padding-block-start: 0px; padding: 0px 0px 10px; padding-inline-end: 0px; padding-inline-start: 0px; box-sizing: border-box; width: 1000px; display: flex;" class="">
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
                            <div class="elem_menu_active">
                                Проверка и отправка					
                            </div>
                        </a>
                    </div>
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


            <div class="elem_name">
                Статус           
            </div>
            <input class="input_disabled W450 botmarg37" type="text" value="На исправлении" disabled="">

            <div class="flexim">
                <input type="hidden" name="PROPERTY[NAME][0]" class="input_text W450" value="Повороты судьбы ">
            </div>

            <div class="elem_name botmarg7">
                Замечания		
            </div>
            <div class="botmarg37">
                <div unselectable="on" style="width: 550px;">
                    <div class=" nicEdit-panelContain" unselectable="on" style="overflow: hidden; width: 100%; border: 1px solid rgb(204, 204, 204); background-color: rgb(239, 239, 239);">
                        <div class=" nicEdit-panel" unselectable="on" style="margin: 0px 2px 2px; zoom: 1; overflow: hidden;">
                            <div unselectable="on" style="float: left; margin-top: 2px;">
                                <div class=" nicEdit-buttonContain" unselectable="on" style="width: 20px; height: 20px; opacity: 0.6;">
                                    <div class=" nicEdit-button-undefined" unselectable="on" style="background-color: rgb(239, 239, 239); border: 1px solid rgb(239, 239, 239);">
                                        <div class=" nicEdit-button" unselectable="on" style="width: 18px; height: 18px; overflow: hidden; zoom: 1; cursor: pointer; background-image: url(&quot;/components/nicEdit/nicEditorIcons.gif&quot;); background-position: 0px 0px;"></div>
                                    </div>
                                </div>
                            </div>
                            <div unselectable="on" style="float: left; margin-top: 2px;">
                                <div class=" nicEdit-buttonContain" unselectable="on" style="width: 20px; height: 20px; opacity: 0.6;">
                                    <div class=" nicEdit-button-undefined" unselectable="on" style="background-color: rgb(239, 239, 239); border: 1px solid rgb(239, 239, 239);">
                                        <div class=" nicEdit-button" unselectable="on" style="width: 18px; height: 18px; overflow: hidden; zoom: 1; cursor: pointer; background-image: url(&quot;/components/nicEdit/nicEditorIcons.gif&quot;); background-position: -72px 0px;"></div>
                                    </div>
                                </div>
                            </div>
                            <div unselectable="on" style="float: left; margin-top: 2px;">
                                <div class=" nicEdit-buttonContain" unselectable="on" style="width: 20px; height: 20px; opacity: 0.6;">
                                    <div class=" nicEdit-button-undefined" unselectable="on" style="background-color: rgb(239, 239, 239); border: 1px solid rgb(239, 239, 239);">
                                        <div class=" nicEdit-button" unselectable="on" style="width: 18px; height: 18px; overflow: hidden; zoom: 1; cursor: pointer; background-image: url(&quot;/components/nicEdit/nicEditorIcons.gif&quot;); background-position: -288px 0px;"></div>
                                    </div>
                                </div>
                            </div>
                            <div unselectable="on" style="float: left; margin-top: 2px;">
                                <div class=" nicEdit-buttonContain" unselectable="on" style="width: 20px; height: 20px; opacity: 0.6;">
                                    <div class=" nicEdit-button-undefined" unselectable="on" style="background-color: rgb(239, 239, 239); border: 1px solid rgb(239, 239, 239);">
                                        <div class=" nicEdit-button" unselectable="on" style="width: 18px; height: 18px; overflow: hidden; zoom: 1; cursor: pointer; background-image: url(&quot;/components/nicEdit/nicEditorIcons.gif&quot;); background-position: -108px 0px;"></div>
                                    </div>
                                </div>
                            </div>
                            <div unselectable="on" style="float: left; margin-top: 2px;">
                                <div class=" nicEdit-buttonContain" unselectable="on" style="width: 20px; height: 20px; opacity: 0.6;">
                                    <div class=" nicEdit-button-undefined" unselectable="on" style="background-color: rgb(239, 239, 239); border: 1px solid rgb(239, 239, 239);">
                                        <div class=" nicEdit-button" unselectable="on" style="width: 18px; height: 18px; overflow: hidden; zoom: 1; cursor: pointer; background-image: url(&quot;/components/nicEdit/nicEditorIcons.gif&quot;); background-position: -18px 0px;"></div>
                                    </div>
                                </div>
                            </div>
                            <div unselectable="on" style="float: left; margin-top: 2px;">
                                <div class=" nicEdit-buttonContain" unselectable="on" style="width: 20px; height: 20px; opacity: 0.6;">
                                    <div class=" nicEdit-button-undefined" unselectable="on" style="background-color: rgb(239, 239, 239); border: 1px solid rgb(239, 239, 239);">
                                        <div class=" nicEdit-button" unselectable="on" style="width: 18px; height: 18px; overflow: hidden; zoom: 1; cursor: pointer; background-image: url(&quot;/components/nicEdit/nicEditorIcons.gif&quot;); background-position: -180px 0px;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="width: 550px; border-width: 0px 1px 1px; border-top-style: initial; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; overflow: hidden auto; max-height: 400px;">
                    <div class=" nicEdit-main" contenteditable="true" style="width: 542px; margin: 4px; min-height: 47px; overflow: hidden;">
                        <br>
                    </div>
                </div>
                <textarea name="PROPERTY[161][0][VALUE]" id="PROPERTY_161_0" wrap="off" class="W550" style="display: none;">&lt;br&gt;</textarea>
            </div>



            <div class="elem_name botmarg7">
                Отметьте поля которые можно редактировать если необходимо их исправить		
            </div>
            <div style="display: contents;">

                <!--Обложка-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_COVER" id="RL_COVER" class="checkbox_flag W25 Y25">
                    <label for="RL_COVER" class="checkbox_name W400 Y45">
                        <p>Обложка</p>
                    </label>
                </div>

                <!--Название аудио релиза-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="NAME" id="NAME" class="checkbox_flag W25 Y25">
                    <label for="NAME" class="checkbox_name W400 Y45">
                        <p>Название аудио релиза</p>
                    </label>
                </div>

                <!--Версия, подзаголовок-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_VERSION" id="RL_VERSION" class="checkbox_flag W25 Y25">
                    <label for="RL_VERSION" class="checkbox_name W400 Y45">
                        <p>Версия, подзаголовок</p>
                    </label>
                </div>

                <!--Имя основного исполнителя-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_MAIN_EXECUTOR" id="RL_MAIN_EXECUTOR" class="checkbox_flag W25 Y25">
                    <label for="RL_MAIN_EXECUTOR" class="checkbox_name W400 Y45">
                        <p>Имя основного исполнителя</p>
                    </label>
                </div>

                <!--Имя включенного Исполнителя (Feat.)-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_CONTRACTOR_EXECUTOR" id="RL_CONTRACTOR_EXECUTOR" class="checkbox_flag W25 Y25">
                    <label for="RL_CONTRACTOR_EXECUTOR" class="checkbox_name W400 Y45">
                        <p>Имя включенного Исполнителя (Feat.)</p>
                    </label>
                </div>

                <!--Имя ремиксера, битмейкера-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_REMIXER" id="RL_REMIXER" class="checkbox_flag W25 Y25">
                    <label for="RL_REMIXER" class="checkbox_name W400 Y45">
                        <p>Имя ремиксера, битмейкера</p>
                    </label>
                </div>
                <!--Genre-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_GENRE" id="RL_GENRE" class="checkbox_flag W25 Y25">
                    <label for="RL_GENRE" class="checkbox_name W400 Y45">
                        <p>Жанр</p>
                    </label>
                </div>
                <!--Style-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_STYLE" id="RL_STYLE" class="checkbox_flag W25 Y25">
                    <label for="RL_STYLE" class="checkbox_name W400 Y45">
                        <p>Стиль</p>
                    </label>
                </div>
                <!--View-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_VIEW" id="RL_VIEW" class="checkbox_flag W25 Y25">
                    <label for="RL_VIEW" class="checkbox_name W400 Y45">
                        <p>Вид</p>
                    </label>
                </div>
                <!--Audio release format-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_RELEASE_FORMAT" id="RL_RELEASE_FORMAT" class="checkbox_flag W25 Y25">
                    <label for="RL_RELEASE_FORMAT" class="checkbox_name W400 Y45">
                        <p>Формат аудио релиза</p>
                    </label>
                </div>
                <!--℗ Record label (Related rights)-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_RECORD_LABEL" id="RL_RECORD_LABEL" class="checkbox_flag W25 Y25">
                    <label for="RL_RECORD_LABEL" class="checkbox_name W400 Y45">
                        <p>℗ Рекорд-лейбл (Смежные права)</p>
                    </label>
                </div>
                <!--© Music Publisher (Copyright)-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_MUSIC_PUBLISHER" id="RL_MUSIC_PUBLISHER" class="checkbox_flag W25 Y25">
                    <label for="RL_MUSIC_PUBLISHER" class="checkbox_name W400 Y45">
                        <p>© Музыкальный издатель (Авторские права)</p>
                    </label>
                </div>
                <!--Showcase-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_SHOWCASE" id="RL_SHOWCASE" class="checkbox_flag W25 Y25">
                    <label for="RL_SHOWCASE" class="checkbox_name W400 Y45">
                        <p>Витрина</p>
                    </label>
                </div>
                <!--Date of first publication-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_DATE_FIRST_PUBLICATION" id="RL_DATE_FIRST_PUBLICATION" class="checkbox_flag W25 Y25">
                    <label for="RL_DATE_FIRST_PUBLICATION" class="checkbox_name W400 Y45">
                        <p>Дата первой публикации</p>
                    </label>
                </div>
                <!--Copyright year-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_YEAR" id="RL_YEAR" class="checkbox_flag W25 Y25">
                    <label for="RL_YEAR" class="checkbox_name W400 Y45">
                        <p>Год копирайта</p>
                    </label>
                </div>
                <!--Sales start date-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_CURRENT_PUBLICATION" id="RL_CURRENT_PUBLICATION" class="checkbox_flag W25 Y25" checked="">
                    <label for="RL_CURRENT_PUBLICATION" class="checkbox_name W400 Y45">
                        <p>Дата старта продаж</p>
                    </label>
                </div>
                <!--Pre-order date-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_PREORDER" id="RL_PREORDER" class="checkbox_flag W25 Y25">
                    <label for="RL_PREORDER" class="checkbox_name W400 Y45">
                        <p>Дата предварительного заказа</p>
                    </label>
                </div>
                <!--Available in the iTunes Store-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_AVAILABLE_ON_ITUNES" id="RL_AVAILABLE_ON_ITUNES" class="checkbox_flag W25 Y25">
                    <label for="RL_AVAILABLE_ON_ITUNES" class="checkbox_name W400 Y45">
                        <p>Доступен в iTunes Store</p>
                    </label>
                </div>
                <!--ITUNES exclusive launch date-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_EX_DATE_ITUNES" id="RL_EX_DATE_ITUNES" class="checkbox_flag W25 Y25">
                    <label for="RL_EX_DATE_ITUNES" class="checkbox_name W400 Y45">
                        <p>Дата эксклюзивного старта в ITUNES</p>
                    </label>
                </div>
                <!--Available on Apple Music-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_AVAILABLE_APPLE_MUSIC" id="RL_AVAILABLE_APPLE_MUSIC" class="checkbox_flag W25 Y25">
                    <label for="RL_AVAILABLE_APPLE_MUSIC" class="checkbox_name W400 Y45">
                        <p>Доступен в Apple Music</p>
                    </label>
                </div>
                <!--Apple Music Exclusive Launch Date-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_EX_DATE_APPLE_MUSIC" id="RL_EX_DATE_APPLE_MUSIC" class="checkbox_flag W25 Y25">
                    <label for="RL_EX_DATE_APPLE_MUSIC" class="checkbox_name W400 Y45">
                        <p>Дата эксклюзивного старта в Apple Music </p>
                    </label>
                </div>
                <!--ITUNES Album Pricing Tier-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_PRICE_ALBUM_ITUNES" id="RL_PRICE_ALBUM_ITUNES" class="checkbox_flag W25 Y25">
                    <label for="RL_PRICE_ALBUM_ITUNES" class="checkbox_name W400 Y45">
                        <p>Ценовая категория альбома ITUNES</p>
                    </label>
                </div>
                <!--Price category of the ITUNES track-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_PRICE_TRACK_ITUNES" id="RL_PRICE_TRACK_ITUNES" class="checkbox_flag W25 Y25">
                    <label for="RL_PRICE_TRACK_ITUNES" class="checkbox_name W400 Y45">
                        <p>Ценовая категория трека ITUNES</p>
                    </label>
                </div>
                <!--Minimum price-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_MIN_PRICE" id="RL_MIN_PRICE" class="checkbox_flag W25 Y25">
                    <label for="RL_MIN_PRICE" class="checkbox_name W400 Y45">
                        <p>Минимальная цена</p>
                    </label>
                </div>
                <!--Lowest pricing for iTunes track-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_MIN_CATEGORY_PRICE" id="RL_MIN_CATEGORY_PRICE" class="checkbox_flag W25 Y25">
                    <label for="RL_MIN_CATEGORY_PRICE" class="checkbox_name W400 Y45">
                        <p>Минимальная ценовая категория трека iTunes</p>
                    </label>
                </div>
                <!--UPC audio release code-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_UPC_COD" id="RL_UPC_COD" class="checkbox_flag W25 Y25">
                    <label for="RL_UPC_COD" class="checkbox_name W400 Y45">
                        <p>UPC код аудио релиза</p>
                    </label>
                </div>
                <!--Audio Release Part Number (Custom)-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_CATALOG_NUMBER" id="RL_CATALOG_NUMBER" class="checkbox_flag W25 Y25">
                    <label for="RL_CATALOG_NUMBER" class="checkbox_name W400 Y45">
                        <p>Каталожный номер аудио релиза (пользовательский)</p>
                    </label>
                </div>
                <!--Audio release language-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_LANG_AUDIO" id="RL_LANG_AUDIO" class="checkbox_flag W25 Y25">
                    <label for="RL_LANG_AUDIO" class="checkbox_name W400 Y45">
                        <p>Язык аудио релиза</p>
                    </label>
                </div>

                <!--Язык метаданных релиза-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_META_LANG" id="RL_META_LANG" class="checkbox_flag W25 Y25">
                    <label for="RL_META_LANG" class="checkbox_name W400 Y45">
                        <p>Язык метаданных релиза</p>
                    </label>
                </div>

                <!--Premiere in Russia?-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_PREMIERE_RUSSIA" id="RL_PREMIERE_RUSSIA" class="checkbox_flag W25 Y25">
                    <label for="RL_PREMIERE_RUSSIA" class="checkbox_name W400 Y45">
                        <p>Премьера в России?</p>
                    </label>
                </div>

                <!--ITunes digital booklet-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_DIGITAL_BOOKLET_ITUNES" id="RL_DIGITAL_BOOKLET_ITUNES" class="checkbox_flag W25 Y25">
                    <label for="RL_DIGITAL_BOOKLET_ITUNES" class="checkbox_name W400 Y45">
                        <p>Цифровой буклет iTunes</p>
                    </label>
                </div>
                <!--The booklet contains profanity-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_DIGITAL_BOOKLET_ITUNES_PROFANITY" id="RL_DIGITAL_BOOKLET_ITUNES_PROFANITY" class="checkbox_flag W25 Y25">
                    <label for="RL_DIGITAL_BOOKLET_ITUNES_PROFANITY" class="checkbox_name W400 Y45">
                        <p>Буклет содержит ненормативную лексику</p>
                    </label>
                </div>

                <!--Описание-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_DESCRIPTION" id="RL_DESCRIPTION" class="checkbox_flag W25 Y25">
                    <label for="RL_DESCRIPTION" class="checkbox_name W400 Y45">
                        <p>Описание</p>
                    </label>
                </div>

                <!--Информация для модератора-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_INFO_FOR_MODERATOR" id="RL_INFO_FOR_MODERATOR" class="checkbox_flag W25 Y25">
                    <label for="RL_INFO_FOR_MODERATOR" class="checkbox_name W400 Y45">
                        <p>Информация для модератора</p>
                    </label>
                </div>

                <!--Made for iTunes (MFIT)-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_MASTERED_FOR_ITUNES" id="RL_MASTERED_FOR_ITUNES" class="checkbox_flag W25 Y25">
                    <label for="RL_MASTERED_FOR_ITUNES" class="checkbox_name W400 Y45">
                        <p>Mastered for iTunes (MFIT) </p>
                    </label>
                </div>
                <!--Studio name-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_MASTERED_STUDIO_NAME" id="RL_MASTERED_STUDIO_NAME" class="checkbox_flag W25 Y25">
                    <label for="RL_MASTERED_STUDIO_NAME" class="checkbox_name W400 Y45">
                        <p>Название студии </p>
                    </label>
                </div>
                <!--A country-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_MASTERED_COUNTRY" id="RL_MASTERED_COUNTRY" class="checkbox_flag W25 Y25">
                    <label for="RL_MASTERED_COUNTRY" class="checkbox_name W400 Y45">
                        <p>Страна</p>
                    </label>
                </div>
                <!--Studio email-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_MASTERED_MAIL" id="RL_MASTERED_MAIL" class="checkbox_flag W25 Y25">
                    <label for="RL_MASTERED_MAIL" class="checkbox_name W400 Y45">
                        <p>E-mail студии</p>
                    </label>
                </div>
                <!--City-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_MASTERED_CITY" id="RL_MASTERED_CITY" class="checkbox_flag W25 Y25">
                    <label for="RL_MASTERED_CITY" class="checkbox_name W400 Y45">
                        <p>Город</p>
                    </label>
                </div>
                <!--YouTube Premium start date-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_START_DATE_YOUTUBE" id="RL_START_DATE_YOUTUBE" class="checkbox_flag W25 Y25">
                    <label for="RL_START_DATE_YOUTUBE" class="checkbox_name W400 Y45">
                        <p>Дата старта продаж в YouTube Premium</p>
                    </label>
                </div>
                <!--Copies on YouTube-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_COPY_YOUTUBE" id="RL_COPY_YOUTUBE" class="checkbox_flag W25 Y25">
                    <label for="RL_COPY_YOUTUBE" class="checkbox_name W400 Y45">
                        <p>Копии на YouTube</p>
                    </label>
                </div>
                <!--Sales start date-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_START_DATE_VK" id="RL_START_DATE_VK" class="checkbox_flag W25 Y25">
                    <label for="RL_START_DATE_VK" class="checkbox_name W400 Y45">
                        <p>Дата старта продаж ВК</p>
                    </label>
                </div>
                <!--Time-->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="RL_START_TIME_VK" id="RL_START_TIME_VK" class="checkbox_flag W25 Y25">
                    <label for="RL_START_TIME_VK" class="checkbox_name W400 Y45">
                        <p>Время</p>
                    </label>
                </div>

            </div>

            <div class="elem_name botmarg7">
                Разрешить редактирование разделов:		
            </div>
            <div>
                <!---->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="CORR_AUDIO_FILE" id="CORR_AUDIO_FILE" class="checkbox_flag W25 Y25" checked="">
                    <label for="CORR_AUDIO_FILE" class="checkbox_name W400 Y45">
                        <p>Аудио файлы фонограмм</p>
                    </label>
                </div>
                <!---->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="CORR_METADATA" id="CORR_METADATA" class="checkbox_flag W25 Y25" checked="">
                    <label for="CORR_METADATA" class="checkbox_name W400 Y45">
                        <p>Метаданные фонограмм</p>
                    </label>
                </div>
                <!---->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="CORR_REGION" id="CORR_REGION" class="checkbox_flag W25 Y25" checked="">
                    <label for="CORR_REGION" class="checkbox_name W400 Y45">
                        <p>Регионы</p>
                    </label>
                </div>
                <!---->
                <div class="checkbox botmarg7 inline">
                    <input type="checkbox" name="CORR_COMPLITED" id="CORR_COMPLITED" class="checkbox_flag W25 Y25" checked="">
                    <label for="CORR_COMPLITED" class="checkbox_name W400 Y45">
                        <p>Готовность</p>
                    </label>
                </div>
            </div>

            <!--НИЖНИЕ КНОПКИ-->
            <div class="release_button_block flexim">
                <input id="correcting" class="button purple_but Y45 botmarg7" type="button" value="Отправить на исправление" style="display: block;">
                <script>
                    $(document).ready(function () {

                        $('#correcting').click(function () {
                            let arrSelect = [];
                            let arrNumber = 0;
                            if (document.getElementById('RL_COVER').checked) {
                                arrSelect[arrNumber] = 'RL_COVER';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('NAME').checked) {
                                arrSelect[arrNumber] = 'NAME';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_VERSION').checked) {
                                arrSelect[arrNumber] = 'RL_VERSION';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_MAIN_EXECUTOR').checked) {
                                arrSelect[arrNumber] = 'RL_MAIN_EXECUTOR';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_CONTRACTOR_EXECUTOR').checked) {
                                arrSelect[arrNumber] = 'RL_CONTRACTOR_EXECUTOR';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_REMIXER').checked) {
                                arrSelect[arrNumber] = 'RL_REMIXER';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_GENRE').checked) {
                                arrSelect[arrNumber] = 'RL_GENRE';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_STYLE').checked) {
                                arrSelect[arrNumber] = 'RL_STYLE';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_VIEW').checked) {
                                arrSelect[arrNumber] = 'RL_VIEW';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_RELEASE_FORMAT').checked) {
                                arrSelect[arrNumber] = 'RL_RELEASE_FORMAT';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_RECORD_LABEL').checked) {
                                arrSelect[arrNumber] = 'RL_RECORD_LABEL';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_MUSIC_PUBLISHER').checked) {
                                arrSelect[arrNumber] = 'RL_MUSIC_PUBLISHER';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_SHOWCASE').checked) {
                                arrSelect[arrNumber] = 'RL_SHOWCASE';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_DATE_FIRST_PUBLICATION').checked) {
                                arrSelect[arrNumber] = 'RL_DATE_FIRST_PUBLICATION';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_YEAR').checked) {
                                arrSelect[arrNumber] = 'RL_YEAR';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_CURRENT_PUBLICATION').checked) {
                                arrSelect[arrNumber] = 'RL_CURRENT_PUBLICATION';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_PREORDER').checked) {
                                arrSelect[arrNumber] = 'RL_PREORDER';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_AVAILABLE_ON_ITUNES').checked) {
                                arrSelect[arrNumber] = 'RL_AVAILABLE_ON_ITUNES';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_EX_DATE_ITUNES').checked) {
                                arrSelect[arrNumber] = 'RL_EX_DATE_ITUNES';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_AVAILABLE_APPLE_MUSIC').checked) {
                                arrSelect[arrNumber] = 'RL_AVAILABLE_APPLE_MUSIC';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_EX_DATE_APPLE_MUSIC').checked) {
                                arrSelect[arrNumber] = 'RL_EX_DATE_APPLE_MUSIC';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_PRICE_ALBUM_ITUNES').checked) {
                                arrSelect[arrNumber] = 'RL_PRICE_ALBUM_ITUNES';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_PRICE_TRACK_ITUNES').checked) {
                                arrSelect[arrNumber] = 'RL_PRICE_TRACK_ITUNES';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_MIN_PRICE').checked) {
                                arrSelect[arrNumber] = 'RL_MIN_PRICE';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_MIN_CATEGORY_PRICE').checked) {
                                arrSelect[arrNumber] = 'RL_MIN_CATEGORY_PRICE';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_UPC_COD').checked) {
                                arrSelect[arrNumber] = 'RL_UPC_COD';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_CATALOG_NUMBER').checked) {
                                arrSelect[arrNumber] = 'RL_CATALOG_NUMBER';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_LANG_AUDIO').checked) {
                                arrSelect[arrNumber] = 'RL_LANG_AUDIO';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_PREMIERE_RUSSIA').checked) {
                                arrSelect[arrNumber] = 'RL_PREMIERE_RUSSIA';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_DIGITAL_BOOKLET_ITUNES').checked) {
                                arrSelect[arrNumber] = 'RL_DIGITAL_BOOKLET_ITUNES';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_DIGITAL_BOOKLET_ITUNES_PROFANITY').checked) {
                                arrSelect[arrNumber] = 'RL_DIGITAL_BOOKLET_ITUNES_PROFANITY';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_DESCRIPTION').checked) {
                                arrSelect[arrNumber] = 'RL_DESCRIPTION';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_INFO_FOR_MODERATOR').checked) {
                                arrSelect[arrNumber] = 'RL_INFO_FOR_MODERATOR';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_MASTERED_FOR_ITUNES').checked) {
                                arrSelect[arrNumber] = 'RL_MASTERED_FOR_ITUNES';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_MASTERED_STUDIO_NAME').checked) {
                                arrSelect[arrNumber] = 'RL_MASTERED_STUDIO_NAME';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_MASTERED_COUNTRY').checked) {
                                arrSelect[arrNumber] = 'RL_MASTERED_COUNTRY';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_MASTERED_MAIL').checked) {
                                arrSelect[arrNumber] = 'RL_MASTERED_MAIL';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_MASTERED_CITY').checked) {
                                arrSelect[arrNumber] = 'RL_MASTERED_CITY';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_START_DATE_YOUTUBE').checked) {
                                arrSelect[arrNumber] = 'RL_START_DATE_YOUTUBE';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_COPY_YOUTUBE').checked) {
                                arrSelect[arrNumber] = 'RL_COPY_YOUTUBE';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_START_DATE_VK').checked) {
                                arrSelect[arrNumber] = 'RL_START_DATE_VK';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('RL_START_TIME_VK').checked) {
                                arrSelect[arrNumber] = 'RL_START_TIME_VK';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('CORR_AUDIO_FILE').checked) {
                                arrSelect[arrNumber] = 'CORR_AUDIO_FILE';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('CORR_METADATA').checked) {
                                arrSelect[arrNumber] = 'CORR_METADATA';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('CORR_REGION').checked) {
                                arrSelect[arrNumber] = 'CORR_REGION';
                                arrNumber = arrNumber + 1;
                            }
                            if (document.getElementById('CORR_COMPLITED').checked) {
                                arrSelect[arrNumber] = 'CORR_COMPLITED';
                                arrNumber = arrNumber + 1;
                            }


                            $.ajax({
                                type: "POST",
                                url: "/pages/app/audio-release/refresh-page/EditMassivForUser.aspx",
                                data: {
                                    "RELEASE_ID": 845,
                                    "ARR_SELECT": arrSelect,
                                },
                                dataType: 'html',
                                cache: false,
                            })


                            $.ajax({
                                type: "POST",
                                url: "/pages/app/audio-release/refresh-page/correcting.aspx",
                                data: {
                                    "ReleaseID": 845,
                                    "UserID": 4,
                                    "ModeratorNotes": document.getElementsByClassName("nicEdit-main")[0].innerHTML
                                },
                                dataType: 'html',
                                cache: false,
                            })
                                .done(function (result) {
                                    console.log("correcting");
                                    location.reload();
                                })
                        });
                    });
                </script>

                <input id="CreateDDEX" class="button purple_but Y45 botmarg7" type="button" value="Готово для НЦА и сформировать DDEX">
                <div id="status_ddex"></div>
                <script>
                    $(document).ready(function () {
                        $('#CreateDDEX').click(function () {
                            $.ajax({
                                type: "POST",
                                url: "/pages/app/audio-release/refresh-page/create-ddex.aspx",
                                data: { "ReleaseID": 845, "UserID": 4 },
                                dataType: 'html',
                                cache: false,
                            })
                                .done(function (result) {
                                    console.log("create ddex");
                                    document.getElementById("status_ddex").innerHTML = "Файл сформирован";
                                })
                                .fail(function (error) {
                                    console.log("create fail");
                                    document.getElementById("status_ddex").innerHTML = "Ошибка, попробуйте ещё раз";
                                });
                        });
                    });
                </script>

                <input id="correcting" class="button purple_but Y45 botmarg7" type="button" value="Вернуть в черновики" style="display: block;">
                <script>
                    $(document).ready(function () {
                        $('#CreateDDEX').click(function () {
                            $.ajax({
                                type: "POST",
                                url: "/pages/app/audio-release/refresh-page/status-draft.aspx",
                                data: { "ReleaseID": 845 },
                                dataType: 'html',
                                cache: false,
                            })
                                .done(function (result) {
                                    console.log("status: draft");
                                })
                                .fail(function (error) {
                                    console.log("status: error");
                                });
                        });
                    });
                </script>

            </div>
        </div>
    </div>
</asp:Content>
