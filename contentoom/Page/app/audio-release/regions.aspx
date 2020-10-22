<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/template/app/app.Master" CodeBehind="regions.aspx.vb" Inherits="contentoom.audioReleaseRegions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Регионы аудио релиза
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
                <h1>ВЫБОР РЕГИОНОВ</h1>
            </div>

            <!--топ меню-->
            <div class="release_menu_top" id="release_menu_top">
                <!--Данные релиза-->
                <div class="full_elem_menu">
                    <a href="/page/app/audio-release/main.aspx">
                        <div class="elem_menu">
                            Данные релиза					
                        </div>
                    </a>
                </div>
                <!--Аудио файлы фонограмм-->
                <div class="full_elem_menu">
                    <a href="/page/app/audio-release/files.aspx">
                        <div class="elem_menu">
                            Аудио файлы фонограмм					
                        </div>
                    </a>
                </div>
                <!--Метаданные фонограмм-->
                <div class="full_elem_menu">
                    <a href="/page/app/audio-release/metadata.aspx">
                        <div class="elem_menu">
                            Метаданные фонограмм					
                        </div>
                    </a>
                </div>
                <!--Регионы-->
                <div class="full_elem_menu">
                    <a href="/page/app/audio-release/regions.aspx">
                        <div class="elem_menu_active">
                            Регионы					
                        </div>
                    </a>
                </div>
                <!--Промо-->
                <div class="full_elem_menu">
                    <a href="/page/app/audio-release/promo.aspx">
                        <div class="elem_menu">
                            Промо					
                        </div>
                    </a>
                </div>
                <!--Готовность-->
                <div class="full_elem_menu">
                    <a href="/page/app/audio-release/ready.aspx">
                        <div class="elem_menu">
                            Готовность					
                        </div>
                    </a>
                </div>
                <!--Проверка и отправка-->
                <div class="full_elem_menu">
                    <a href="/page/app/audio-release/check.aspx">
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


            <!--Название фонограммы-->
            <input type="hidden" name="PROPERTY[NAME][0]" class="input_text W450" value="Повороты судьбы ">
            <div style="display: contents;">
                <!--область регионов-->
                <!--АЗИЯ-->
                <div class="region_list">
                    <div class="elem_name">
                        <h2>Азия</h2>
                    </div>
                    <div class="checkbox_area">
                        <input type="checkbox" name="CheckAsia" id="CheckAsia" class="checkbox_flag W25 Y25" checked="">
                        <label for="CheckAsia" class="checkbox_name">
                            <p>Отметить весь регион</p>
                        </label>
                    </div>
                    <div class="W450 botmarg17">
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][0]" id="regAsia_0" class="checkbox_flag W25 Y25 regAsia regAll" value="AF" checked="">
                            <img src="/img/region/asia/Afghanistan AF.gif">
                            <label for="regAsia_0" class="checkbox_name">
                                <p>Afghanistan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][1]" id="regAsia_1" class="checkbox_flag W25 Y25 regAsia regAll" value="BH" checked="">
                            <img src="/img/region/asia/Bahrain BH.gif">
                            <label for="regAsia_1" class="checkbox_name">
                                <p>Bahrain</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][2]" id="regAsia_2" class="checkbox_flag W25 Y25 regAsia regAll" value="BD" checked="">
                            <img src="/img/region/asia/Bangladesh BD.gif">
                            <label for="regAsia_2" class="checkbox_name">
                                <p>Bangladesh</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][3]" id="regAsia_3" class="checkbox_flag W25 Y25 regAsia regAll" value="BT" checked="">
                            <img src="/img/region/asia/Bhutan BT.gif">
                            <label for="regAsia_3" class="checkbox_name">
                                <p>Bhutan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][4]" id="regAsia_4" class="checkbox_flag W25 Y25 regAsia regAll" value="IO" checked="">
                            <img src="/img/region/asia/British Indian Ocean IO.gif">
                            <label for="regAsia_4" class="checkbox_name">
                                <p>British Indian Ocean</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][5]" id="regAsia_5" class="checkbox_flag W25 Y25 regAsia regAll" value="BN" checked="">
                            <img src="/img/region/asia/Brunei Darussalam BN.gif">
                            <label for="regAsia_5" class="checkbox_name">
                                <p>Brunei Darussalam</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][6]" id="regAsia_6" class="checkbox_flag W25 Y25 regAsia regAll" value="KH" checked="">
                            <img src="/img/region/asia/Cambodia KH.gif">
                            <label for="regAsia_6" class="checkbox_name">
                                <p>Cambodia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][7]" id="regAsia_7" class="checkbox_flag W25 Y25 regAsia regAll" value="CN" checked="">
                            <img src="/img/region/asia/China CN.gif">
                            <label for="regAsia_7" class="checkbox_name">
                                <p>China</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][8]" id="regAsia_8" class="checkbox_flag W25 Y25 regAsia regAll" value="HK" checked="">
                            <img src="/img/region/asia/Hong Kong, China HK.gif">
                            <label for="regAsia_8" class="checkbox_name">
                                <p>Hong Kong, China</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][9]" id="regAsia_9" class="checkbox_flag W25 Y25 regAsia regAll" value="	IN" checked="">
                            <img src="/img/region/asia/India 	IN.gif">
                            <label for="regAsia_9" class="checkbox_name">
                                <p>India</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][10]" id="regAsia_10" class="checkbox_flag W25 Y25 regAsia regAll" value="ID" checked="">
                            <img src="/img/region/asia/Indonesia ID.gif">
                            <label for="regAsia_10" class="checkbox_name">
                                <p>Indonesia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][11]" id="regAsia_11" class="checkbox_flag W25 Y25 regAsia regAll" value="IR" checked="">
                            <img src="/img/region/asia/Iran IR.gif">
                            <label for="regAsia_11" class="checkbox_name">
                                <p>Iran</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][12]" id="regAsia_12" class="checkbox_flag W25 Y25 regAsia regAll" value="IQ" checked="">
                            <img src="/img/region/asia/Iraq IQ.gif">
                            <label for="regAsia_12" class="checkbox_name">
                                <p>Iraq</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][13]" id="regAsia_13" class="checkbox_flag W25 Y25 regAsia regAll" value="IL" checked="">
                            <img src="/img/region/asia/Israel IL.gif">
                            <label for="regAsia_13" class="checkbox_name">
                                <p>Israel</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][14]" id="regAsia_14" class="checkbox_flag W25 Y25 regAsia regAll" value="JP" checked="">
                            <img src="/img/region/asia/Japan JP.gif">
                            <label for="regAsia_14" class="checkbox_name">
                                <p>Japan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][15]" id="regAsia_15" class="checkbox_flag W25 Y25 regAsia regAll" value="JO" checked="">
                            <img src="/img/region/asia/Jordan JO.gif">
                            <label for="regAsia_15" class="checkbox_name">
                                <p>Jordan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][16]" id="regAsia_16" class="checkbox_flag W25 Y25 regAsia regAll" value="KW" checked="">
                            <img src="/img/region/asia/Kuwait KW.gif">
                            <label for="regAsia_16" class="checkbox_name">
                                <p>Kuwait</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][17]" id="regAsia_17" class="checkbox_flag W25 Y25 regAsia regAll" value="KG" checked="">
                            <img src="/img/region/asia/Kyrgyzstan KG.gif">
                            <label for="regAsia_17" class="checkbox_name">
                                <p>Kyrgyzstan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][18]" id="regAsia_18" class="checkbox_flag W25 Y25 regAsia regAll" value="LA" checked="">
                            <img src="/img/region/asia/Lao People's Democratic Republic LA.gif">
                            <label for="regAsia_18" class="checkbox_name">
                                <p>Lao People's Democratic Republic</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][19]" id="regAsia_19" class="checkbox_flag W25 Y25 regAsia regAll" value="LB	" checked="">
                            <img src="/img/region/asia/Lebanon LB	.gif">
                            <label for="regAsia_19" class="checkbox_name">
                                <p>Lebanon</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][20]" id="regAsia_20" class="checkbox_flag W25 Y25 regAsia regAll" value="MO" checked="">
                            <img src="/img/region/asia/Macao, China MO.gif">
                            <label for="regAsia_20" class="checkbox_name">
                                <p>Macao, China</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][21]" id="regAsia_21" class="checkbox_flag W25 Y25 regAsia regAll" value="MY" checked="">
                            <img src="/img/region/asia/Malaysia MY.gif">
                            <label for="regAsia_21" class="checkbox_name">
                                <p>Malaysia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][22]" id="regAsia_22" class="checkbox_flag W25 Y25 regAsia regAll" value="MV" checked="">
                            <img src="/img/region/asia/Maldives MV.gif">
                            <label for="regAsia_22" class="checkbox_name">
                                <p>Maldives</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][23]" id="regAsia_23" class="checkbox_flag W25 Y25 regAsia regAll" value="MN" checked="">
                            <img src="/img/region/asia/Mongolia MN.gif">
                            <label for="regAsia_23" class="checkbox_name">
                                <p>Mongolia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][24]" id="regAsia_24" class="checkbox_flag W25 Y25 regAsia regAll" value="MM" checked="">
                            <img src="/img/region/asia/Myanmar MM.gif">
                            <label for="regAsia_24" class="checkbox_name">
                                <p>Myanmar</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][25]" id="regAsia_25" class="checkbox_flag W25 Y25 regAsia regAll" value="NP" checked="">
                            <img src="/img/region/asia/Nepal NP.gif">
                            <label for="regAsia_25" class="checkbox_name">
                                <p>Nepal</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][26]" id="regAsia_26" class="checkbox_flag W25 Y25 regAsia regAll" value="KP" checked="">
                            <img src="/img/region/asia/North Korea KP.gif">
                            <label for="regAsia_26" class="checkbox_name">
                                <p>North Korea</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][27]" id="regAsia_27" class="checkbox_flag W25 Y25 regAsia regAll" value="OM" checked="">
                            <img src="/img/region/asia/Oman OM.gif">
                            <label for="regAsia_27" class="checkbox_name">
                                <p>Oman</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][28]" id="regAsia_28" class="checkbox_flag W25 Y25 regAsia regAll" value="PK" checked="">
                            <img src="/img/region/asia/Pakistan PK.gif">
                            <label for="regAsia_28" class="checkbox_name">
                                <p>Pakistan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][29]" id="regAsia_29" class="checkbox_flag W25 Y25 regAsia regAll" value="PW" checked="">
                            <img src="/img/region/asia/Palau PW.gif">
                            <label for="regAsia_29" class="checkbox_name">
                                <p>Palau</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][30]" id="regAsia_30" class="checkbox_flag W25 Y25 regAsia regAll" value="PS" checked="">
                            <img src="/img/region/asia/Palestinian Territories PS.gif">
                            <label for="regAsia_30" class="checkbox_name">
                                <p>Palestinian Territories</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][31]" id="regAsia_31" class="checkbox_flag W25 Y25 regAsia regAll" value="PH" checked="">
                            <img src="/img/region/asia/Philippines PH.gif">
                            <label for="regAsia_31" class="checkbox_name">
                                <p>Philippines</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][32]" id="regAsia_32" class="checkbox_flag W25 Y25 regAsia regAll" value="QA" checked="">
                            <img src="/img/region/asia/Qatar QA.gif">
                            <label for="regAsia_32" class="checkbox_name">
                                <p>Qatar</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][33]" id="regAsia_33" class="checkbox_flag W25 Y25 regAsia regAll" value="SA" checked="">
                            <img src="/img/region/asia/Saudi Arabia SA.gif">
                            <label for="regAsia_33" class="checkbox_name">
                                <p>Saudi Arabia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][34]" id="regAsia_34" class="checkbox_flag W25 Y25 regAsia regAll" value="SG" checked="">
                            <img src="/img/region/asia/Singapore SG.gif">
                            <label for="regAsia_34" class="checkbox_name">
                                <p>Singapore</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][35]" id="regAsia_35" class="checkbox_flag W25 Y25 regAsia regAll" value="KR" checked="">
                            <img src="/img/region/asia/South Korea KR.gif">
                            <label for="regAsia_35" class="checkbox_name">
                                <p>South Korea</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][36]" id="regAsia_36" class="checkbox_flag W25 Y25 regAsia regAll" value="LK" checked="">
                            <img src="/img/region/asia/Sri Lanka LK.gif">
                            <label for="regAsia_36" class="checkbox_name">
                                <p>Sri Lanka</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][37]" id="regAsia_37" class="checkbox_flag W25 Y25 regAsia regAll" value="SY" checked="">
                            <img src="/img/region/asia/Syrian Arab Republic SY.gif">
                            <label for="regAsia_37" class="checkbox_name">
                                <p>Syrian Arab Republic</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][38]" id="regAsia_38" class="checkbox_flag W25 Y25 regAsia regAll" value="TW" checked="">
                            <img src="/img/region/asia/Taiwan, Province Of China TW.gif">
                            <label for="regAsia_38" class="checkbox_name">
                                <p>Taiwan, Province Of China</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][39]" id="regAsia_39" class="checkbox_flag W25 Y25 regAsia regAll" value="TJ" checked="">
                            <img src="/img/region/asia/Tajikistan TJ.gif">
                            <label for="regAsia_39" class="checkbox_name">
                                <p>Tajikistan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][40]" id="regAsia_40" class="checkbox_flag W25 Y25 regAsia regAll" value="TH" checked="">
                            <img src="/img/region/asia/Thailand TH.gif">
                            <label for="regAsia_40" class="checkbox_name">
                                <p>Thailand</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][41]" id="regAsia_41" class="checkbox_flag W25 Y25 regAsia regAll" value="TL" checked="">
                            <img src="/img/region/asia/Timor-leste TL.gif">
                            <label for="regAsia_41" class="checkbox_name">
                                <p>Timor-leste</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][42]" id="regAsia_42" class="checkbox_flag W25 Y25 regAsia regAll" value="TM" checked="">
                            <img src="/img/region/asia/Turkmenistan TM.gif">
                            <label for="regAsia_42" class="checkbox_name">
                                <p>Turkmenistan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][43]" id="regAsia_43" class="checkbox_flag W25 Y25 regAsia regAll" value="AE" checked="">
                            <img src="/img/region/asia/United Arab Emirates AE.gif">
                            <label for="regAsia_43" class="checkbox_name">
                                <p>United Arab Emirates</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][44]" id="regAsia_44" class="checkbox_flag W25 Y25 regAsia regAll" value="UZ" checked="">
                            <img src="/img/region/asia/Uzbekistan UZ.gif">
                            <label for="regAsia_44" class="checkbox_name">
                                <p>Uzbekistan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][45]" id="regAsia_45" class="checkbox_flag W25 Y25 regAsia regAll" value="VN" checked="">
                            <img src="/img/region/asia/Viet Nam VN.gif">
                            <label for="regAsia_45" class="checkbox_name">
                                <p>Viet Nam</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[31][46]" id="regAsia_46" class="checkbox_flag W25 Y25 regAsia regAll" value="YE" checked="">
                            <img src="/img/region/asia/Yemen YE.gif">
                            <label for="regAsia_46" class="checkbox_name">
                                <p>Yemen</p>
                            </label>
                            <br>
                        </div>
                        <script>
                            $(document).ready(function () {
                                $("#CheckAsia").click(function () {
                                    if (!$("#CheckAsia").is(":checked"))
                                        $(".regAsia").removeAttr("checked");
                                    else
                                        $(".regAsia").attr("checked", "checked");
                                });
                            });
                        </script>
                    </div>

                    <div class="W450 botmarg17" style="display: none;">
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_0" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="AF" checked="" disabled="">
                            <img src="/img/region/asia/Afghanistan AF.gif">
                            <label for="regNonAsia_0" class="checkbox_name cursor_allowed">
                                <p>Afghanistan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_1" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="BH" checked="" disabled="">
                            <img src="/img/region/asia/Bahrain BH.gif">
                            <label for="regNonAsia_1" class="checkbox_name cursor_allowed">
                                <p>Bahrain</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_2" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="BD" checked="" disabled="">
                            <img src="/img/region/asia/Bangladesh BD.gif">
                            <label for="regNonAsia_2" class="checkbox_name cursor_allowed">
                                <p>Bangladesh</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_3" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="BT" checked="" disabled="">
                            <img src="/img/region/asia/Bhutan BT.gif">
                            <label for="regNonAsia_3" class="checkbox_name cursor_allowed">
                                <p>Bhutan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_4" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="IO" checked="" disabled="">
                            <img src="/img/region/asia/British Indian Ocean IO.gif">
                            <label for="regNonAsia_4" class="checkbox_name cursor_allowed">
                                <p>British Indian Ocean</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_5" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="BN" checked="" disabled="">
                            <img src="/img/region/asia/Brunei Darussalam BN.gif">
                            <label for="regNonAsia_5" class="checkbox_name cursor_allowed">
                                <p>Brunei Darussalam</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_6" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="KH" checked="" disabled="">
                            <img src="/img/region/asia/Cambodia KH.gif">
                            <label for="regNonAsia_6" class="checkbox_name cursor_allowed">
                                <p>Cambodia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_7" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="CN" checked="" disabled="">
                            <img src="/img/region/asia/China CN.gif">
                            <label for="regNonAsia_7" class="checkbox_name cursor_allowed">
                                <p>China</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_8" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="HK" checked="" disabled="">
                            <img src="/img/region/asia/Hong Kong, China HK.gif">
                            <label for="regNonAsia_8" class="checkbox_name cursor_allowed">
                                <p>Hong Kong, China</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_9" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="	IN" checked="" disabled="">
                            <img src="/img/region/asia/India 	IN.gif">
                            <label for="regNonAsia_9" class="checkbox_name cursor_allowed">
                                <p>India</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_10" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="ID" checked="" disabled="">
                            <img src="/img/region/asia/Indonesia ID.gif">
                            <label for="regNonAsia_10" class="checkbox_name cursor_allowed">
                                <p>Indonesia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_11" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="IR" checked="" disabled="">
                            <img src="/img/region/asia/Iran IR.gif">
                            <label for="regNonAsia_11" class="checkbox_name cursor_allowed">
                                <p>Iran</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_12" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="IQ" checked="" disabled="">
                            <img src="/img/region/asia/Iraq IQ.gif">
                            <label for="regNonAsia_12" class="checkbox_name cursor_allowed">
                                <p>Iraq</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_13" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="IL" checked="" disabled="">
                            <img src="/img/region/asia/Israel IL.gif">
                            <label for="regNonAsia_13" class="checkbox_name cursor_allowed">
                                <p>Israel</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_14" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="JP" checked="" disabled="">
                            <img src="/img/region/asia/Japan JP.gif">
                            <label for="regNonAsia_14" class="checkbox_name cursor_allowed">
                                <p>Japan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_15" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="JO" checked="" disabled="">
                            <img src="/img/region/asia/Jordan JO.gif">
                            <label for="regNonAsia_15" class="checkbox_name cursor_allowed">
                                <p>Jordan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_16" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="KW" checked="" disabled="">
                            <img src="/img/region/asia/Kuwait KW.gif">
                            <label for="regNonAsia_16" class="checkbox_name cursor_allowed">
                                <p>Kuwait</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_17" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="KG" checked="" disabled="">
                            <img src="/img/region/asia/Kyrgyzstan KG.gif">
                            <label for="regNonAsia_17" class="checkbox_name cursor_allowed">
                                <p>Kyrgyzstan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_18" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="LA" checked="" disabled="">
                            <img src="/img/region/asia/Lao People's Democratic Republic LA.gif">
                            <label for="regNonAsia_18" class="checkbox_name cursor_allowed">
                                <p>Lao People's Democratic Republic</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_19" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="LB	" checked="" disabled="">
                            <img src="/img/region/asia/Lebanon LB	.gif">
                            <label for="regNonAsia_19" class="checkbox_name cursor_allowed">
                                <p>Lebanon</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_20" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="MO" checked="" disabled="">
                            <img src="/img/region/asia/Macao, China MO.gif">
                            <label for="regNonAsia_20" class="checkbox_name cursor_allowed">
                                <p>Macao, China</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_21" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="MY" checked="" disabled="">
                            <img src="/img/region/asia/Malaysia MY.gif">
                            <label for="regNonAsia_21" class="checkbox_name cursor_allowed">
                                <p>Malaysia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_22" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="MV" checked="" disabled="">
                            <img src="/img/region/asia/Maldives MV.gif">
                            <label for="regNonAsia_22" class="checkbox_name cursor_allowed">
                                <p>Maldives</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_23" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="MN" checked="" disabled="">
                            <img src="/img/region/asia/Mongolia MN.gif">
                            <label for="regNonAsia_23" class="checkbox_name cursor_allowed">
                                <p>Mongolia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_24" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="MM" checked="" disabled="">
                            <img src="/img/region/asia/Myanmar MM.gif">
                            <label for="regNonAsia_24" class="checkbox_name cursor_allowed">
                                <p>Myanmar</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_25" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="NP" checked="" disabled="">
                            <img src="/img/region/asia/Nepal NP.gif">
                            <label for="regNonAsia_25" class="checkbox_name cursor_allowed">
                                <p>Nepal</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_26" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="KP" checked="" disabled="">
                            <img src="/img/region/asia/North Korea KP.gif">
                            <label for="regNonAsia_26" class="checkbox_name cursor_allowed">
                                <p>North Korea</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_27" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="OM" checked="" disabled="">
                            <img src="/img/region/asia/Oman OM.gif">
                            <label for="regNonAsia_27" class="checkbox_name cursor_allowed">
                                <p>Oman</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_28" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="PK" checked="" disabled="">
                            <img src="/img/region/asia/Pakistan PK.gif">
                            <label for="regNonAsia_28" class="checkbox_name cursor_allowed">
                                <p>Pakistan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_29" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="PW" checked="" disabled="">
                            <img src="/img/region/asia/Palau PW.gif">
                            <label for="regNonAsia_29" class="checkbox_name cursor_allowed">
                                <p>Palau</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_30" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="PS" checked="" disabled="">
                            <img src="/img/region/asia/Palestinian Territories PS.gif">
                            <label for="regNonAsia_30" class="checkbox_name cursor_allowed">
                                <p>Palestinian Territories</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_31" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="PH" checked="" disabled="">
                            <img src="/img/region/asia/Philippines PH.gif">
                            <label for="regNonAsia_31" class="checkbox_name cursor_allowed">
                                <p>Philippines</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_32" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="QA" checked="" disabled="">
                            <img src="/img/region/asia/Qatar QA.gif">
                            <label for="regNonAsia_32" class="checkbox_name cursor_allowed">
                                <p>Qatar</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_33" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="SA" checked="" disabled="">
                            <img src="/img/region/asia/Saudi Arabia SA.gif">
                            <label for="regNonAsia_33" class="checkbox_name cursor_allowed">
                                <p>Saudi Arabia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_34" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="SG" checked="" disabled="">
                            <img src="/img/region/asia/Singapore SG.gif">
                            <label for="regNonAsia_34" class="checkbox_name cursor_allowed">
                                <p>Singapore</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_35" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="KR" checked="" disabled="">
                            <img src="/img/region/asia/South Korea KR.gif">
                            <label for="regNonAsia_35" class="checkbox_name cursor_allowed">
                                <p>South Korea</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_36" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="LK" checked="" disabled="">
                            <img src="/img/region/asia/Sri Lanka LK.gif">
                            <label for="regNonAsia_36" class="checkbox_name cursor_allowed">
                                <p>Sri Lanka</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_37" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="SY" checked="" disabled="">
                            <img src="/img/region/asia/Syrian Arab Republic SY.gif">
                            <label for="regNonAsia_37" class="checkbox_name cursor_allowed">
                                <p>Syrian Arab Republic</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_38" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="TW" checked="" disabled="">
                            <img src="/img/region/asia/Taiwan, Province Of China TW.gif">
                            <label for="regNonAsia_38" class="checkbox_name cursor_allowed">
                                <p>Taiwan, Province Of China</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_39" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="TJ" checked="" disabled="">
                            <img src="/img/region/asia/Tajikistan TJ.gif">
                            <label for="regNonAsia_39" class="checkbox_name cursor_allowed">
                                <p>Tajikistan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_40" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="TH" checked="" disabled="">
                            <img src="/img/region/asia/Thailand TH.gif">
                            <label for="regNonAsia_40" class="checkbox_name cursor_allowed">
                                <p>Thailand</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_41" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="TL" checked="" disabled="">
                            <img src="/img/region/asia/Timor-leste TL.gif">
                            <label for="regNonAsia_41" class="checkbox_name cursor_allowed">
                                <p>Timor-leste</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_42" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="TM" checked="" disabled="">
                            <img src="/img/region/asia/Turkmenistan TM.gif">
                            <label for="regNonAsia_42" class="checkbox_name cursor_allowed">
                                <p>Turkmenistan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_43" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="AE" checked="" disabled="">
                            <img src="/img/region/asia/United Arab Emirates AE.gif">
                            <label for="regNonAsia_43" class="checkbox_name cursor_allowed">
                                <p>United Arab Emirates</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_44" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="UZ" checked="" disabled="">
                            <img src="/img/region/asia/Uzbekistan UZ.gif">
                            <label for="regNonAsia_44" class="checkbox_name cursor_allowed">
                                <p>Uzbekistan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_45" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="VN" checked="" disabled="">
                            <img src="/img/region/asia/Viet Nam VN.gif">
                            <label for="regNonAsia_45" class="checkbox_name cursor_allowed">
                                <p>Viet Nam</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAsia_46" class="checkbox_flag W25 Y25 regAsia regAll cursor_allowed" value="YE" checked="" disabled="">
                            <img src="/img/region/asia/Yemen YE.gif">
                            <label for="regNonAsia_46" class="checkbox_name cursor_allowed">
                                <p>Yemen</p>
                            </label>
                            <br>
                        </div>
                    </div>
                </div>

                <!--ЕВРОПА-->
                <div class="region_list">
                    <div class="elem_name">
                        <h2>Европа</h2>
                    </div>
                    <div class="checkbox_area">
                        <input type="checkbox" name="checkEurope" id="checkEurope" class="checkbox_flag W25 Y25" checked="">
                        <label for="checkEurope" class="checkbox_name">
                            <p>Отметить весь регион</p>
                        </label>
                    </div>
                    <div class="W450 botmarg17">
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][0]" id="regEurope_0" class="checkbox_flag W25 Y25 regEurope regAll" value="AX" checked="">
                            <img src="/img/region/europe/Aland Islands AX.gif">
                            <label for="regEurope_0" class="checkbox_name">
                                <p>Aland Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][1]" id="regEurope_1" class="checkbox_flag W25 Y25 regEurope regAll" value="AL" checked="">
                            <img src="/img/region/europe/Albania AL.gif">
                            <label for="regEurope_1" class="checkbox_name">
                                <p>Albania</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][2]" id="regEurope_2" class="checkbox_flag W25 Y25 regEurope regAll" value="AD" checked="">
                            <img src="/img/region/europe/Andorra AD.gif">
                            <label for="regEurope_2" class="checkbox_name">
                                <p>Andorra</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][3]" id="regEurope_3" class="checkbox_flag W25 Y25 regEurope regAll" value="AM" checked="">
                            <img src="/img/region/europe/Armenia AM.gif">
                            <label for="regEurope_3" class="checkbox_name">
                                <p>Armenia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][4]" id="regEurope_4" class="checkbox_flag W25 Y25 regEurope regAll" value="AT" checked="">
                            <img src="/img/region/europe/Austria AT.gif">
                            <label for="regEurope_4" class="checkbox_name">
                                <p>Austria</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][5]" id="regEurope_5" class="checkbox_flag W25 Y25 regEurope regAll" value="AZ" checked="">
                            <img src="/img/region/europe/Azerbaijan AZ.gif">
                            <label for="regEurope_5" class="checkbox_name">
                                <p>Azerbaijan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][6]" id="regEurope_6" class="checkbox_flag W25 Y25 regEurope regAll" value="BY" checked="">
                            <img src="/img/region/europe/Belarus BY.gif">
                            <label for="regEurope_6" class="checkbox_name">
                                <p>Belarus</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][7]" id="regEurope_7" class="checkbox_flag W25 Y25 regEurope regAll" value="BE" checked="">
                            <img src="/img/region/europe/Belgium BE.gif">
                            <label for="regEurope_7" class="checkbox_name">
                                <p>Belgium</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][8]" id="regEurope_8" class="checkbox_flag W25 Y25 regEurope regAll" value="BA" checked="">
                            <img src="/img/region/europe/Bosnia And Herzegovina BA.gif">
                            <label for="regEurope_8" class="checkbox_name">
                                <p>Bosnia And Herzegovina</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][9]" id="regEurope_9" class="checkbox_flag W25 Y25 regEurope regAll" value="BG" checked="">
                            <img src="/img/region/europe/Bulgaria BG.gif">
                            <label for="regEurope_9" class="checkbox_name">
                                <p>Bulgaria</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][10]" id="regEurope_10" class="checkbox_flag W25 Y25 regEurope regAll" value="HR" checked="">
                            <img src="/img/region/europe/Croatia HR.gif">
                            <label for="regEurope_10" class="checkbox_name">
                                <p>Croatia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][11]" id="regEurope_11" class="checkbox_flag W25 Y25 regEurope regAll" value="CY" checked="">
                            <img src="/img/region/europe/Cyprus CY.gif">
                            <label for="regEurope_11" class="checkbox_name">
                                <p>Cyprus</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][12]" id="regEurope_12" class="checkbox_flag W25 Y25 regEurope regAll" value="CZ" checked="">
                            <img src="/img/region/europe/Czech Republic CZ.gif">
                            <label for="regEurope_12" class="checkbox_name">
                                <p>Czech Republic</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][13]" id="regEurope_13" class="checkbox_flag W25 Y25 regEurope regAll" value="DK" checked="">
                            <img src="/img/region/europe/Denmark DK.gif">
                            <label for="regEurope_13" class="checkbox_name">
                                <p>Denmark</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][14]" id="regEurope_14" class="checkbox_flag W25 Y25 regEurope regAll" value="EE" checked="">
                            <img src="/img/region/europe/Estonia EE.gif">
                            <label for="regEurope_14" class="checkbox_name">
                                <p>Estonia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][15]" id="regEurope_15" class="checkbox_flag W25 Y25 regEurope regAll" value="FO" checked="">
                            <img src="/img/region/europe/Faeroe Islands FO.gif">
                            <label for="regEurope_15" class="checkbox_name">
                                <p>Faeroe Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][16]" id="regEurope_16" class="checkbox_flag W25 Y25 regEurope regAll" value="FI" checked="">
                            <img src="/img/region/europe/Finland FI.gif">
                            <label for="regEurope_16" class="checkbox_name">
                                <p>Finland</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][17]" id="regEurope_17" class="checkbox_flag W25 Y25 regEurope regAll" value="FR" checked="">
                            <img src="/img/region/europe/France FR.gif">
                            <label for="regEurope_17" class="checkbox_name">
                                <p>France</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][18]" id="regEurope_18" class="checkbox_flag W25 Y25 regEurope regAll" value="GE" checked="">
                            <img src="/img/region/europe/Georgia GE.gif">
                            <label for="regEurope_18" class="checkbox_name">
                                <p>Georgia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][19]" id="regEurope_19" class="checkbox_flag W25 Y25 regEurope regAll" value="DE" checked="">
                            <img src="/img/region/europe/Germany DE.gif">
                            <label for="regEurope_19" class="checkbox_name">
                                <p>Germany</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][20]" id="regEurope_20" class="checkbox_flag W25 Y25 regEurope regAll" value="GI" checked="">
                            <img src="/img/region/europe/Gibraltar GI.gif">
                            <label for="regEurope_20" class="checkbox_name">
                                <p>Gibraltar</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][21]" id="regEurope_21" class="checkbox_flag W25 Y25 regEurope regAll" value="GR" checked="">
                            <img src="/img/region/europe/Greece GR.gif">
                            <label for="regEurope_21" class="checkbox_name">
                                <p>Greece</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][22]" id="regEurope_22" class="checkbox_flag W25 Y25 regEurope regAll" value="VA" checked="">
                            <img src="/img/region/europe/Holy See (vatican City State) VA.gif">
                            <label for="regEurope_22" class="checkbox_name">
                                <p>Holy See (vatican City State)</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][23]" id="regEurope_23" class="checkbox_flag W25 Y25 regEurope regAll" value="HU" checked="">
                            <img src="/img/region/europe/Hungary HU.gif">
                            <label for="regEurope_23" class="checkbox_name">
                                <p>Hungary</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][24]" id="regEurope_24" class="checkbox_flag W25 Y25 regEurope regAll" value="IS" checked="">
                            <img src="/img/region/europe/Iceland IS.gif">
                            <label for="regEurope_24" class="checkbox_name">
                                <p>Iceland</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][25]" id="regEurope_25" class="checkbox_flag W25 Y25 regEurope regAll" value="IE" checked="">
                            <img src="/img/region/europe/Ireland IE.gif">
                            <label for="regEurope_25" class="checkbox_name">
                                <p>Ireland</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][26]" id="regEurope_26" class="checkbox_flag W25 Y25 regEurope regAll" value="IT" checked="">
                            <img src="/img/region/europe/Italy IT.gif">
                            <label for="regEurope_26" class="checkbox_name">
                                <p>Italy</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][27]" id="regEurope_27" class="checkbox_flag W25 Y25 regEurope regAll" value="KZ" checked="">
                            <img src="/img/region/europe/Kazakhstan KZ.gif">
                            <label for="regEurope_27" class="checkbox_name">
                                <p>Kazakhstan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][28]" id="regEurope_28" class="checkbox_flag W25 Y25 regEurope regAll" value="LV" checked="">
                            <img src="/img/region/europe/Latvia LV.gif">
                            <label for="regEurope_28" class="checkbox_name">
                                <p>Latvia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][29]" id="regEurope_29" class="checkbox_flag W25 Y25 regEurope regAll" value="LI" checked="">
                            <img src="/img/region/europe/Liechtenstein LI.gif">
                            <label for="regEurope_29" class="checkbox_name">
                                <p>Liechtenstein</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][30]" id="regEurope_30" class="checkbox_flag W25 Y25 regEurope regAll" value="LT" checked="">
                            <img src="/img/region/europe/Lithuania LT.gif">
                            <label for="regEurope_30" class="checkbox_name">
                                <p>Lithuania</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][31]" id="regEurope_31" class="checkbox_flag W25 Y25 regEurope regAll" value="LU" checked="">
                            <img src="/img/region/europe/Luxembourg LU.gif">
                            <label for="regEurope_31" class="checkbox_name">
                                <p>Luxembourg</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][32]" id="regEurope_32" class="checkbox_flag W25 Y25 regEurope regAll" value="MK" checked="">
                            <img src="/img/region/europe/Macedonia MK.gif">
                            <label for="regEurope_32" class="checkbox_name">
                                <p>Macedonia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][33]" id="regEurope_33" class="checkbox_flag W25 Y25 regEurope regAll" value="MT" checked="">
                            <img src="/img/region/europe/Malta MT.gif">
                            <label for="regEurope_33" class="checkbox_name">
                                <p>Malta</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][34]" id="regEurope_34" class="checkbox_flag W25 Y25 regEurope regAll" value="MD" checked="">
                            <img src="/img/region/europe/Moldova MD.gif">
                            <label for="regEurope_34" class="checkbox_name">
                                <p>Moldova</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][35]" id="regEurope_35" class="checkbox_flag W25 Y25 regEurope regAll" value="MC" checked="">
                            <img src="/img/region/europe/Monaco MC.gif">
                            <label for="regEurope_35" class="checkbox_name">
                                <p>Monaco</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][36]" id="regEurope_36" class="checkbox_flag W25 Y25 regEurope regAll" value="NL" checked="">
                            <img src="/img/region/europe/Netherlands NL.gif">
                            <label for="regEurope_36" class="checkbox_name">
                                <p>Netherlands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][37]" id="regEurope_37" class="checkbox_flag W25 Y25 regEurope regAll" value="NO" checked="">
                            <img src="/img/region/europe/Norway NO.gif">
                            <label for="regEurope_37" class="checkbox_name">
                                <p>Norway</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][38]" id="regEurope_38" class="checkbox_flag W25 Y25 regEurope regAll" value="PL" checked="">
                            <img src="/img/region/europe/Poland PL.gif">
                            <label for="regEurope_38" class="checkbox_name">
                                <p>Poland</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][39]" id="regEurope_39" class="checkbox_flag W25 Y25 regEurope regAll" value="PT" checked="">
                            <img src="/img/region/europe/Portugal PT.gif">
                            <label for="regEurope_39" class="checkbox_name">
                                <p>Portugal</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][40]" id="regEurope_40" class="checkbox_flag W25 Y25 regEurope regAll" value="RO" checked="">
                            <img src="/img/region/europe/Romania RO.gif">
                            <label for="regEurope_40" class="checkbox_name">
                                <p>Romania</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][41]" id="regEurope_41" class="checkbox_flag W25 Y25 regEurope regAll" value="RU" checked="">
                            <img src="/img/region/europe/Russian Federation RU.gif">
                            <label for="regEurope_41" class="checkbox_name">
                                <p>Russian Federation</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][42]" id="regEurope_42" class="checkbox_flag W25 Y25 regEurope regAll" value="SH" checked="">
                            <img src="/img/region/europe/Saint Helena SH.gif">
                            <label for="regEurope_42" class="checkbox_name">
                                <p>Saint Helena</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][43]" id="regEurope_43" class="checkbox_flag W25 Y25 regEurope regAll" value="SM" checked="">
                            <img src="/img/region/europe/San Marino SM.gif">
                            <label for="regEurope_43" class="checkbox_name">
                                <p>San Marino</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][44]" id="regEurope_44" class="checkbox_flag W25 Y25 regEurope regAll" value="CS" checked="">
                            <img src="/img/region/europe/Serbia And Montenegro CS.gif">
                            <label for="regEurope_44" class="checkbox_name">
                                <p>Serbia And Montenegro</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][45]" id="regEurope_45" class="checkbox_flag W25 Y25 regEurope regAll" value="SK" checked="">
                            <img src="/img/region/europe/Slovakia SK.gif">
                            <label for="regEurope_45" class="checkbox_name">
                                <p>Slovakia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][46]" id="regEurope_46" class="checkbox_flag W25 Y25 regEurope regAll" value="SI" checked="">
                            <img src="/img/region/europe/Slovenia SI.gif">
                            <label for="regEurope_46" class="checkbox_name">
                                <p>Slovenia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][47]" id="regEurope_47" class="checkbox_flag W25 Y25 regEurope regAll" value="ES" checked="">
                            <img src="/img/region/europe/Spain ES.gif">
                            <label for="regEurope_47" class="checkbox_name">
                                <p>Spain</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][48]" id="regEurope_48" class="checkbox_flag W25 Y25 regEurope regAll" value="SJ" checked="">
                            <img src="/img/region/europe/Svalbard And Jan Mayen SJ.gif">
                            <label for="regEurope_48" class="checkbox_name">
                                <p>Svalbard And Jan Mayen</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][49]" id="regEurope_49" class="checkbox_flag W25 Y25 regEurope regAll" value="SE" checked="">
                            <img src="/img/region/europe/Sweden SE.gif">
                            <label for="regEurope_49" class="checkbox_name">
                                <p>Sweden</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][50]" id="regEurope_50" class="checkbox_flag W25 Y25 regEurope regAll" value="CH" checked="">
                            <img src="/img/region/europe/Switzerland CH.gif">
                            <label for="regEurope_50" class="checkbox_name">
                                <p>Switzerland</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][51]" id="regEurope_51" class="checkbox_flag W25 Y25 regEurope regAll" value="TR" checked="">
                            <img src="/img/region/europe/Turkey TR.gif">
                            <label for="regEurope_51" class="checkbox_name">
                                <p>Turkey</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][52]" id="regEurope_52" class="checkbox_flag W25 Y25 regEurope regAll" value="UA" checked="">
                            <img src="/img/region/europe/Ukraine UA.gif">
                            <label for="regEurope_52" class="checkbox_name">
                                <p>Ukraine</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[32][53]" id="regEurope_53" class="checkbox_flag W25 Y25 regEurope regAll" value="GB" checked="">
                            <img src="/img/region/europe/United Kingdom GB.gif">
                            <label for="regEurope_53" class="checkbox_name">
                                <p>United Kingdom</p>
                            </label>
                            <br>
                        </div>
                        <script>
                            $(document).ready(function () {
                                $("#checkEurope").click(function () {
                                    if (!$("#checkEurope").is(":checked"))
                                        $(".regEurope").removeAttr("checked");
                                    else
                                        $(".regEurope").attr("checked", "checked");
                                });
                            });
                        </script>
                    </div>
                    <div class="W450 botmarg17" style="display: none;">
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_0" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="AX" checked="" disabled="">
                            <img src="/img/region/europe/Aland Islands AX.gif">
                            <label for="regNonEurope_0" class="checkbox_name cursor_allowed">
                                <p>Aland Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_1" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="AL" checked="" disabled="">
                            <img src="/img/region/europe/Albania AL.gif">
                            <label for="regNonEurope_1" class="checkbox_name cursor_allowed">
                                <p>Albania</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_2" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="AD" checked="" disabled="">
                            <img src="/img/region/europe/Andorra AD.gif">
                            <label for="regNonEurope_2" class="checkbox_name cursor_allowed">
                                <p>Andorra</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_3" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="AM" checked="" disabled="">
                            <img src="/img/region/europe/Armenia AM.gif">
                            <label for="regNonEurope_3" class="checkbox_name cursor_allowed">
                                <p>Armenia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_4" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="AT" checked="" disabled="">
                            <img src="/img/region/europe/Austria AT.gif">
                            <label for="regNonEurope_4" class="checkbox_name cursor_allowed">
                                <p>Austria</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_5" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="AZ" checked="" disabled="">
                            <img src="/img/region/europe/Azerbaijan AZ.gif">
                            <label for="regNonEurope_5" class="checkbox_name cursor_allowed">
                                <p>Azerbaijan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_6" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="BY" checked="" disabled="">
                            <img src="/img/region/europe/Belarus BY.gif">
                            <label for="regNonEurope_6" class="checkbox_name cursor_allowed">
                                <p>Belarus</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_7" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="BE" checked="" disabled="">
                            <img src="/img/region/europe/Belgium BE.gif">
                            <label for="regNonEurope_7" class="checkbox_name cursor_allowed">
                                <p>Belgium</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_8" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="BA" checked="" disabled="">
                            <img src="/img/region/europe/Bosnia And Herzegovina BA.gif">
                            <label for="regNonEurope_8" class="checkbox_name cursor_allowed">
                                <p>Bosnia And Herzegovina</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_9" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="BG" checked="" disabled="">
                            <img src="/img/region/europe/Bulgaria BG.gif">
                            <label for="regNonEurope_9" class="checkbox_name cursor_allowed">
                                <p>Bulgaria</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_10" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="HR" checked="" disabled="">
                            <img src="/img/region/europe/Croatia HR.gif">
                            <label for="regNonEurope_10" class="checkbox_name cursor_allowed">
                                <p>Croatia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_11" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="CY" checked="" disabled="">
                            <img src="/img/region/europe/Cyprus CY.gif">
                            <label for="regNonEurope_11" class="checkbox_name cursor_allowed">
                                <p>Cyprus</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_12" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="CZ" checked="" disabled="">
                            <img src="/img/region/europe/Czech Republic CZ.gif">
                            <label for="regNonEurope_12" class="checkbox_name cursor_allowed">
                                <p>Czech Republic</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_13" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="DK" checked="" disabled="">
                            <img src="/img/region/europe/Denmark DK.gif">
                            <label for="regNonEurope_13" class="checkbox_name cursor_allowed">
                                <p>Denmark</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_14" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="EE" checked="" disabled="">
                            <img src="/img/region/europe/Estonia EE.gif">
                            <label for="regNonEurope_14" class="checkbox_name cursor_allowed">
                                <p>Estonia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_15" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="FO" checked="" disabled="">
                            <img src="/img/region/europe/Faeroe Islands FO.gif">
                            <label for="regNonEurope_15" class="checkbox_name cursor_allowed">
                                <p>Faeroe Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_16" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="FI" checked="" disabled="">
                            <img src="/img/region/europe/Finland FI.gif">
                            <label for="regNonEurope_16" class="checkbox_name cursor_allowed">
                                <p>Finland</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_17" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="FR" checked="" disabled="">
                            <img src="/img/region/europe/France FR.gif">
                            <label for="regNonEurope_17" class="checkbox_name cursor_allowed">
                                <p>France</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_18" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="GE" checked="" disabled="">
                            <img src="/img/region/europe/Georgia GE.gif">
                            <label for="regNonEurope_18" class="checkbox_name cursor_allowed">
                                <p>Georgia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_19" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="DE" checked="" disabled="">
                            <img src="/img/region/europe/Germany DE.gif">
                            <label for="regNonEurope_19" class="checkbox_name cursor_allowed">
                                <p>Germany</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_20" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="GI" checked="" disabled="">
                            <img src="/img/region/europe/Gibraltar GI.gif">
                            <label for="regNonEurope_20" class="checkbox_name cursor_allowed">
                                <p>Gibraltar</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_21" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="GR" checked="" disabled="">
                            <img src="/img/region/europe/Greece GR.gif">
                            <label for="regNonEurope_21" class="checkbox_name cursor_allowed">
                                <p>Greece</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_22" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="VA" checked="" disabled="">
                            <img src="/img/region/europe/Holy See (vatican City State) VA.gif">
                            <label for="regNonEurope_22" class="checkbox_name cursor_allowed">
                                <p>Holy See (vatican City State)</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_23" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="HU" checked="" disabled="">
                            <img src="/img/region/europe/Hungary HU.gif">
                            <label for="regNonEurope_23" class="checkbox_name cursor_allowed">
                                <p>Hungary</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_24" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="IS" checked="" disabled="">
                            <img src="/img/region/europe/Iceland IS.gif">
                            <label for="regNonEurope_24" class="checkbox_name cursor_allowed">
                                <p>Iceland</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_25" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="IE" checked="" disabled="">
                            <img src="/img/region/europe/Ireland IE.gif">
                            <label for="regNonEurope_25" class="checkbox_name cursor_allowed">
                                <p>Ireland</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_26" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="IT" checked="" disabled="">
                            <img src="/img/region/europe/Italy IT.gif">
                            <label for="regNonEurope_26" class="checkbox_name cursor_allowed">
                                <p>Italy</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_27" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="KZ" checked="" disabled="">
                            <img src="/img/region/europe/Kazakhstan KZ.gif">
                            <label for="regNonEurope_27" class="checkbox_name cursor_allowed">
                                <p>Kazakhstan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_28" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="LV" checked="" disabled="">
                            <img src="/img/region/europe/Latvia LV.gif">
                            <label for="regNonEurope_28" class="checkbox_name cursor_allowed">
                                <p>Latvia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_29" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="LI" checked="" disabled="">
                            <img src="/img/region/europe/Liechtenstein LI.gif">
                            <label for="regNonEurope_29" class="checkbox_name cursor_allowed">
                                <p>Liechtenstein</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_30" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="LT" checked="" disabled="">
                            <img src="/img/region/europe/Lithuania LT.gif">
                            <label for="regNonEurope_30" class="checkbox_name cursor_allowed">
                                <p>Lithuania</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_31" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="LU" checked="" disabled="">
                            <img src="/img/region/europe/Luxembourg LU.gif">
                            <label for="regNonEurope_31" class="checkbox_name cursor_allowed">
                                <p>Luxembourg</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_32" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="MK" checked="" disabled="">
                            <img src="/img/region/europe/Macedonia MK.gif">
                            <label for="regNonEurope_32" class="checkbox_name cursor_allowed">
                                <p>Macedonia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_33" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="MT" checked="" disabled="">
                            <img src="/img/region/europe/Malta MT.gif">
                            <label for="regNonEurope_33" class="checkbox_name cursor_allowed">
                                <p>Malta</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_34" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="MD" checked="" disabled="">
                            <img src="/img/region/europe/Moldova MD.gif">
                            <label for="regNonEurope_34" class="checkbox_name cursor_allowed">
                                <p>Moldova</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_35" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="MC" checked="" disabled="">
                            <img src="/img/region/europe/Monaco MC.gif">
                            <label for="regNonEurope_35" class="checkbox_name cursor_allowed">
                                <p>Monaco</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_36" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="NL" checked="" disabled="">
                            <img src="/img/region/europe/Netherlands NL.gif">
                            <label for="regNonEurope_36" class="checkbox_name cursor_allowed">
                                <p>Netherlands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_37" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="NO" checked="" disabled="">
                            <img src="/img/region/europe/Norway NO.gif">
                            <label for="regNonEurope_37" class="checkbox_name cursor_allowed">
                                <p>Norway</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_38" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="PL" checked="" disabled="">
                            <img src="/img/region/europe/Poland PL.gif">
                            <label for="regNonEurope_38" class="checkbox_name cursor_allowed">
                                <p>Poland</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_39" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="PT" checked="" disabled="">
                            <img src="/img/region/europe/Portugal PT.gif">
                            <label for="regNonEurope_39" class="checkbox_name cursor_allowed">
                                <p>Portugal</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_40" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="RO" checked="" disabled="">
                            <img src="/img/region/europe/Romania RO.gif">
                            <label for="regNonEurope_40" class="checkbox_name cursor_allowed">
                                <p>Romania</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_41" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="RU" checked="" disabled="">
                            <img src="/img/region/europe/Russian Federation RU.gif">
                            <label for="regNonEurope_41" class="checkbox_name cursor_allowed">
                                <p>Russian Federation</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_42" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="SH" checked="" disabled="">
                            <img src="/img/region/europe/Saint Helena SH.gif">
                            <label for="regNonEurope_42" class="checkbox_name cursor_allowed">
                                <p>Saint Helena</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_43" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="SM" checked="" disabled="">
                            <img src="/img/region/europe/San Marino SM.gif">
                            <label for="regNonEurope_43" class="checkbox_name cursor_allowed">
                                <p>San Marino</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_44" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="CS" checked="" disabled="">
                            <img src="/img/region/europe/Serbia And Montenegro CS.gif">
                            <label for="regNonEurope_44" class="checkbox_name cursor_allowed">
                                <p>Serbia And Montenegro</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_45" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="SK" checked="" disabled="">
                            <img src="/img/region/europe/Slovakia SK.gif">
                            <label for="regNonEurope_45" class="checkbox_name cursor_allowed">
                                <p>Slovakia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_46" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="SI" checked="" disabled="">
                            <img src="/img/region/europe/Slovenia SI.gif">
                            <label for="regNonEurope_46" class="checkbox_name cursor_allowed">
                                <p>Slovenia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_47" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="ES" checked="" disabled="">
                            <img src="/img/region/europe/Spain ES.gif">
                            <label for="regNonEurope_47" class="checkbox_name cursor_allowed">
                                <p>Spain</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_48" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="SJ" checked="" disabled="">
                            <img src="/img/region/europe/Svalbard And Jan Mayen SJ.gif">
                            <label for="regNonEurope_48" class="checkbox_name cursor_allowed">
                                <p>Svalbard And Jan Mayen</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_49" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="SE" checked="" disabled="">
                            <img src="/img/region/europe/Sweden SE.gif">
                            <label for="regNonEurope_49" class="checkbox_name cursor_allowed">
                                <p>Sweden</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_50" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="CH" checked="" disabled="">
                            <img src="/img/region/europe/Switzerland CH.gif">
                            <label for="regNonEurope_50" class="checkbox_name cursor_allowed">
                                <p>Switzerland</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_51" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="TR" checked="" disabled="">
                            <img src="/img/region/europe/Turkey TR.gif">
                            <label for="regNonEurope_51" class="checkbox_name cursor_allowed">
                                <p>Turkey</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_52" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="UA" checked="" disabled="">
                            <img src="/img/region/europe/Ukraine UA.gif">
                            <label for="regNonEurope_52" class="checkbox_name cursor_allowed">
                                <p>Ukraine</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonEurope_53" class="checkbox_flag W25 Y25 regEurope regAll cursor_allowed" value="GB" checked="" disabled="">
                            <img src="/img/region/europe/United Kingdom GB.gif">
                            <label for="regNonEurope_53" class="checkbox_name cursor_allowed">
                                <p>United Kingdom</p>
                            </label>
                            <br>
                        </div>
                    </div>
                </div>

                <!--АФРИКА-->
                <div class="region_list">
                    <div class="elem_name">
                        <h2>Африка</h2>
                    </div>
                    <div class="checkbox_area">
                        <input type="checkbox" name="CheckAfrica" id="CheckAfrica" class="checkbox_flag W25 Y25" checked="">
                        <label for="CheckAfrica" class="checkbox_name">
                            <p>Отметить весь регион</p>
                        </label>
                    </div>
                    <div class="W450 botmarg17">
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][0]" id="regAfrica_0" class="checkbox_flag W25 Y25 regAfrica regAll" value="DZ" checked="">
                            <img src="/img/region/africa/Algeria DZ.gif">
                            <label for="regAfrica_0" class="checkbox_name">
                                <p>Algeria</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][1]" id="regAfrica_1" class="checkbox_flag W25 Y25 regAfrica regAll" value="AO" checked="">
                            <img src="/img/region/africa/Angola AO.gif">
                            <label for="regAfrica_1" class="checkbox_name">
                                <p>Angola</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][2]" id="regAfrica_2" class="checkbox_flag W25 Y25 regAfrica regAll" value="BJ" checked="">
                            <img src="/img/region/africa/Benin BJ.gif">
                            <label for="regAfrica_2" class="checkbox_name">
                                <p>Benin</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][3]" id="regAfrica_3" class="checkbox_flag W25 Y25 regAfrica regAll" value="BW" checked="">
                            <img src="/img/region/africa/Botswana BW.gif">
                            <label for="regAfrica_3" class="checkbox_name">
                                <p>Botswana</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][4]" id="regAfrica_4" class="checkbox_flag W25 Y25 regAfrica regAll" value="BF" checked="">
                            <img src="/img/region/africa/Burkina Faso BF.gif">
                            <label for="regAfrica_4" class="checkbox_name">
                                <p>Burkina Faso</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][5]" id="regAfrica_5" class="checkbox_flag W25 Y25 regAfrica regAll" value="BI" checked="">
                            <img src="/img/region/africa/Burundi BI.gif">
                            <label for="regAfrica_5" class="checkbox_name">
                                <p>Burundi</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][6]" id="regAfrica_6" class="checkbox_flag W25 Y25 regAfrica regAll" value="CM" checked="">
                            <img src="/img/region/africa/Cameroon CM.gif">
                            <label for="regAfrica_6" class="checkbox_name">
                                <p>Cameroon</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][7]" id="regAfrica_7" class="checkbox_flag W25 Y25 regAfrica regAll" value="CV" checked="">
                            <img src="/img/region/africa/Cape Verde CV.gif">
                            <label for="regAfrica_7" class="checkbox_name">
                                <p>Cape Verde</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][8]" id="regAfrica_8" class="checkbox_flag W25 Y25 regAfrica regAll" value="CF" checked="">
                            <img src="/img/region/africa/Central African Republic CF.gif">
                            <label for="regAfrica_8" class="checkbox_name">
                                <p>Central African Republic</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][9]" id="regAfrica_9" class="checkbox_flag W25 Y25 regAfrica regAll" value="TD" checked="">
                            <img src="/img/region/africa/Chad TD.gif">
                            <label for="regAfrica_9" class="checkbox_name">
                                <p>Chad</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][10]" id="regAfrica_10" class="checkbox_flag W25 Y25 regAfrica regAll" value="KM" checked="">
                            <img src="/img/region/africa/Comoros KM.gif">
                            <label for="regAfrica_10" class="checkbox_name">
                                <p>Comoros</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][11]" id="regAfrica_11" class="checkbox_flag W25 Y25 regAfrica regAll" value="CI" checked="">
                            <img src="/img/region/africa/Cote Ivoire CI.gif">
                            <label for="regAfrica_11" class="checkbox_name">
                                <p>Cote Ivoire</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][12]" id="regAfrica_12" class="checkbox_flag W25 Y25 regAfrica regAll" value="DJ" checked="">
                            <img src="/img/region/africa/Djibouti DJ.gif">
                            <label for="regAfrica_12" class="checkbox_name">
                                <p>Djibouti</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][13]" id="regAfrica_13" class="checkbox_flag W25 Y25 regAfrica regAll" value="EG" checked="">
                            <img src="/img/region/africa/Egypt EG.gif">
                            <label for="regAfrica_13" class="checkbox_name">
                                <p>Egypt</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][14]" id="regAfrica_14" class="checkbox_flag W25 Y25 regAfrica regAll" value="GQ" checked="">
                            <img src="/img/region/africa/Equatorial Guinea GQ.gif">
                            <label for="regAfrica_14" class="checkbox_name">
                                <p>Equatorial Guinea</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][15]" id="regAfrica_15" class="checkbox_flag W25 Y25 regAfrica regAll" value="ER" checked="">
                            <img src="/img/region/africa/Eritrea ER.gif">
                            <label for="regAfrica_15" class="checkbox_name">
                                <p>Eritrea</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][16]" id="regAfrica_16" class="checkbox_flag W25 Y25 regAfrica regAll" value="ET" checked="">
                            <img src="/img/region/africa/Ethiopia ET.gif">
                            <label for="regAfrica_16" class="checkbox_name">
                                <p>Ethiopia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][17]" id="regAfrica_17" class="checkbox_flag W25 Y25 regAfrica regAll" value="GA" checked="">
                            <img src="/img/region/africa/Gabon GA.gif">
                            <label for="regAfrica_17" class="checkbox_name">
                                <p>Gabon</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][18]" id="regAfrica_18" class="checkbox_flag W25 Y25 regAfrica regAll" value="GM" checked="">
                            <img src="/img/region/africa/Gambia, The GM.gif">
                            <label for="regAfrica_18" class="checkbox_name">
                                <p>Gambia, The</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][19]" id="regAfrica_19" class="checkbox_flag W25 Y25 regAfrica regAll" value="GH" checked="">
                            <img src="/img/region/africa/Ghana GH.gif">
                            <label for="regAfrica_19" class="checkbox_name">
                                <p>Ghana</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][20]" id="regAfrica_20" class="checkbox_flag W25 Y25 regAfrica regAll" value="GN" checked="">
                            <img src="/img/region/africa/Guinea GN.gif">
                            <label for="regAfrica_20" class="checkbox_name">
                                <p>Guinea</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][21]" id="regAfrica_21" class="checkbox_flag W25 Y25 regAfrica regAll" value="GW" checked="">
                            <img src="/img/region/africa/Guinea-bissau GW.gif">
                            <label for="regAfrica_21" class="checkbox_name">
                                <p>Guinea-bissau</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][22]" id="regAfrica_22" class="checkbox_flag W25 Y25 regAfrica regAll" value="KE" checked="">
                            <img src="/img/region/africa/Kenya KE.gif">
                            <label for="regAfrica_22" class="checkbox_name">
                                <p>Kenya</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][23]" id="regAfrica_23" class="checkbox_flag W25 Y25 regAfrica regAll" value="LS" checked="">
                            <img src="/img/region/africa/Lesotho LS.gif">
                            <label for="regAfrica_23" class="checkbox_name">
                                <p>Lesotho</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][24]" id="regAfrica_24" class="checkbox_flag W25 Y25 regAfrica regAll" value="LR" checked="">
                            <img src="/img/region/africa/Liberia LR.gif">
                            <label for="regAfrica_24" class="checkbox_name">
                                <p>Liberia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][25]" id="regAfrica_25" class="checkbox_flag W25 Y25 regAfrica regAll" value="LY" checked="">
                            <img src="/img/region/africa/Libya LY.gif">
                            <label for="regAfrica_25" class="checkbox_name">
                                <p>Libya</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][26]" id="regAfrica_26" class="checkbox_flag W25 Y25 regAfrica regAll" value="MG" checked="">
                            <img src="/img/region/africa/Madagascar MG.gif">
                            <label for="regAfrica_26" class="checkbox_name">
                                <p>Madagascar</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][27]" id="regAfrica_27" class="checkbox_flag W25 Y25 regAfrica regAll" value="MW" checked="">
                            <img src="/img/region/africa/Malawi MW.gif">
                            <label for="regAfrica_27" class="checkbox_name">
                                <p>Malawi</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][28]" id="regAfrica_28" class="checkbox_flag W25 Y25 regAfrica regAll" value="ML" checked="">
                            <img src="/img/region/africa/Mali ML.gif">
                            <label for="regAfrica_28" class="checkbox_name">
                                <p>Mali</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][29]" id="regAfrica_29" class="checkbox_flag W25 Y25 regAfrica regAll" value="MR" checked="">
                            <img src="/img/region/africa/Mauritania MR.gif">
                            <label for="regAfrica_29" class="checkbox_name">
                                <p>Mauritania</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][30]" id="regAfrica_30" class="checkbox_flag W25 Y25 regAfrica regAll" value="MU" checked="">
                            <img src="/img/region/africa/Mauritius MU.gif">
                            <label for="regAfrica_30" class="checkbox_name">
                                <p>Mauritius</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][31]" id="regAfrica_31" class="checkbox_flag W25 Y25 regAfrica regAll" value="YT" checked="">
                            <img src="/img/region/africa/Mayotte YT.gif">
                            <label for="regAfrica_31" class="checkbox_name">
                                <p>Mayotte</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][32]" id="regAfrica_32" class="checkbox_flag W25 Y25 regAfrica regAll" value="MA" checked="">
                            <img src="/img/region/africa/Morocco MA.gif">
                            <label for="regAfrica_32" class="checkbox_name">
                                <p>Morocco</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][33]" id="regAfrica_33" class="checkbox_flag W25 Y25 regAfrica regAll" value="MZ" checked="">
                            <img src="/img/region/africa/Mozambique MZ.gif">
                            <label for="regAfrica_33" class="checkbox_name">
                                <p>Mozambique</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][34]" id="regAfrica_34" class="checkbox_flag W25 Y25 regAfrica regAll" value="NA" checked="">
                            <img src="/img/region/africa/Namibia NA.gif">
                            <label for="regAfrica_34" class="checkbox_name">
                                <p>Namibia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][35]" id="regAfrica_35" class="checkbox_flag W25 Y25 regAfrica regAll" value="NE" checked="">
                            <img src="/img/region/africa/Niger NE.gif">
                            <label for="regAfrica_35" class="checkbox_name">
                                <p>Niger</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][36]" id="regAfrica_36" class="checkbox_flag W25 Y25 regAfrica regAll" value="NG" checked="">
                            <img src="/img/region/africa/Nigeria NG.gif">
                            <label for="regAfrica_36" class="checkbox_name">
                                <p>Nigeria</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][37]" id="regAfrica_37" class="checkbox_flag W25 Y25 regAfrica regAll" value="CG" checked="">
                            <img src="/img/region/africa/Republic Of Congo CG.gif">
                            <label for="regAfrica_37" class="checkbox_name">
                                <p>Republic Of Congo</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][38]" id="regAfrica_38" class="checkbox_flag W25 Y25 regAfrica regAll" value="RE" checked="">
                            <img src="/img/region/africa/Reunion RE.gif">
                            <label for="regAfrica_38" class="checkbox_name">
                                <p>Reunion</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][39]" id="regAfrica_39" class="checkbox_flag W25 Y25 regAfrica regAll" value="RW" checked="">
                            <img src="/img/region/africa/Rwanda RW.gif">
                            <label for="regAfrica_39" class="checkbox_name">
                                <p>Rwanda</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][40]" id="regAfrica_40" class="checkbox_flag W25 Y25 regAfrica regAll" value="ST" checked="">
                            <img src="/img/region/africa/Sao Tome And Principe ST.gif">
                            <label for="regAfrica_40" class="checkbox_name">
                                <p>Sao Tome And Principe</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][41]" id="regAfrica_41" class="checkbox_flag W25 Y25 regAfrica regAll" value="SN" checked="">
                            <img src="/img/region/africa/Senegal SN.gif">
                            <label for="regAfrica_41" class="checkbox_name">
                                <p>Senegal</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][42]" id="regAfrica_42" class="checkbox_flag W25 Y25 regAfrica regAll" value="SC" checked="">
                            <img src="/img/region/africa/Seychelles SC.gif">
                            <label for="regAfrica_42" class="checkbox_name">
                                <p>Seychelles</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][43]" id="regAfrica_43" class="checkbox_flag W25 Y25 regAfrica regAll" value="SL" checked="">
                            <img src="/img/region/africa/Sierra Leone SL.gif">
                            <label for="regAfrica_43" class="checkbox_name">
                                <p>Sierra Leone</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][44]" id="regAfrica_44" class="checkbox_flag W25 Y25 regAfrica regAll" value="SO" checked="">
                            <img src="/img/region/africa/Somalia SO.gif">
                            <label for="regAfrica_44" class="checkbox_name">
                                <p>Somalia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][45]" id="regAfrica_45" class="checkbox_flag W25 Y25 regAfrica regAll" value="ZA" checked="">
                            <img src="/img/region/africa/South Africa ZA.gif">
                            <label for="regAfrica_45" class="checkbox_name">
                                <p>South Africa</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][46]" id="regAfrica_46" class="checkbox_flag W25 Y25 regAfrica regAll" value="SD" checked="">
                            <img src="/img/region/africa/Sudan SD.gif">
                            <label for="regAfrica_46" class="checkbox_name">
                                <p>Sudan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][47]" id="regAfrica_47" class="checkbox_flag W25 Y25 regAfrica regAll" value="SZ" checked="">
                            <img src="/img/region/africa/Swaziland SZ.gif">
                            <label for="regAfrica_47" class="checkbox_name">
                                <p>Swaziland</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][48]" id="regAfrica_48" class="checkbox_flag W25 Y25 regAfrica regAll" value="TZ" checked="">
                            <img src="/img/region/africa/Tanzania TZ.gif">
                            <label for="regAfrica_48" class="checkbox_name">
                                <p>Tanzania</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][49]" id="regAfrica_49" class="checkbox_flag W25 Y25 regAfrica regAll" value="CD" checked="">
                            <img src="/img/region/africa/The Democratic Republic Of The Congo CD.gif">
                            <label for="regAfrica_49" class="checkbox_name">
                                <p>The Democratic Republic Of The Congo</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][50]" id="regAfrica_50" class="checkbox_flag W25 Y25 regAfrica regAll" value="TG" checked="">
                            <img src="/img/region/africa/Togo TG.gif">
                            <label for="regAfrica_50" class="checkbox_name">
                                <p>Togo</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][51]" id="regAfrica_51" class="checkbox_flag W25 Y25 regAfrica regAll" value="TN" checked="">
                            <img src="/img/region/africa/Tunisia TN.gif">
                            <label for="regAfrica_51" class="checkbox_name">
                                <p>Tunisia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][52]" id="regAfrica_52" class="checkbox_flag W25 Y25 regAfrica regAll" value="UG" checked="">
                            <img src="/img/region/africa/Uganda UG.gif">
                            <label for="regAfrica_52" class="checkbox_name">
                                <p>Uganda</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][53]" id="regAfrica_53" class="checkbox_flag W25 Y25 regAfrica regAll" value="EH" checked="">
                            <img src="/img/region/africa/Western Sahara EH.gif">
                            <label for="regAfrica_53" class="checkbox_name">
                                <p>Western Sahara</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][54]" id="regAfrica_54" class="checkbox_flag W25 Y25 regAfrica regAll" value="ZM" checked="">
                            <img src="/img/region/africa/Zambia ZM.gif">
                            <label for="regAfrica_54" class="checkbox_name">
                                <p>Zambia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[33][55]" id="regAfrica_55" class="checkbox_flag W25 Y25 regAfrica regAll" value="ZW" checked="">
                            <img src="/img/region/africa/Zimbabwe ZW.gif">
                            <label for="regAfrica_55" class="checkbox_name">
                                <p>Zimbabwe</p>
                            </label>
                            <br>
                        </div>
                        <script>
                            $(document).ready(function () {
                                $("#CheckAfrica").click(function () {
                                    if (!$("#CheckAfrica").is(":checked"))
                                        $(".regAfrica").removeAttr("checked");
                                    else
                                        $(".regAfrica").attr("checked", "checked");
                                });
                            });
                        </script>
                    </div>
                    <div class="W450 botmarg17" style="display: none;">
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_0" class="checkbox_flag W25 Y25 cursor_allowed" value="DZ" checked="" disabled="">
                            <img src="/img/region/africa/Algeria DZ.gif">
                            <label for="regNonAfrica_0" class="checkbox_name cursor_allowed">
                                <p>Algeria</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_1" class="checkbox_flag W25 Y25 cursor_allowed" value="AO" checked="" disabled="">
                            <img src="/img/region/africa/Angola AO.gif">
                            <label for="regNonAfrica_1" class="checkbox_name cursor_allowed">
                                <p>Angola</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_2" class="checkbox_flag W25 Y25 cursor_allowed" value="BJ" checked="" disabled="">
                            <img src="/img/region/africa/Benin BJ.gif">
                            <label for="regNonAfrica_2" class="checkbox_name cursor_allowed">
                                <p>Benin</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_3" class="checkbox_flag W25 Y25 cursor_allowed" value="BW" checked="" disabled="">
                            <img src="/img/region/africa/Botswana BW.gif">
                            <label for="regNonAfrica_3" class="checkbox_name cursor_allowed">
                                <p>Botswana</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_4" class="checkbox_flag W25 Y25 cursor_allowed" value="BF" checked="" disabled="">
                            <img src="/img/region/africa/Burkina Faso BF.gif">
                            <label for="regNonAfrica_4" class="checkbox_name cursor_allowed">
                                <p>Burkina Faso</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_5" class="checkbox_flag W25 Y25 cursor_allowed" value="BI" checked="" disabled="">
                            <img src="/img/region/africa/Burundi BI.gif">
                            <label for="regNonAfrica_5" class="checkbox_name cursor_allowed">
                                <p>Burundi</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_6" class="checkbox_flag W25 Y25 cursor_allowed" value="CM" checked="" disabled="">
                            <img src="/img/region/africa/Cameroon CM.gif">
                            <label for="regNonAfrica_6" class="checkbox_name cursor_allowed">
                                <p>Cameroon</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_7" class="checkbox_flag W25 Y25 cursor_allowed" value="CV" checked="" disabled="">
                            <img src="/img/region/africa/Cape Verde CV.gif">
                            <label for="regNonAfrica_7" class="checkbox_name cursor_allowed">
                                <p>Cape Verde</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_8" class="checkbox_flag W25 Y25 cursor_allowed" value="CF" checked="" disabled="">
                            <img src="/img/region/africa/Central African Republic CF.gif">
                            <label for="regNonAfrica_8" class="checkbox_name cursor_allowed">
                                <p>Central African Republic</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_9" class="checkbox_flag W25 Y25 cursor_allowed" value="TD" checked="" disabled="">
                            <img src="/img/region/africa/Chad TD.gif">
                            <label for="regNonAfrica_9" class="checkbox_name cursor_allowed">
                                <p>Chad</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_10" class="checkbox_flag W25 Y25 cursor_allowed" value="KM" checked="" disabled="">
                            <img src="/img/region/africa/Comoros KM.gif">
                            <label for="regNonAfrica_10" class="checkbox_name cursor_allowed">
                                <p>Comoros</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_11" class="checkbox_flag W25 Y25 cursor_allowed" value="CI" checked="" disabled="">
                            <img src="/img/region/africa/Cote Ivoire CI.gif">
                            <label for="regNonAfrica_11" class="checkbox_name cursor_allowed">
                                <p>Cote Ivoire</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_12" class="checkbox_flag W25 Y25 cursor_allowed" value="DJ" checked="" disabled="">
                            <img src="/img/region/africa/Djibouti DJ.gif">
                            <label for="regNonAfrica_12" class="checkbox_name cursor_allowed">
                                <p>Djibouti</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_13" class="checkbox_flag W25 Y25 cursor_allowed" value="EG" checked="" disabled="">
                            <img src="/img/region/africa/Egypt EG.gif">
                            <label for="regNonAfrica_13" class="checkbox_name cursor_allowed">
                                <p>Egypt</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_14" class="checkbox_flag W25 Y25 cursor_allowed" value="GQ" checked="" disabled="">
                            <img src="/img/region/africa/Equatorial Guinea GQ.gif">
                            <label for="regNonAfrica_14" class="checkbox_name cursor_allowed">
                                <p>Equatorial Guinea</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_15" class="checkbox_flag W25 Y25 cursor_allowed" value="ER" checked="" disabled="">
                            <img src="/img/region/africa/Eritrea ER.gif">
                            <label for="regNonAfrica_15" class="checkbox_name cursor_allowed">
                                <p>Eritrea</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_16" class="checkbox_flag W25 Y25 cursor_allowed" value="ET" checked="" disabled="">
                            <img src="/img/region/africa/Ethiopia ET.gif">
                            <label for="regNonAfrica_16" class="checkbox_name cursor_allowed">
                                <p>Ethiopia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_17" class="checkbox_flag W25 Y25 cursor_allowed" value="GA" checked="" disabled="">
                            <img src="/img/region/africa/Gabon GA.gif">
                            <label for="regNonAfrica_17" class="checkbox_name cursor_allowed">
                                <p>Gabon</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_18" class="checkbox_flag W25 Y25 cursor_allowed" value="GM" checked="" disabled="">
                            <img src="/img/region/africa/Gambia, The GM.gif">
                            <label for="regNonAfrica_18" class="checkbox_name cursor_allowed">
                                <p>Gambia, The</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_19" class="checkbox_flag W25 Y25 cursor_allowed" value="GH" checked="" disabled="">
                            <img src="/img/region/africa/Ghana GH.gif">
                            <label for="regNonAfrica_19" class="checkbox_name cursor_allowed">
                                <p>Ghana</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_20" class="checkbox_flag W25 Y25 cursor_allowed" value="GN" checked="" disabled="">
                            <img src="/img/region/africa/Guinea GN.gif">
                            <label for="regNonAfrica_20" class="checkbox_name cursor_allowed">
                                <p>Guinea</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_21" class="checkbox_flag W25 Y25 cursor_allowed" value="GW" checked="" disabled="">
                            <img src="/img/region/africa/Guinea-bissau GW.gif">
                            <label for="regNonAfrica_21" class="checkbox_name cursor_allowed">
                                <p>Guinea-bissau</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_22" class="checkbox_flag W25 Y25 cursor_allowed" value="KE" checked="" disabled="">
                            <img src="/img/region/africa/Kenya KE.gif">
                            <label for="regNonAfrica_22" class="checkbox_name cursor_allowed">
                                <p>Kenya</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_23" class="checkbox_flag W25 Y25 cursor_allowed" value="LS" checked="" disabled="">
                            <img src="/img/region/africa/Lesotho LS.gif">
                            <label for="regNonAfrica_23" class="checkbox_name cursor_allowed">
                                <p>Lesotho</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_24" class="checkbox_flag W25 Y25 cursor_allowed" value="LR" checked="" disabled="">
                            <img src="/img/region/africa/Liberia LR.gif">
                            <label for="regNonAfrica_24" class="checkbox_name cursor_allowed">
                                <p>Liberia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_25" class="checkbox_flag W25 Y25 cursor_allowed" value="LY" checked="" disabled="">
                            <img src="/img/region/africa/Libya LY.gif">
                            <label for="regNonAfrica_25" class="checkbox_name cursor_allowed">
                                <p>Libya</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_26" class="checkbox_flag W25 Y25 cursor_allowed" value="MG" checked="" disabled="">
                            <img src="/img/region/africa/Madagascar MG.gif">
                            <label for="regNonAfrica_26" class="checkbox_name cursor_allowed">
                                <p>Madagascar</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_27" class="checkbox_flag W25 Y25 cursor_allowed" value="MW" checked="" disabled="">
                            <img src="/img/region/africa/Malawi MW.gif">
                            <label for="regNonAfrica_27" class="checkbox_name cursor_allowed">
                                <p>Malawi</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_28" class="checkbox_flag W25 Y25 cursor_allowed" value="ML" checked="" disabled="">
                            <img src="/img/region/africa/Mali ML.gif">
                            <label for="regNonAfrica_28" class="checkbox_name cursor_allowed">
                                <p>Mali</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_29" class="checkbox_flag W25 Y25 cursor_allowed" value="MR" checked="" disabled="">
                            <img src="/img/region/africa/Mauritania MR.gif">
                            <label for="regNonAfrica_29" class="checkbox_name cursor_allowed">
                                <p>Mauritania</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_30" class="checkbox_flag W25 Y25 cursor_allowed" value="MU" checked="" disabled="">
                            <img src="/img/region/africa/Mauritius MU.gif">
                            <label for="regNonAfrica_30" class="checkbox_name cursor_allowed">
                                <p>Mauritius</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_31" class="checkbox_flag W25 Y25 cursor_allowed" value="YT" checked="" disabled="">
                            <img src="/img/region/africa/Mayotte YT.gif">
                            <label for="regNonAfrica_31" class="checkbox_name cursor_allowed">
                                <p>Mayotte</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_32" class="checkbox_flag W25 Y25 cursor_allowed" value="MA" checked="" disabled="">
                            <img src="/img/region/africa/Morocco MA.gif">
                            <label for="regNonAfrica_32" class="checkbox_name cursor_allowed">
                                <p>Morocco</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_33" class="checkbox_flag W25 Y25 cursor_allowed" value="MZ" checked="" disabled="">
                            <img src="/img/region/africa/Mozambique MZ.gif">
                            <label for="regNonAfrica_33" class="checkbox_name cursor_allowed">
                                <p>Mozambique</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_34" class="checkbox_flag W25 Y25 cursor_allowed" value="NA" checked="" disabled="">
                            <img src="/img/region/africa/Namibia NA.gif">
                            <label for="regNonAfrica_34" class="checkbox_name cursor_allowed">
                                <p>Namibia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_35" class="checkbox_flag W25 Y25 cursor_allowed" value="NE" checked="" disabled="">
                            <img src="/img/region/africa/Niger NE.gif">
                            <label for="regNonAfrica_35" class="checkbox_name cursor_allowed">
                                <p>Niger</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_36" class="checkbox_flag W25 Y25 cursor_allowed" value="NG" checked="" disabled="">
                            <img src="/img/region/africa/Nigeria NG.gif">
                            <label for="regNonAfrica_36" class="checkbox_name cursor_allowed">
                                <p>Nigeria</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_37" class="checkbox_flag W25 Y25 cursor_allowed" value="CG" checked="" disabled="">
                            <img src="/img/region/africa/Republic Of Congo CG.gif">
                            <label for="regNonAfrica_37" class="checkbox_name cursor_allowed">
                                <p>Republic Of Congo</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_38" class="checkbox_flag W25 Y25 cursor_allowed" value="RE" checked="" disabled="">
                            <img src="/img/region/africa/Reunion RE.gif">
                            <label for="regNonAfrica_38" class="checkbox_name cursor_allowed">
                                <p>Reunion</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_39" class="checkbox_flag W25 Y25 cursor_allowed" value="RW" checked="" disabled="">
                            <img src="/img/region/africa/Rwanda RW.gif">
                            <label for="regNonAfrica_39" class="checkbox_name cursor_allowed">
                                <p>Rwanda</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_40" class="checkbox_flag W25 Y25 cursor_allowed" value="ST" checked="" disabled="">
                            <img src="/img/region/africa/Sao Tome And Principe ST.gif">
                            <label for="regNonAfrica_40" class="checkbox_name cursor_allowed">
                                <p>Sao Tome And Principe</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_41" class="checkbox_flag W25 Y25 cursor_allowed" value="SN" checked="" disabled="">
                            <img src="/img/region/africa/Senegal SN.gif">
                            <label for="regNonAfrica_41" class="checkbox_name cursor_allowed">
                                <p>Senegal</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_42" class="checkbox_flag W25 Y25 cursor_allowed" value="SC" checked="" disabled="">
                            <img src="/img/region/africa/Seychelles SC.gif">
                            <label for="regNonAfrica_42" class="checkbox_name cursor_allowed">
                                <p>Seychelles</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_43" class="checkbox_flag W25 Y25 cursor_allowed" value="SL" checked="" disabled="">
                            <img src="/img/region/africa/Sierra Leone SL.gif">
                            <label for="regNonAfrica_43" class="checkbox_name cursor_allowed">
                                <p>Sierra Leone</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_44" class="checkbox_flag W25 Y25 cursor_allowed" value="SO" checked="" disabled="">
                            <img src="/img/region/africa/Somalia SO.gif">
                            <label for="regNonAfrica_44" class="checkbox_name cursor_allowed">
                                <p>Somalia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_45" class="checkbox_flag W25 Y25 cursor_allowed" value="ZA" checked="" disabled="">
                            <img src="/img/region/africa/South Africa ZA.gif">
                            <label for="regNonAfrica_45" class="checkbox_name cursor_allowed">
                                <p>South Africa</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_46" class="checkbox_flag W25 Y25 cursor_allowed" value="SD" checked="" disabled="">
                            <img src="/img/region/africa/Sudan SD.gif">
                            <label for="regNonAfrica_46" class="checkbox_name cursor_allowed">
                                <p>Sudan</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_47" class="checkbox_flag W25 Y25 cursor_allowed" value="SZ" checked="" disabled="">
                            <img src="/img/region/africa/Swaziland SZ.gif">
                            <label for="regNonAfrica_47" class="checkbox_name cursor_allowed">
                                <p>Swaziland</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_48" class="checkbox_flag W25 Y25 cursor_allowed" value="TZ" checked="" disabled="">
                            <img src="/img/region/africa/Tanzania TZ.gif">
                            <label for="regNonAfrica_48" class="checkbox_name cursor_allowed">
                                <p>Tanzania</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_49" class="checkbox_flag W25 Y25 cursor_allowed" value="CD" checked="" disabled="">
                            <img src="/img/region/africa/The Democratic Republic Of The Congo CD.gif">
                            <label for="regNonAfrica_49" class="checkbox_name cursor_allowed">
                                <p>The Democratic Republic Of The Congo</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_50" class="checkbox_flag W25 Y25 cursor_allowed" value="TG" checked="" disabled="">
                            <img src="/img/region/africa/Togo TG.gif">
                            <label for="regNonAfrica_50" class="checkbox_name cursor_allowed">
                                <p>Togo</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_51" class="checkbox_flag W25 Y25 cursor_allowed" value="TN" checked="" disabled="">
                            <img src="/img/region/africa/Tunisia TN.gif">
                            <label for="regNonAfrica_51" class="checkbox_name cursor_allowed">
                                <p>Tunisia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_52" class="checkbox_flag W25 Y25 cursor_allowed" value="UG" checked="" disabled="">
                            <img src="/img/region/africa/Uganda UG.gif">
                            <label for="regNonAfrica_52" class="checkbox_name cursor_allowed">
                                <p>Uganda</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_53" class="checkbox_flag W25 Y25 cursor_allowed" value="EH" checked="" disabled="">
                            <img src="/img/region/africa/Western Sahara EH.gif">
                            <label for="regNonAfrica_53" class="checkbox_name cursor_allowed">
                                <p>Western Sahara</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_54" class="checkbox_flag W25 Y25 cursor_allowed" value="ZM" checked="" disabled="">
                            <img src="/img/region/africa/Zambia ZM.gif">
                            <label for="regNonAfrica_54" class="checkbox_name cursor_allowed">
                                <p>Zambia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="reNongAfrica_55" class="checkbox_flag W25 Y25 cursor_allowed" value="ZW" checked="" disabled="">
                            <img src="/img/region/africa/Zimbabwe ZW.gif">
                            <label for="regNonAfrica_55" class="checkbox_name cursor_allowed">
                                <p>Zimbabwe</p>
                            </label>
                            <br>
                        </div>
                    </div>
                </div>

                <!--Австралия-->
                <div class="region_list">
                    <div class="elem_name">
                        <h2>Австралия</h2>
                    </div>
                    <div class="checkbox_area">
                        <input type="checkbox" name="CheckAustralia" id="CheckAustralia" class="checkbox_flag W25 Y25" checked="">
                        <label for="CheckAustralia" class="checkbox_name">
                            <p>Отметить весь регион</p>
                        </label>
                    </div>
                    <div class="W450 botmarg17">
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][0]" id="regAustralia_0" class="checkbox_flag W25 Y25 regAustralia regAll" value="AS" checked="">
                            <img src="/img/region/australia/American Samoa AS.gif">
                            <label for="regAustralia_0" class="checkbox_name">
                                <p>American Samoa</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][1]" id="regAustralia_1" class="checkbox_flag W25 Y25 regAustralia regAll" value="AU" checked="">
                            <img src="/img/region/australia/Australia AU.gif">
                            <label for="regAustralia_1" class="checkbox_name">
                                <p>Australia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][2]" id="regAustralia_2" class="checkbox_flag W25 Y25 regAustralia regAll" value="CX" checked="">
                            <img src="/img/region/australia/Christmas Island CX.gif">
                            <label for="regAustralia_2" class="checkbox_name">
                                <p>Christmas Island</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][3]" id="regAustralia_3" class="checkbox_flag W25 Y25 regAustralia regAll" value="CC" checked="">
                            <img src="/img/region/australia/Cocos (keeling) Islands CC.gif">
                            <label for="regAustralia_3" class="checkbox_name">
                                <p>Cocos (keeling) Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][4]" id="regAustralia_4" class="checkbox_flag W25 Y25 regAustralia regAll" value="CK" checked="">
                            <img src="/img/region/australia/Cook Islands CK.gif">
                            <label for="regAustralia_4" class="checkbox_name">
                                <p>Cook Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][5]" id="regAustralia_5" class="checkbox_flag W25 Y25 regAustralia regAll" value="FJ" checked="">
                            <img src="/img/region/australia/Fiji FJ.gif">
                            <label for="regAustralia_5" class="checkbox_name">
                                <p>Fiji</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][6]" id="regAustralia_6" class="checkbox_flag W25 Y25 regAustralia regAll" value="PF" checked="">
                            <img src="/img/region/australia/French Polynesia PF.gif">
                            <label for="regAustralia_6" class="checkbox_name">
                                <p>French Polynesia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][7]" id="regAustralia_7" class="checkbox_flag W25 Y25 regAustralia regAll" value="GU" checked="">
                            <img src="/img/region/australia/Guam GU.gif">
                            <label for="regAustralia_7" class="checkbox_name">
                                <p>Guam</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][8]" id="regAustralia_8" class="checkbox_flag W25 Y25 regAustralia regAll" value="HM" checked="">
                            <img src="/img/region/australia/Heard Island And Mcdonald Islands HM.gif">
                            <label for="regAustralia_8" class="checkbox_name">
                                <p>Heard Island And Mcdonald Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][9]" id="regAustralia_9" class="checkbox_flag W25 Y25 regAustralia regAll" value="KI" checked="">
                            <img src="/img/region/australia/Kiribati KI.gif">
                            <label for="regAustralia_9" class="checkbox_name">
                                <p>Kiribati</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][10]" id="regAustralia_10" class="checkbox_flag W25 Y25 regAustralia regAll" value="MH" checked="">
                            <img src="/img/region/australia/Marshall Islands MH.gif">
                            <label for="regAustralia_10" class="checkbox_name">
                                <p>Marshall Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][11]" id="regAustralia_11" class="checkbox_flag W25 Y25 regAustralia regAll" value="FM" checked="">
                            <img src="/img/region/australia/Micronesia, Federated States Of FM.gif">
                            <label for="regAustralia_11" class="checkbox_name">
                                <p>Micronesia, Federated States Of</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][12]" id="regAustralia_12" class="checkbox_flag W25 Y25 regAustralia regAll" value="NR" checked="">
                            <img src="/img/region/australia/Nauru NR.gif">
                            <label for="regAustralia_12" class="checkbox_name">
                                <p>Nauru</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][13]" id="regAustralia_13" class="checkbox_flag W25 Y25 regAustralia regAll" value="NC" checked="">
                            <img src="/img/region/australia/New Caledonia NC.gif">
                            <label for="regAustralia_13" class="checkbox_name">
                                <p>New Caledonia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][14]" id="regAustralia_14" class="checkbox_flag W25 Y25 regAustralia regAll" value="NZ" checked="">
                            <img src="/img/region/australia/New Zealand NZ.gif">
                            <label for="regAustralia_14" class="checkbox_name">
                                <p>New Zealand</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][15]" id="regAustralia_15" class="checkbox_flag W25 Y25 regAustralia regAll" value="NU" checked="">
                            <img src="/img/region/australia/Niue NU.gif">
                            <label for="regAustralia_15" class="checkbox_name">
                                <p>Niue</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][16]" id="regAustralia_16" class="checkbox_flag W25 Y25 regAustralia regAll" value="NF" checked="">
                            <img src="/img/region/australia/Norfolk Island NF.gif">
                            <label for="regAustralia_16" class="checkbox_name">
                                <p>Norfolk Island</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][17]" id="regAustralia_17" class="checkbox_flag W25 Y25 regAustralia regAll" value="MP" checked="">
                            <img src="/img/region/australia/Northern Mariana Islands MP.gif">
                            <label for="regAustralia_17" class="checkbox_name">
                                <p>Northern Mariana Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][18]" id="regAustralia_18" class="checkbox_flag W25 Y25 regAustralia regAll" value="PG" checked="">
                            <img src="/img/region/australia/Papua New Guinea PG.gif">
                            <label for="regAustralia_18" class="checkbox_name">
                                <p>Papua New Guinea</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][19]" id="regAustralia_19" class="checkbox_flag W25 Y25 regAustralia regAll" value="PN" checked="">
                            <img src="/img/region/australia/Pitcairn PN.gif">
                            <label for="regAustralia_19" class="checkbox_name">
                                <p>Pitcairn</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][20]" id="regAustralia_20" class="checkbox_flag W25 Y25 regAustralia regAll" value="WS" checked="">
                            <img src="/img/region/australia/Samoa WS.gif">
                            <label for="regAustralia_20" class="checkbox_name">
                                <p>Samoa</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][21]" id="regAustralia_21" class="checkbox_flag W25 Y25 regAustralia regAll" value="SB" checked="">
                            <img src="/img/region/australia/Solomon Islands SB.gif">
                            <label for="regAustralia_21" class="checkbox_name">
                                <p>Solomon Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][22]" id="regAustralia_22" class="checkbox_flag W25 Y25 regAustralia regAll" value="TK" checked="">
                            <img src="/img/region/australia/Tokelau TK.gif">
                            <label for="regAustralia_22" class="checkbox_name">
                                <p>Tokelau</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][23]" id="regAustralia_23" class="checkbox_flag W25 Y25 regAustralia regAll" value="TO" checked="">
                            <img src="/img/region/australia/Tonga TO.gif">
                            <label for="regAustralia_23" class="checkbox_name">
                                <p>Tonga</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][24]" id="regAustralia_24" class="checkbox_flag W25 Y25 regAustralia regAll" value="TV" checked="">
                            <img src="/img/region/australia/Tuvalu TV.gif">
                            <label for="regAustralia_24" class="checkbox_name">
                                <p>Tuvalu</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][25]" id="regAustralia_25" class="checkbox_flag W25 Y25 regAustralia regAll" value="UM" checked="">
                            <img src="/img/region/australia/United States Minor Outlying Islands UM.gif">
                            <label for="regAustralia_25" class="checkbox_name">
                                <p>United States Minor Outlying Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][26]" id="regAustralia_26" class="checkbox_flag W25 Y25 regAustralia regAll" value="VU" checked="">
                            <img src="/img/region/australia/Vanuatu VU.gif">
                            <label for="regAustralia_26" class="checkbox_name">
                                <p>Vanuatu</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[34][27]" id="regAustralia_27" class="checkbox_flag W25 Y25 regAustralia regAll" value="WF" checked="">
                            <img src="/img/region/australia/Wallis And Futuna WF.gif">
                            <label for="regAustralia_27" class="checkbox_name">
                                <p>Wallis And Futuna</p>
                            </label>
                            <br>
                        </div>
                        <script>
                            $(document).ready(function () {
                                $("#CheckAustralia").click(function () {
                                    if (!$("#CheckAustralia").is(":checked"))
                                        $(".regAustralia").removeAttr("checked");
                                    else
                                        $(".regAustralia").attr("checked", "checked");
                                });
                            });
                        </script>
                    </div>
                    <div class="W450 botmarg17" style="display: none;">
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_0" class="checkbox_flag W25 Y25 cursor_allowed" value="AS" checked="" disabled="">
                            <img src="/img/region/australia/American Samoa AS.gif">
                            <label for="regNonAustralia_0" class="checkbox_name cursor_allowed">
                                <p>American Samoa</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_1" class="checkbox_flag W25 Y25 cursor_allowed" value="AU" checked="" disabled="">
                            <img src="/img/region/australia/Australia AU.gif">
                            <label for="regNonAustralia_1" class="checkbox_name cursor_allowed">
                                <p>Australia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_2" class="checkbox_flag W25 Y25 cursor_allowed" value="CX" checked="" disabled="">
                            <img src="/img/region/australia/Christmas Island CX.gif">
                            <label for="regNonAustralia_2" class="checkbox_name cursor_allowed">
                                <p>Christmas Island</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_3" class="checkbox_flag W25 Y25 cursor_allowed" value="CC" checked="" disabled="">
                            <img src="/img/region/australia/Cocos (keeling) Islands CC.gif">
                            <label for="regNonAustralia_3" class="checkbox_name cursor_allowed">
                                <p>Cocos (keeling) Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_4" class="checkbox_flag W25 Y25 cursor_allowed" value="CK" checked="" disabled="">
                            <img src="/img/region/australia/Cook Islands CK.gif">
                            <label for="regNonAustralia_4" class="checkbox_name cursor_allowed">
                                <p>Cook Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_5" class="checkbox_flag W25 Y25 cursor_allowed" value="FJ" checked="" disabled="">
                            <img src="/img/region/australia/Fiji FJ.gif">
                            <label for="regNonAustralia_5" class="checkbox_name cursor_allowed">
                                <p>Fiji</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_6" class="checkbox_flag W25 Y25 cursor_allowed" value="PF" checked="" disabled="">
                            <img src="/img/region/australia/French Polynesia PF.gif">
                            <label for="regNonAustralia_6" class="checkbox_name cursor_allowed">
                                <p>French Polynesia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_7" class="checkbox_flag W25 Y25 cursor_allowed" value="GU" checked="" disabled="">
                            <img src="/img/region/australia/Guam GU.gif">
                            <label for="regNonAustralia_7" class="checkbox_name cursor_allowed">
                                <p>Guam</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_8" class="checkbox_flag W25 Y25 cursor_allowed" value="HM" checked="" disabled="">
                            <img src="/img/region/australia/Heard Island And Mcdonald Islands HM.gif">
                            <label for="regNonAustralia_8" class="checkbox_name cursor_allowed">
                                <p>Heard Island And Mcdonald Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_9" class="checkbox_flag W25 Y25 cursor_allowed" value="KI" checked="" disabled="">
                            <img src="/img/region/australia/Kiribati KI.gif">
                            <label for="regNonAustralia_9" class="checkbox_name cursor_allowed">
                                <p>Kiribati</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_10" class="checkbox_flag W25 Y25 cursor_allowed" value="MH" checked="" disabled="">
                            <img src="/img/region/australia/Marshall Islands MH.gif">
                            <label for="regNonAustralia_10" class="checkbox_name cursor_allowed">
                                <p>Marshall Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_11" class="checkbox_flag W25 Y25 cursor_allowed" value="FM" checked="" disabled="">
                            <img src="/img/region/australia/Micronesia, Federated States Of FM.gif">
                            <label for="regNonAustralia_11" class="checkbox_name cursor_allowed">
                                <p>Micronesia, Federated States Of</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_12" class="checkbox_flag W25 Y25 cursor_allowed" value="NR" checked="" disabled="">
                            <img src="/img/region/australia/Nauru NR.gif">
                            <label for="regNonAustralia_12" class="checkbox_name cursor_allowed">
                                <p>Nauru</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_13" class="checkbox_flag W25 Y25 cursor_allowed" value="NC" checked="" disabled="">
                            <img src="/img/region/australia/New Caledonia NC.gif">
                            <label for="regNonAustralia_13" class="checkbox_name cursor_allowed">
                                <p>New Caledonia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_14" class="checkbox_flag W25 Y25 cursor_allowed" value="NZ" checked="" disabled="">
                            <img src="/img/region/australia/New Zealand NZ.gif">
                            <label for="regNonAustralia_14" class="checkbox_name cursor_allowed">
                                <p>New Zealand</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_15" class="checkbox_flag W25 Y25 cursor_allowed" value="NU" checked="" disabled="">
                            <img src="/img/region/australia/Niue NU.gif">
                            <label for="regNonAustralia_15" class="checkbox_name cursor_allowed">
                                <p>Niue</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_16" class="checkbox_flag W25 Y25 cursor_allowed" value="NF" checked="" disabled="">
                            <img src="/img/region/australia/Norfolk Island NF.gif">
                            <label for="regNonAustralia_16" class="checkbox_name cursor_allowed">
                                <p>Norfolk Island</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_17" class="checkbox_flag W25 Y25 cursor_allowed" value="MP" checked="" disabled="">
                            <img src="/img/region/australia/Northern Mariana Islands MP.gif">
                            <label for="regNonAustralia_17" class="checkbox_name cursor_allowed">
                                <p>Northern Mariana Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_18" class="checkbox_flag W25 Y25 cursor_allowed" value="PG" checked="" disabled="">
                            <img src="/img/region/australia/Papua New Guinea PG.gif">
                            <label for="regNonAustralia_18" class="checkbox_name cursor_allowed">
                                <p>Papua New Guinea</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_19" class="checkbox_flag W25 Y25 cursor_allowed" value="PN" checked="" disabled="">
                            <img src="/img/region/australia/Pitcairn PN.gif">
                            <label for="regNonAustralia_19" class="checkbox_name cursor_allowed">
                                <p>Pitcairn</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_20" class="checkbox_flag W25 Y25 cursor_allowed" value="WS" checked="" disabled="">
                            <img src="/img/region/australia/Samoa WS.gif">
                            <label for="regNonAustralia_20" class="checkbox_name cursor_allowed">
                                <p>Samoa</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_21" class="checkbox_flag W25 Y25 cursor_allowed" value="SB" checked="" disabled="">
                            <img src="/img/region/australia/Solomon Islands SB.gif">
                            <label for="regNonAustralia_21" class="checkbox_name cursor_allowed">
                                <p>Solomon Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_22" class="checkbox_flag W25 Y25 cursor_allowed" value="TK" checked="" disabled="">
                            <img src="/img/region/australia/Tokelau TK.gif">
                            <label for="regNonAustralia_22" class="checkbox_name cursor_allowed">
                                <p>Tokelau</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_23" class="checkbox_flag W25 Y25 cursor_allowed" value="TO" checked="" disabled="">
                            <img src="/img/region/australia/Tonga TO.gif">
                            <label for="regNonAustralia_23" class="checkbox_name cursor_allowed">
                                <p>Tonga</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_24" class="checkbox_flag W25 Y25 cursor_allowed" value="TV" checked="" disabled="">
                            <img src="/img/region/australia/Tuvalu TV.gif">
                            <label for="regNonAustralia_24" class="checkbox_name cursor_allowed">
                                <p>Tuvalu</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_25" class="checkbox_flag W25 Y25 cursor_allowed" value="UM" checked="" disabled="">
                            <img src="/img/region/australia/United States Minor Outlying Islands UM.gif">
                            <label for="regNonAustralia_25" class="checkbox_name cursor_allowed">
                                <p>United States Minor Outlying Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_26" class="checkbox_flag W25 Y25 cursor_allowed" value="VU" checked="" disabled="">
                            <img src="/img/region/australia/Vanuatu VU.gif">
                            <label for="regNonAustralia_26" class="checkbox_name cursor_allowed">
                                <p>Vanuatu</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAustralia_27" class="checkbox_flag W25 Y25 cursor_allowed" value="WF" checked="" disabled="">
                            <img src="/img/region/australia/Wallis And Futuna WF.gif">
                            <label for="regNonAustralia_27" class="checkbox_name cursor_allowed">
                                <p>Wallis And Futuna</p>
                            </label>
                            <br>
                        </div>
                    </div>
                </div>

                <!--Северная Америка-->
                <div class="region_list">
                    <div class="elem_name">
                        <h2>Северная Америка</h2>
                    </div>
                    <div class="checkbox_area">
                        <input type="checkbox" name="CheckAustralia" id="CheckNorthAmerica" class="checkbox_flag W25 Y25" checked="">
                        <label for="CheckNorthAmerica" class="checkbox_name">
                            <p>Отметить весь регион</p>
                        </label>
                    </div>
                    <div class="W450 botmarg17">
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][0]" id="regNorthAmerica_0" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="AI" checked="">
                            <img src="/img/region/northAmerica/Anguilla AI.gif">
                            <label for="regNorthAmerica_0" class="checkbox_name">
                                <p>Anguilla</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][1]" id="regNorthAmerica_1" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="AG" checked="">
                            <img src="/img/region/northAmerica/Antigua And Barbuda AG.gif">
                            <label for="regNorthAmerica_1" class="checkbox_name">
                                <p>Antigua And Barbuda</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][2]" id="regNorthAmerica_2" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="BS" checked="">
                            <img src="/img/region/northAmerica/Bahamas BS.gif">
                            <label for="regNorthAmerica_2" class="checkbox_name">
                                <p>Bahamas</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][3]" id="regNorthAmerica_3" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="BB" checked="">
                            <img src="/img/region/northAmerica/Barbados BB.gif">
                            <label for="regNorthAmerica_3" class="checkbox_name">
                                <p>Barbados</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][4]" id="regNorthAmerica_4" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="BZ" checked="">
                            <img src="/img/region/northAmerica/Belize BZ.gif">
                            <label for="regNorthAmerica_4" class="checkbox_name">
                                <p>Belize</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][5]" id="regNorthAmerica_5" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="BM" checked="">
                            <img src="/img/region/northAmerica/Bermuda BM.gif">
                            <label for="regNorthAmerica_5" class="checkbox_name">
                                <p>Bermuda</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][6]" id="regNorthAmerica_6" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="CA" checked="">
                            <img src="/img/region/northAmerica/Canada CA.gif">
                            <label for="regNorthAmerica_6" class="checkbox_name">
                                <p>Canada</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][7]" id="regNorthAmerica_7" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="KY" checked="">
                            <img src="/img/region/northAmerica/Cayman Islands KY.gif">
                            <label for="regNorthAmerica_7" class="checkbox_name">
                                <p>Cayman Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][8]" id="regNorthAmerica_8" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="CR" checked="">
                            <img src="/img/region/northAmerica/Costa Rica CR.gif">
                            <label for="regNorthAmerica_8" class="checkbox_name">
                                <p>Costa Rica</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][9]" id="regNorthAmerica_9" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="CU" checked="">
                            <img src="/img/region/northAmerica/Cuba CU.gif">
                            <label for="regNorthAmerica_9" class="checkbox_name">
                                <p>Cuba</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][10]" id="regNorthAmerica_10" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="DM" checked="">
                            <img src="/img/region/northAmerica/Dominica DM.gif">
                            <label for="regNorthAmerica_10" class="checkbox_name">
                                <p>Dominica</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][11]" id="regNorthAmerica_11" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="DO" checked="">
                            <img src="/img/region/northAmerica/Dominican Republic DO.gif">
                            <label for="regNorthAmerica_11" class="checkbox_name">
                                <p>Dominican Republic</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][12]" id="regNorthAmerica_12" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="SV" checked="">
                            <img src="/img/region/northAmerica/El Salvador SV.gif">
                            <label for="regNorthAmerica_12" class="checkbox_name">
                                <p>El Salvador</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][13]" id="regNorthAmerica_13" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="GL" checked="">
                            <img src="/img/region/northAmerica/Greenland GL.gif">
                            <label for="regNorthAmerica_13" class="checkbox_name">
                                <p>Greenland</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][14]" id="regNorthAmerica_14" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="GD" checked="">
                            <img src="/img/region/northAmerica/Grenada GD.gif">
                            <label for="regNorthAmerica_14" class="checkbox_name">
                                <p>Grenada</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][15]" id="regNorthAmerica_15" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="GP" checked="">
                            <img src="/img/region/northAmerica/Guadeloupe GP.gif">
                            <label for="regNorthAmerica_15" class="checkbox_name">
                                <p>Guadeloupe</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][16]" id="regNorthAmerica_16" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="GT" checked="">
                            <img src="/img/region/northAmerica/Guatemala GT.gif">
                            <label for="regNorthAmerica_16" class="checkbox_name">
                                <p>Guatemala</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][17]" id="regNorthAmerica_17" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="HT" checked="">
                            <img src="/img/region/northAmerica/Haiti HT.gif">
                            <label for="regNorthAmerica_17" class="checkbox_name">
                                <p>Haiti</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][18]" id="regNorthAmerica_18" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="HN" checked="">
                            <img src="/img/region/northAmerica/Honduras HN.gif">
                            <label for="regNorthAmerica_18" class="checkbox_name">
                                <p>Honduras</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][19]" id="regNorthAmerica_19" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="JM" checked="">
                            <img src="/img/region/northAmerica/Jamaica JM.gif">
                            <label for="regNorthAmerica_19" class="checkbox_name">
                                <p>Jamaica</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][20]" id="regNorthAmerica_20" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="MQ" checked="">
                            <img src="/img/region/northAmerica/Martinique MQ.gif">
                            <label for="regNorthAmerica_20" class="checkbox_name">
                                <p>Martinique</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][21]" id="regNorthAmerica_21" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="MX" checked="">
                            <img src="/img/region/northAmerica/Mexico MX.gif">
                            <label for="regNorthAmerica_21" class="checkbox_name">
                                <p>Mexico</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][22]" id="regNorthAmerica_22" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="MS" checked="">
                            <img src="/img/region/northAmerica/Montserrat MS.gif">
                            <label for="regNorthAmerica_22" class="checkbox_name">
                                <p>Montserrat</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][23]" id="regNorthAmerica_23" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="AN" checked="">
                            <img src="/img/region/northAmerica/Netherlands Antilles AN.gif">
                            <label for="regNorthAmerica_23" class="checkbox_name">
                                <p>Netherlands Antilles</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][24]" id="regNorthAmerica_24" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="NI" checked="">
                            <img src="/img/region/northAmerica/Nicaragua NI.gif">
                            <label for="regNorthAmerica_24" class="checkbox_name">
                                <p>Nicaragua</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][25]" id="regNorthAmerica_25" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="PA" checked="">
                            <img src="/img/region/northAmerica/Panama PA.gif">
                            <label for="regNorthAmerica_25" class="checkbox_name">
                                <p>Panama</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][26]" id="regNorthAmerica_26" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="PR" checked="">
                            <img src="/img/region/northAmerica/Puerto Rico PR.gif">
                            <label for="regNorthAmerica_26" class="checkbox_name">
                                <p>Puerto Rico</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][27]" id="regNorthAmerica_27" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="KN" checked="">
                            <img src="/img/region/northAmerica/Saint Kitts And Nevis KN.gif">
                            <label for="regNorthAmerica_27" class="checkbox_name">
                                <p>Saint Kitts And Nevis</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][28]" id="regNorthAmerica_28" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="LC" checked="">
                            <img src="/img/region/northAmerica/Saint Lucia LC.gif">
                            <label for="regNorthAmerica_28" class="checkbox_name">
                                <p>Saint Lucia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][29]" id="regNorthAmerica_29" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="PM" checked="">
                            <img src="/img/region/northAmerica/Saint Pierre And Miquelon PM.gif">
                            <label for="regNorthAmerica_29" class="checkbox_name">
                                <p>Saint Pierre And Miquelon</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][30]" id="regNorthAmerica_30" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="TC" checked="">
                            <img src="/img/region/northAmerica/Turks And Caicos Islands TC.gif">
                            <label for="regNorthAmerica_30" class="checkbox_name">
                                <p>Turks And Caicos Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][31]" id="regNorthAmerica_31" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="US" checked="">
                            <img src="/img/region/northAmerica/United States US.gif">
                            <label for="regNorthAmerica_31" class="checkbox_name">
                                <p>United States</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][32]" id="regNorthAmerica_32" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="VG" checked="">
                            <img src="/img/region/northAmerica/Virgin Islands, British VG.gif">
                            <label for="regNorthAmerica_32" class="checkbox_name">
                                <p>Virgin Islands, British</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[35][33]" id="regNorthAmerica_33" class="checkbox_flag W25 Y25 regNorthAmerica regAll" value="VI" checked="">
                            <img src="/img/region/northAmerica/Virgin Islands, U.S. VI.gif">
                            <label for="regNorthAmerica_33" class="checkbox_name">
                                <p>Virgin Islands, U.S.</p>
                            </label>
                            <br>
                        </div>
                        <script>
                            $(document).ready(function () {
                                $("#CheckNorthAmerica").click(function () {
                                    if (!$("#CheckNorthAmerica").is(":checked"))
                                        $(".regNorthAmerica").removeAttr("checked");
                                    else
                                        $(".regNorthAmerica").attr("checked", "checked");
                                });
                            });
                        </script>
                    </div>
                    <div class="W450 botmarg17" style="display: none;">
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_0" class="checkbox_flag W25 Y25 cursor_allowed" value="AI" checked="" disabled="">
                            <img src="/img/region/northAmerica/Anguilla AI.gif">
                            <label for="regNonNorthAmerica_0" class="checkbox_name cursor_allowed">
                                <p>Anguilla</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_1" class="checkbox_flag W25 Y25 cursor_allowed" value="AG" checked="" disabled="">
                            <img src="/img/region/northAmerica/Antigua And Barbuda AG.gif">
                            <label for="regNonNorthAmerica_1" class="checkbox_name cursor_allowed">
                                <p>Antigua And Barbuda</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_2" class="checkbox_flag W25 Y25 cursor_allowed" value="BS" checked="" disabled="">
                            <img src="/img/region/northAmerica/Bahamas BS.gif">
                            <label for="regNonNorthAmerica_2" class="checkbox_name cursor_allowed">
                                <p>Bahamas</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_3" class="checkbox_flag W25 Y25 cursor_allowed" value="BB" checked="" disabled="">
                            <img src="/img/region/northAmerica/Barbados BB.gif">
                            <label for="regNonNorthAmerica_3" class="checkbox_name cursor_allowed">
                                <p>Barbados</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_4" class="checkbox_flag W25 Y25 cursor_allowed" value="BZ" checked="" disabled="">
                            <img src="/img/region/northAmerica/Belize BZ.gif">
                            <label for="regNonNorthAmerica_4" class="checkbox_name cursor_allowed">
                                <p>Belize</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_5" class="checkbox_flag W25 Y25 cursor_allowed" value="BM" checked="" disabled="">
                            <img src="/img/region/northAmerica/Bermuda BM.gif">
                            <label for="regNonNorthAmerica_5" class="checkbox_name cursor_allowed">
                                <p>Bermuda</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_6" class="checkbox_flag W25 Y25 cursor_allowed" value="CA" checked="" disabled="">
                            <img src="/img/region/northAmerica/Canada CA.gif">
                            <label for="regNonNorthAmerica_6" class="checkbox_name cursor_allowed">
                                <p>Canada</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_7" class="checkbox_flag W25 Y25 cursor_allowed" value="KY" checked="" disabled="">
                            <img src="/img/region/northAmerica/Cayman Islands KY.gif">
                            <label for="regNonNorthAmerica_7" class="checkbox_name cursor_allowed">
                                <p>Cayman Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_8" class="checkbox_flag W25 Y25 cursor_allowed" value="CR" checked="" disabled="">
                            <img src="/img/region/northAmerica/Costa Rica CR.gif">
                            <label for="regNonNorthAmerica_8" class="checkbox_name cursor_allowed">
                                <p>Costa Rica</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_9" class="checkbox_flag W25 Y25 cursor_allowed" value="CU" checked="" disabled="">
                            <img src="/img/region/northAmerica/Cuba CU.gif">
                            <label for="regNonNorthAmerica_9" class="checkbox_name cursor_allowed">
                                <p>Cuba</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_10" class="checkbox_flag W25 Y25 cursor_allowed" value="DM" checked="" disabled="">
                            <img src="/img/region/northAmerica/Dominica DM.gif">
                            <label for="regNonNorthAmerica_10" class="checkbox_name cursor_allowed">
                                <p>Dominica</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_11" class="checkbox_flag W25 Y25 cursor_allowed" value="DO" checked="" disabled="">
                            <img src="/img/region/northAmerica/Dominican Republic DO.gif">
                            <label for="regNonNorthAmerica_11" class="checkbox_name cursor_allowed">
                                <p>Dominican Republic</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_12" class="checkbox_flag W25 Y25 cursor_allowed" value="SV" checked="" disabled="">
                            <img src="/img/region/northAmerica/El Salvador SV.gif">
                            <label for="regNonNorthAmerica_12" class="checkbox_name cursor_allowed">
                                <p>El Salvador</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_13" class="checkbox_flag W25 Y25 cursor_allowed" value="GL" checked="" disabled="">
                            <img src="/img/region/northAmerica/Greenland GL.gif">
                            <label for="regNonNorthAmerica_13" class="checkbox_name cursor_allowed">
                                <p>Greenland</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_14" class="checkbox_flag W25 Y25 cursor_allowed" value="GD" checked="" disabled="">
                            <img src="/img/region/northAmerica/Grenada GD.gif">
                            <label for="regNonNorthAmerica_14" class="checkbox_name cursor_allowed">
                                <p>Grenada</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_15" class="checkbox_flag W25 Y25 cursor_allowed" value="GP" checked="" disabled="">
                            <img src="/img/region/northAmerica/Guadeloupe GP.gif">
                            <label for="regNonNorthAmerica_15" class="checkbox_name cursor_allowed">
                                <p>Guadeloupe</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_16" class="checkbox_flag W25 Y25 cursor_allowed" value="GT" checked="" disabled="">
                            <img src="/img/region/northAmerica/Guatemala GT.gif">
                            <label for="regNonNorthAmerica_16" class="checkbox_name cursor_allowed">
                                <p>Guatemala</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_17" class="checkbox_flag W25 Y25 cursor_allowed" value="HT" checked="" disabled="">
                            <img src="/img/region/northAmerica/Haiti HT.gif">
                            <label for="regNonNorthAmerica_17" class="checkbox_name cursor_allowed">
                                <p>Haiti</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_18" class="checkbox_flag W25 Y25 cursor_allowed" value="HN" checked="" disabled="">
                            <img src="/img/region/northAmerica/Honduras HN.gif">
                            <label for="regNonNorthAmerica_18" class="checkbox_name cursor_allowed">
                                <p>Honduras</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_19" class="checkbox_flag W25 Y25 cursor_allowed" value="JM" checked="" disabled="">
                            <img src="/img/region/northAmerica/Jamaica JM.gif">
                            <label for="regNonNorthAmerica_19" class="checkbox_name cursor_allowed">
                                <p>Jamaica</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_20" class="checkbox_flag W25 Y25 cursor_allowed" value="MQ" checked="" disabled="">
                            <img src="/img/region/northAmerica/Martinique MQ.gif">
                            <label for="regNonNorthAmerica_20" class="checkbox_name cursor_allowed">
                                <p>Martinique</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_21" class="checkbox_flag W25 Y25 cursor_allowed" value="MX" checked="" disabled="">
                            <img src="/img/region/northAmerica/Mexico MX.gif">
                            <label for="regNonNorthAmerica_21" class="checkbox_name cursor_allowed">
                                <p>Mexico</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_22" class="checkbox_flag W25 Y25 cursor_allowed" value="MS" checked="" disabled="">
                            <img src="/img/region/northAmerica/Montserrat MS.gif">
                            <label for="regNonNorthAmerica_22" class="checkbox_name cursor_allowed">
                                <p>Montserrat</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_23" class="checkbox_flag W25 Y25 cursor_allowed" value="AN" checked="" disabled="">
                            <img src="/img/region/northAmerica/Netherlands Antilles AN.gif">
                            <label for="regNonNorthAmerica_23" class="checkbox_name cursor_allowed">
                                <p>Netherlands Antilles</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_24" class="checkbox_flag W25 Y25 cursor_allowed" value="NI" checked="" disabled="">
                            <img src="/img/region/northAmerica/Nicaragua NI.gif">
                            <label for="regNonNorthAmerica_24" class="checkbox_name cursor_allowed">
                                <p>Nicaragua</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_25" class="checkbox_flag W25 Y25 cursor_allowed" value="PA" checked="" disabled="">
                            <img src="/img/region/northAmerica/Panama PA.gif">
                            <label for="regNonNorthAmerica_25" class="checkbox_name cursor_allowed">
                                <p>Panama</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_26" class="checkbox_flag W25 Y25 cursor_allowed" value="PR" checked="" disabled="">
                            <img src="/img/region/northAmerica/Puerto Rico PR.gif">
                            <label for="regNonNorthAmerica_26" class="checkbox_name cursor_allowed">
                                <p>Puerto Rico</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_27" class="checkbox_flag W25 Y25 cursor_allowed" value="KN" checked="" disabled="">
                            <img src="/img/region/northAmerica/Saint Kitts And Nevis KN.gif">
                            <label for="regNonNorthAmerica_27" class="checkbox_name cursor_allowed">
                                <p>Saint Kitts And Nevis</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_28" class="checkbox_flag W25 Y25 cursor_allowed" value="LC" checked="" disabled="">
                            <img src="/img/region/northAmerica/Saint Lucia LC.gif">
                            <label for="regNonNorthAmerica_28" class="checkbox_name cursor_allowed">
                                <p>Saint Lucia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_29" class="checkbox_flag W25 Y25 cursor_allowed" value="PM" checked="" disabled="">
                            <img src="/img/region/northAmerica/Saint Pierre And Miquelon PM.gif">
                            <label for="regNonNorthAmerica_29" class="checkbox_name cursor_allowed">
                                <p>Saint Pierre And Miquelon</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_30" class="checkbox_flag W25 Y25 cursor_allowed" value="TC" checked="" disabled="">
                            <img src="/img/region/northAmerica/Turks And Caicos Islands TC.gif">
                            <label for="regNonNorthAmerica_30" class="checkbox_name cursor_allowed">
                                <p>Turks And Caicos Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_31" class="checkbox_flag W25 Y25 cursor_allowed" value="US" checked="" disabled="">
                            <img src="/img/region/northAmerica/United States US.gif">
                            <label for="regNonNorthAmerica_31" class="checkbox_name cursor_allowed">
                                <p>United States</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_32" class="checkbox_flag W25 Y25 cursor_allowed" value="VG" checked="" disabled="">
                            <img src="/img/region/northAmerica/Virgin Islands, British VG.gif">
                            <label for="regNonNorthAmerica_32" class="checkbox_name cursor_allowed">
                                <p>Virgin Islands, British</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonNorthAmerica_33" class="checkbox_flag W25 Y25 cursor_allowed" value="VI" checked="" disabled="">
                            <img src="/img/region/northAmerica/Virgin Islands, U.S. VI.gif">
                            <label for="regNonNorthAmerica_33" class="checkbox_name cursor_allowed">
                                <p>Virgin Islands, U.S.</p>
                            </label>
                            <br>
                        </div>
                    </div>
                </div>

                <!--Антарктида-->
                <div class="region_list">
                    <div class="elem_name">
                        <h2>Антарктида</h2>
                    </div>
                    <div class="checkbox_area">
                        <input type="checkbox" name="CheckAntarktica" id="CheckAntarktica" class="checkbox_flag W25 Y25" checked="">
                        <label for="CheckAntarktica" class="checkbox_name">
                            <p>Отметить весь регион</p>
                        </label>
                    </div>
                    <div class="W450 botmarg17">
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[36][0]" id="regAntarktica_0" class="checkbox_flag W25 Y25 regAntarktica regAll" value="AQ" checked="">
                            <img src="/img/region/antarctica/Antarctica AQ.gif">
                            <label for="regAntarktica_0" class="checkbox_name">
                                <p>Antarctica</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[36][1]" id="regAntarktica_1" class="checkbox_flag W25 Y25 regAntarktica regAll" value="BV" checked="">
                            <img src="/img/region/antarctica/Bouvet Island BV.gif">
                            <label for="regAntarktica_1" class="checkbox_name">
                                <p>Bouvet Island</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[36][2]" id="regAntarktica_2" class="checkbox_flag W25 Y25 regAntarktica regAll" value="TF" checked="">
                            <img src="/img/region/antarctica/French Southern Territories TF.gif">
                            <label for="regAntarktica_2" class="checkbox_name">
                                <p>French Southern Territories</p>
                            </label>
                            <br>
                        </div>
                        <script>
                            $(document).ready(function () {
                                $("#CheckAntarktica").click(function () {
                                    if (!$("#CheckAntarktica").is(":checked"))
                                        $(".regAntarktica").removeAttr("checked");
                                    else
                                        $(".regAntarktica").attr("checked", "checked");
                                });
                            });
                        </script>
                    </div>
                    <div class="W450 botmarg17" style="display: none;">
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAntarktica_0" class="checkbox_flag W25 Y25 cursor_allowed" value="AQ" checked="" disabled="">
                            <img src="/img/region/antarctica/Antarctica AQ.gif">
                            <label for="regNonAntarktica_0" class="checkbox_name cursor_allowed">
                                <p>Antarctica</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAntarktica_1" class="checkbox_flag W25 Y25 cursor_allowed" value="BV" checked="" disabled="">
                            <img src="/img/region/antarctica/Bouvet Island BV.gif">
                            <label for="regNonAntarktica_1" class="checkbox_name cursor_allowed">
                                <p>Bouvet Island</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonAntarktica_2" class="checkbox_flag W25 Y25 cursor_allowed" value="TF" checked="" disabled="">
                            <img src="/img/region/antarctica/French Southern Territories TF.gif">
                            <label for="regNonAntarktica_2" class="checkbox_name cursor_allowed">
                                <p>French Southern Territories</p>
                            </label>
                            <br>
                        </div>
                    </div>
                </div>

                <!--Южная Америка-->
                <div class="region_list">
                    <div class="elem_name">
                        <h2>Южная Америка</h2>
                    </div>
                    <div class="checkbox_area">
                        <input type="checkbox" name="CheckSouthAmerika" id="CheckSouthAmerika" class="checkbox_flag W25 Y25" checked="">
                        <label for="CheckSouthAmerika" class="checkbox_name">
                            <p>Отметить весь регион</p>
                        </label>
                    </div>
                    <div class="W450 botmarg17">
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[37][0]" id="regSouthAmerika_0" class="checkbox_flag W25 Y25 regSouthAmerika regAll" value="AR" checked="">
                            <img src="/img/region/southAmerica/Argentina AR.gif">
                            <label for="regSouthAmerika_0" class="checkbox_name">
                                <p>Argentina</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[37][1]" id="regSouthAmerika_1" class="checkbox_flag W25 Y25 regSouthAmerika regAll" value="AW" checked="">
                            <img src="/img/region/southAmerica/Aruba AW.gif">
                            <label for="regSouthAmerika_1" class="checkbox_name">
                                <p>Aruba</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[37][2]" id="regSouthAmerika_2" class="checkbox_flag W25 Y25 regSouthAmerika regAll" value="BO" checked="">
                            <img src="/img/region/southAmerica/Bolivia BO.gif">
                            <label for="regSouthAmerika_2" class="checkbox_name">
                                <p>Bolivia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[37][3]" id="regSouthAmerika_3" class="checkbox_flag W25 Y25 regSouthAmerika regAll" value="BR" checked="">
                            <img src="/img/region/southAmerica/Brazil BR.gif">
                            <label for="regSouthAmerika_3" class="checkbox_name">
                                <p>Brazil</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[37][4]" id="regSouthAmerika_4" class="checkbox_flag W25 Y25 regSouthAmerika regAll" value="CL" checked="">
                            <img src="/img/region/southAmerica/Chile CL.gif">
                            <label for="regSouthAmerika_4" class="checkbox_name">
                                <p>Chile</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[37][5]" id="regSouthAmerika_5" class="checkbox_flag W25 Y25 regSouthAmerika regAll" value="CO" checked="">
                            <img src="/img/region/southAmerica/Colombia CO.gif">
                            <label for="regSouthAmerika_5" class="checkbox_name">
                                <p>Colombia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[37][6]" id="regSouthAmerika_6" class="checkbox_flag W25 Y25 regSouthAmerika regAll" value="EC" checked="">
                            <img src="/img/region/southAmerica/Ecuador EC.gif">
                            <label for="regSouthAmerika_6" class="checkbox_name">
                                <p>Ecuador</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[37][7]" id="regSouthAmerika_7" class="checkbox_flag W25 Y25 regSouthAmerika regAll" value="FK" checked="">
                            <img src="/img/region/southAmerica/Falkland Islands FK.gif">
                            <label for="regSouthAmerika_7" class="checkbox_name">
                                <p>Falkland Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[37][8]" id="regSouthAmerika_8" class="checkbox_flag W25 Y25 regSouthAmerika regAll" value="GF" checked="">
                            <img src="/img/region/southAmerica/French Guiana GF.gif">
                            <label for="regSouthAmerika_8" class="checkbox_name">
                                <p>French Guiana</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[37][9]" id="regSouthAmerika_9" class="checkbox_flag W25 Y25 regSouthAmerika regAll" value="GY" checked="">
                            <img src="/img/region/southAmerica/Guyana GY.gif">
                            <label for="regSouthAmerika_9" class="checkbox_name">
                                <p>Guyana</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[37][10]" id="regSouthAmerika_10" class="checkbox_flag W25 Y25 regSouthAmerika regAll" value="PY" checked="">
                            <img src="/img/region/southAmerica/Paraguay PY.gif">
                            <label for="regSouthAmerika_10" class="checkbox_name">
                                <p>Paraguay</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[37][11]" id="regSouthAmerika_11" class="checkbox_flag W25 Y25 regSouthAmerika regAll" value="PE" checked="">
                            <img src="/img/region/southAmerica/Peru PE.gif">
                            <label for="regSouthAmerika_11" class="checkbox_name">
                                <p>Peru</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[37][12]" id="regSouthAmerika_12" class="checkbox_flag W25 Y25 regSouthAmerika regAll" value="VC" checked="">
                            <img src="/img/region/southAmerica/Saint Vincent And The Grenadines VC.gif">
                            <label for="regSouthAmerika_12" class="checkbox_name">
                                <p>Saint Vincent And The Grenadines</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[37][13]" id="regSouthAmerika_13" class="checkbox_flag W25 Y25 regSouthAmerika regAll" value="GS" checked="">
                            <img src="/img/region/southAmerica/South Georgia And The South Sandwich Islands GS.gif">
                            <label for="regSouthAmerika_13" class="checkbox_name">
                                <p>South Georgia And The South Sandwich Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[37][14]" id="regSouthAmerika_14" class="checkbox_flag W25 Y25 regSouthAmerika regAll" value="SR" checked="">
                            <img src="/img/region/southAmerica/Suriname SR.gif">
                            <label for="regSouthAmerika_14" class="checkbox_name">
                                <p>Suriname</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[37][15]" id="regSouthAmerika_15" class="checkbox_flag W25 Y25 regSouthAmerika regAll" value="TT" checked="">
                            <img src="/img/region/southAmerica/Trinidad And Tobago TT.gif">
                            <label for="regSouthAmerika_15" class="checkbox_name">
                                <p>Trinidad And Tobago</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[37][16]" id="regSouthAmerika_16" class="checkbox_flag W25 Y25 regSouthAmerika regAll" value="UY" checked="">
                            <img src="/img/region/southAmerica/Uruguay UY.gif">
                            <label for="regSouthAmerika_16" class="checkbox_name">
                                <p>Uruguay</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" name="PROPERTY[37][17]" id="regSouthAmerika_17" class="checkbox_flag W25 Y25 regSouthAmerika regAll" value="VE" checked="">
                            <img src="/img/region/southAmerica/Venezuela VE.gif">
                            <label for="regSouthAmerika_17" class="checkbox_name">
                                <p>Venezuela</p>
                            </label>
                            <br>
                        </div>
                        <script>
                            $(document).ready(function () {
                                $("#CheckSouthAmerika").click(function () {
                                    if (!$("#CheckSouthAmerika").is(":checked"))
                                        $(".regSouthAmerika").removeAttr("checked");
                                    else
                                        $(".regSouthAmerika").attr("checked", "checked");
                                });
                            });
                        </script>
                    </div>
                    <div class="W450 botmarg17" style="display: none;">
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonSouthAmerika_0" class="checkbox_flag W25 Y25 cursor_allowed" value="AR" checked="" disabled="">
                            <img src="/img/region/southAmerica/Argentina AR.gif">
                            <label for="regNonSouthAmerika_0" class="checkbox_name cursor_allowed">
                                <p>Argentina</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonSouthAmerika_1" class="checkbox_flag W25 Y25 cursor_allowed" value="AW" checked="" disabled="">
                            <img src="/img/region/southAmerica/Aruba AW.gif">
                            <label for="regNonSouthAmerika_1" class="checkbox_name cursor_allowed">
                                <p>Aruba</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonSouthAmerika_2" class="checkbox_flag W25 Y25 cursor_allowed" value="BO" checked="" disabled="">
                            <img src="/img/region/southAmerica/Bolivia BO.gif">
                            <label for="regNonSouthAmerika_2" class="checkbox_name cursor_allowed">
                                <p>Bolivia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonSouthAmerika_3" class="checkbox_flag W25 Y25 cursor_allowed" value="BR" checked="" disabled="">
                            <img src="/img/region/southAmerica/Brazil BR.gif">
                            <label for="regNonSouthAmerika_3" class="checkbox_name cursor_allowed">
                                <p>Brazil</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonSouthAmerika_4" class="checkbox_flag W25 Y25 cursor_allowed" value="CL" checked="" disabled="">
                            <img src="/img/region/southAmerica/Chile CL.gif">
                            <label for="regNonSouthAmerika_4" class="checkbox_name cursor_allowed">
                                <p>Chile</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonSouthAmerika_5" class="checkbox_flag W25 Y25 cursor_allowed" value="CO" checked="" disabled="">
                            <img src="/img/region/southAmerica/Colombia CO.gif">
                            <label for="regNonSouthAmerika_5" class="checkbox_name cursor_allowed">
                                <p>Colombia</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonSouthAmerika_6" class="checkbox_flag W25 Y25 cursor_allowed" value="EC" checked="" disabled="">
                            <img src="/img/region/southAmerica/Ecuador EC.gif">
                            <label for="regNonSouthAmerika_6" class="checkbox_name cursor_allowed">
                                <p>Ecuador</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonSouthAmerika_7" class="checkbox_flag W25 Y25 cursor_allowed" value="FK" checked="" disabled="">
                            <img src="/img/region/southAmerica/Falkland Islands FK.gif">
                            <label for="regNonSouthAmerika_7" class="checkbox_name cursor_allowed">
                                <p>Falkland Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonSouthAmerika_8" class="checkbox_flag W25 Y25 cursor_allowed" value="GF" checked="" disabled="">
                            <img src="/img/region/southAmerica/French Guiana GF.gif">
                            <label for="regNonSouthAmerika_8" class="checkbox_name cursor_allowed">
                                <p>French Guiana</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonSouthAmerika_9" class="checkbox_flag W25 Y25 cursor_allowed" value="GY" checked="" disabled="">
                            <img src="/img/region/southAmerica/Guyana GY.gif">
                            <label for="regNonSouthAmerika_9" class="checkbox_name cursor_allowed">
                                <p>Guyana</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonSouthAmerika_10" class="checkbox_flag W25 Y25 cursor_allowed" value="PY" checked="" disabled="">
                            <img src="/img/region/southAmerica/Paraguay PY.gif">
                            <label for="regNonSouthAmerika_10" class="checkbox_name cursor_allowed">
                                <p>Paraguay</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonSouthAmerika_11" class="checkbox_flag W25 Y25 cursor_allowed" value="PE" checked="" disabled="">
                            <img src="/img/region/southAmerica/Peru PE.gif">
                            <label for="regNonSouthAmerika_11" class="checkbox_name cursor_allowed">
                                <p>Peru</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonSouthAmerika_12" class="checkbox_flag W25 Y25 cursor_allowed" value="VC" checked="" disabled="">
                            <img src="/img/region/southAmerica/Saint Vincent And The Grenadines VC.gif">
                            <label for="regNonSouthAmerika_12" class="checkbox_name cursor_allowed">
                                <p>Saint Vincent And The Grenadines</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonSouthAmerika_13" class="checkbox_flag W25 Y25 cursor_allowed" value="GS" checked="" disabled="">
                            <img src="/img/region/southAmerica/South Georgia And The South Sandwich Islands GS.gif">
                            <label for="regNonSouthAmerika_13" class="checkbox_name cursor_allowed">
                                <p>South Georgia And The South Sandwich Islands</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonSouthAmerika_14" class="checkbox_flag W25 Y25 cursor_allowed" value="SR" checked="" disabled="">
                            <img src="/img/region/southAmerica/Suriname SR.gif">
                            <label for="regNonSouthAmerika_14" class="checkbox_name cursor_allowed">
                                <p>Suriname</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonSouthAmerika_15" class="checkbox_flag W25 Y25 cursor_allowed" value="TT" checked="" disabled="">
                            <img src="/img/region/southAmerica/Trinidad And Tobago TT.gif">
                            <label for="regNonSouthAmerika_15" class="checkbox_name cursor_allowed">
                                <p>Trinidad And Tobago</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonSouthAmerika_16" class="checkbox_flag W25 Y25 cursor_allowed" value="UY" checked="" disabled="">
                            <img src="/img/region/southAmerica/Uruguay UY.gif">
                            <label for="regNonSouthAmerika_16" class="checkbox_name cursor_allowed">
                                <p>Uruguay</p>
                            </label>
                            <br>
                        </div>
                        <div class="checkbox_area">
                            <input type="checkbox" id="regNonSouthAmerika_17" class="checkbox_flag W25 Y25 cursor_allowed" value="VE" checked="" disabled="">
                            <img src="/img/region/southAmerica/Venezuela VE.gif">
                            <label for="regNonSouthAmerika_17" class="checkbox_name cursor_allowed">
                                <p>Venezuela</p>
                            </label>
                            <br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="release_button_block">
        <input type="submit" name="iblock_apply" class="apply W160" value="СОХРАНИТЬ">
	</div>
</asp:Content>
