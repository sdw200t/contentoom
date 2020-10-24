<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/template/app/app.Master" CodeBehind="promo.aspx.vb" Inherits="contentoom.audioReleasePromo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Промо аудио релиза
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
                <h1>ПРОМО</h1>
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
                        <div class="elem_menu_active">
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

            <!--Описание трека-->
            <div class="elem_name botmarg7">
                Описание трека		
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
                <textarea name="PROPERTY[156][0][VALUE]" id="PROPERTY_156_0" wrap="off" class="W550" style="display: none;"></textarea>
            </div>

            <!--Название релиза-->
            <input type="hidden" id="PROPERTY_NAME" name="PROPERTY[NAME][0]" class="input_text W450" value="Повороты судьбы ">

            <!--Ссылка на соцсеть-->
            <div class="elem_name botmarg7">
                Ссылка на соцсеть		
            </div>
            <div class="botmarg37">
                <div class="flexim link_list">
                    <img src="/img/ico/social_link.svg" class="link_ico">
                    <input type="text" name="PROPERTY[157][0][VALUE]" class="input_text W450 botmarg7" id="PROPERTY_157_0" value="">
                    <div class="counter_but" onclick="addMain()">+</div>
                    <div class="counter_but" onclick="delMain()">-</div>
                </div>
                <div id="r_main" class="main_class">
                </div>
                <script type="text/javascript">
                    var xMain = 0;

                    function addMain() {
                        if (document.getElementById('PROPERTY_157_' + xMain).value !== "") {
                            document.getElementById('PROPERTY_157_' + xMain).className = "input_text W450 botmarg7";
                            var profile = document.getElementById('r_main');
                            var div = document.createElement('div');
                            div.id = 'main' + ++xMain;
                            div.classList.toggle('botmarg7');
                            div.classList.add('flexim');
                            div.innerHTML = '<img src="/img/ico/social_link.svg" class="link_ico"><input class="input_text W450 botmarg7" type="text" id="PROPERTY_157_' + xMain + '" name="PROPERTY[157][' + xMain + '][VALUE]">';
                            profile.appendChild(div);
                            document.getElementById('PROPERTY_157_' + xMain).focus();
                        }
                        else {
                            document.getElementById('PROPERTY_157_' + xMain).placeholder = "Заполните ссылку!";
                            document.getElementById('PROPERTY_157_' + xMain).className = "input_text W450 botmarg7 redBoarder";
                            document.getElementById('PROPERTY_157_' + xMain).focus();
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

            <!--Бюджет-->
            <div class="elem_name botmarg7">
                Бюджет (в руб.)		
            </div>
            <div class="botmarg37 flexim">
                <input type="number" min="0" step="0.01" name="PROPERTY[158][0][VALUE]" class="input_text W150 botmarg7 mask-rub" id="PROPERTY_158_0" value="" placeholder="0.0" style="text-align: right;">
            </div>

            <!--приложить файлы-->
            <div class="elem_name botmarg7">
                приложить файлы		
            </div>
            <div class="botmarg37">
                <!--Область загрузки-->
                <div class="DocumentUpload fs-upload-element fs-upload fs-light" style="width: 570px;">
                    <div class="fs-upload-target">Загрузить файлы</div>
                    <input class="fs-upload-input" type="file" multiple=""></div>
                <div id="DocumentArea" class="DocumentArea" style="width: 570px;">
                    <div id="DocumentResult" class="DocumentResult"></div>
                </div>
                <!--Область контента-->
                <div id="refresh_content">
                    <ul id="doc_list" style="list-style-type: none;">
                    </ul>
                </div>
            </div>

            <!--Описание промо активности-->
            <div class="elem_name botmarg7">
                Описание промо активности		
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
                <textarea name="PROPERTY[160][0][VALUE]" id="PROPERTY_160_0" wrap="off" class="W550" style="display: none;"></textarea>
            </div>

        </div>
    </div>
    <div class="release_button_block">
        <input type="submit" name="iblock_apply" class="apply W160" value="СОХРАНИТЬ">
	</div>
</asp:Content>
