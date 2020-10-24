<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/template/app/app.Master" CodeBehind="profile-edit.aspx.vb" Inherits="contentoom.AppUserProfileEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Редактирование профиля - личный кабинет
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderApp" runat="server">
    <div class="bx-auth-profile">


        <form method="post" name="form1" action="/app/user/profile-edit.php" enctype="multipart/form-data">

            <!--Заголовок 1-->
            <div class="release_title">
                <h2>Личный кабинет</h2>
            </div>

            <!--Заголовок 2-->
            <div class="release_subtitle">
                <h1>РЕДАКТИРОВАНИЕ ПРОФИЛЯ</h1>
            </div>

            <!--топ меню-->
            <div class="release_menu_top" id="release_menu_top">
                <!--ОСНОВНЫЕ ДАННЫЕ-->
                <div class="full_elem_menu">
                    <a href="#main">
                        <div class="elem_menu">
                            Основные данные               
                        </div>
                    </a>
                </div>

                <!--Паспортные данные-->
                <div class="full_elem_menu" id="onoffMenu">
                    <a href="#passport">
                        <div class="elem_menu">
                            Паспортные данные               
                        </div>
                    </a>
                </div>

                <!--Документы-->
                <div class="full_elem_menu">
                    <a href="#doc">
                        <div class="elem_menu">
                            Документы               
                        </div>
                    </a>
                </div>

                <!--ДОПОЛНИТЕЛЬНЫЕ ДАННЫЕ-->
                <div class="full_elem_menu">
                    <a href="#plus">
                        <div class="elem_menu">
                            Дополнительные данные               
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

            <div class="botmarg17">
                <h2 id="main" style="padding-top: 66px; margin-top: -66px;">ОСНОВНЫЕ ДАННЫЕ:</h2>
            </div>

            <!--Тип пользователя-->
            <div class="elem_name">Тип пользователя*</div>
            <div class="botmarg17">
                <select id="UF_ACCOUNT_TYPE" value="">
                    <option value="1" selected="selected">Физическое лицо</option>
                    <option value="2">Индивидуальный предприниматель</option>
                    <option value="3">Юридическое лицо</option>
                </select>
            </div>

            <script>
                $("#UF_ACCOUNT_TYPE").change(function () {
                    $('#refresh_area').html("Загрузка.");
                    $.ajax({
                        type: "POST",
                        url: "/app/user/refresh/profile-area.php",
                        data: { "ACCOUNT_TYPE": $("#UF_ACCOUNT_TYPE").val() },
                        dataType: 'html',
                        cache: false,
                    })
                        .done(function (result) {
                            $('#refresh_area').html(result);
                        })
                        .fail(function (error) {
                            $('#refresh_area').html("Ошибка, попробуйте обновить страницу.");
                        });
                    //			паспорт
                    $.ajax({
                        type: "POST",
                        url: "/app/user/refresh/profile-area.php",
                        data: { "ACCOUNT_TYPE": $("#UF_ACCOUNT_TYPE").val() },
                        dataType: 'html',
                        cache: false,
                    })
                        .done(function (result) {
                            $('#refresh_area').html(result);
                        })
                        .fail(function (error) {
                            $('#refresh_area').html("Ошибка, попробуйте обновить страницу.");
                        });
                    //			меню
                    //			требуемые документы
                    if ($("#UF_ACCOUNT_TYPE").val() == 1) {
                        $('#txtdoc').html("Скан паспорта, включая страницу регистрации");
                        $('#onoffMenu').css('display', 'block');
                        $('#passport_area').css('display', 'block');

                        $('#UF_PAYMENT').css('display', 'block');
                        $('#UF_INN').css('display', 'block');
                        $('#UF_SNILS').css('display', 'block');
                        $('#UF_OGRN').css('display', 'none');
                        $('#UF_BANK_NAME').css('display', 'none');
                        $('#UF_BIK_BANK').css('display', 'none');
                        $('#UF_CURRENT_ACCOUNT').css('display', 'none');
                        $('#UF_CORRESPONDENT_BANK_ACCOUNT').css('display', 'none');
                        $('#UF_COMPANY_NAME').css('display', 'none');
                        $('#UF_ENTITY_FORM').css('display', 'none');
                        $('#UF_LEGAL_ADDRESS_ORGANIZATION').css('display', 'none');
                        $('#UF_ACTUAL_ADDRESS_ORGANIZATION').css('display', 'none');
                        $('#UF_PPC_ORGANIZATION').css('display', 'none');
                        $('#UF_CEO_ORGANIZATION').css('display', 'none');

                        $('#NAME_UF_PAYMENT').css('display', 'block');
                        $('#NAME_UF_INN').css('display', 'block');
                        $('#NAME_UF_SNILS').css('display', 'block');
                        $('#NAME_UF_OGRN').css('display', 'none');
                        $('#NAME_UF_BANK_NAME').css('display', 'none');
                        $('#NAME_UF_BIK_BANK').css('display', 'none');
                        $('#NAME_UF_CURRENT_ACCOUNT').css('display', 'none');
                        $('#NAME_UF_CORRESPONDENT_BANK_ACCOUNT').css('display', 'none');
                        $('#NAME_UF_COMPANY_NAME').css('display', 'none');
                        $('#NAME_UF_ENTITY_FORM').css('display', 'none');
                        $('#NAME_UF_LEGAL_ADDRESS_ORGANIZATION').css('display', 'none');
                        $('#NAME_UF_ACTUAL_ADDRESS_ORGANIZATION').css('display', 'none');
                        $('#NAME_UF_PPC_ORGANIZATION').css('display', 'none');
                        $('#NAME_UF_CEO_ORGANIZATION').css('display', 'none');
                    }
                    if ($("#UF_ACCOUNT_TYPE").val() == 2) {
                        $('#txtdoc').html("Скан паспорта, включая страницу регистрации, свидетельство о госрегистрации физлица в налоговой как ИП");
                        $('#onoffMenu').css('display', 'block');
                        $('#passport_area').css('display', 'block');

                        $('#UF_PAYMENT').css('display', 'none');
                        $('#UF_INN').css('display', 'none');
                        $('#UF_SNILS').css('display', 'none');
                        $('#UF_TIN').css('display', 'block');
                        $('#UF_OGRN').css('display', 'block');
                        $('#UF_BANK_NAME').css('display', 'block');
                        $('#UF_BIK_BANK').css('display', 'block');
                        $('#UF_CURRENT_ACCOUNT').css('display', 'block');
                        $('#UF_CORRESPONDENT_BANK_ACCOUNT').css('display', 'block');
                        $('#UF_COMPANY_NAME').css('display', 'none');
                        $('#UF_ENTITY_FORM').css('display', 'none');
                        $('#UF_LEGAL_ADDRESS_ORGANIZATION').css('display', 'none');
                        $('#UF_ACTUAL_ADDRESS_ORGANIZATION').css('display', 'none');
                        $('#UF_PPC_ORGANIZATION').css('display', 'none');
                        $('#UF_CEO_ORGANIZATION').css('display', 'none');

                        $('#NAME_UF_PAYMENT').css('display', 'none');
                        $('#NAME_UF_INN').css('display', 'none');
                        $('#NAME_UF_SNILS').css('display', 'none');
                        $('#NAME_UF_TIN').css('display', 'block');
                        $('#NAME_UF_OGRN').css('display', 'block');
                        $('#NAME_UF_BANK_NAME').css('display', 'block');
                        $('#NAME_UF_BIK_BANK').css('display', 'block');
                        $('#NAME_UF_CURRENT_ACCOUNT').css('display', 'block');
                        $('#NAME_UF_CORRESPONDENT_BANK_ACCOUNT').css('display', 'block');
                        $('#NAME_UF_COMPANY_NAME').css('display', 'none');
                        $('#NAME_UF_ENTITY_FORM').css('display', 'none');
                        $('#NAME_UF_LEGAL_ADDRESS_ORGANIZATION').css('display', 'none');
                        $('#NAME_UF_ACTUAL_ADDRESS_ORGANIZATION').css('display', 'none');
                        $('#NAME_UF_PPC_ORGANIZATION').css('display', 'none');
                        $('#NAME_UF_CEO_ORGANIZATION').css('display', 'none');


                    }
                    if ($("#UF_ACCOUNT_TYPE").val() == 3) {
                        $('#txtdoc').html("Свидетельство о госрегистрации организации");
                        $('#onoffMenu').css('display', 'none');
                        $('#passport_area').css('display', 'none');

                        $('#UF_PAYMENT').css('display', 'none');
                        $('#UF_INN').css('display', 'none');
                        $('#UF_SNILS').css('display', 'none');
                        $('#UF_TIN').css('display', 'block');
                        $('#UF_OGRN').css('display', 'block');
                        $('#UF_BANK_NAME').css('display', 'block');
                        $('#UF_BIK_BANK').css('display', 'block');
                        $('#UF_CURRENT_ACCOUNT').css('display', 'block');
                        $('#UF_CORRESPONDENT_BANK_ACCOUNT').css('display', 'block');
                        $('#UF_COMPANY_NAME').css('display', 'block');
                        $('#UF_ENTITY_FORM').css('display', 'block');
                        $('#UF_LEGAL_ADDRESS_ORGANIZATION').css('display', 'block');
                        $('#UF_ACTUAL_ADDRESS_ORGANIZATION').css('display', 'block');
                        $('#UF_PPC_ORGANIZATION').css('display', 'block');
                        $('#UF_CEO_ORGANIZATION').css('display', 'block');

                        $('#NAME_UF_PAYMENT').css('display', 'none');
                        $('#NAME_UF_INN').css('display', 'none');
                        $('#NAME_UF_SNILS').css('display', 'none');
                        $('#NAME_UF_TIN').css('display', 'block');
                        $('#NAME_UF_OGRN').css('display', 'block');
                        $('#NAME_UF_BANK_NAME').css('display', 'block');
                        $('#NAME_UF_BIK_BANK').css('display', 'block');
                        $('#NAME_UF_CURRENT_ACCOUNT').css('display', 'block');
                        $('#NAME_UF_CORRESPONDENT_BANK_ACCOUNT').css('display', 'block');
                        $('#NAME_UF_COMPANY_NAME').css('display', 'block');
                        $('#NAME_UF_ENTITY_FORM').css('display', 'block');
                        $('#NAME_UF_LEGAL_ADDRESS_ORGANIZATION').css('display', 'block');
                        $('#NAME_UF_ACTUAL_ADDRESS_ORGANIZATION').css('display', 'block');
                        $('#NAME_UF_PPC_ORGANIZATION').css('display', 'block');
                        $('#NAME_UF_CEO_ORGANIZATION').css('display', 'block');

                    }

                });
            </script>

            <!--Вид пользователя-->
            <div class="elem_name">Вид пользователя*</div>
            <div class="botmarg17">
                <select id="UF_UR_VIEW" value="1">
                    <option value="">(не выбрано)</option>
                    <option value="1" selected="selected">артист</option>
                    <option value="2">лейбл</option>
                    <option value="3">дистрибутор</option>
                </select>
            </div>

            <!--Фамилия-->
            <div class="elem_name">Фамилия*</div>
            <div class="botmarg17">
                <input type="text" class="input_text W450" id="LAST_NAME" value="Койчиев">
            </div>

            <!--Имя-->
            <div class="elem_name">Имя*</div>
            <div class="botmarg17">
                <input type="text" class="input_text W450" id="FIRST_NAME" value="Хусниддин">
            </div>

            <!--Отчество-->
            <div class="elem_name">Отчество</div>
            <div class="botmarg17">
                <input type="text" class="input_text W450" id="SECOND_NAME" value="Хакимбекович">
            </div>

            <!--Дата рождения-->
            <div class="elem_name">Дата рождения*</div>
            <div class="botmarg37 flexim">
                <input type="text" class="input_text W400 mask-date" name="PERSONAL_BIRTHDAY" id="PERSONAL_BIRTHDAY" value="22.07.2020">

                <img src="/img/ico/calendar.gif" alt="Выбрать дату в календаре" class="calendar-icon" onclick="BX.calendar({node:this, field:'PERSONAL_BIRTHDAY', bTime: false, currentTime: '1595931360', bHideTime: false});" onmouseover="BX.addClass(this, 'calendar-icon-hover');" onmouseout="BX.removeClass(this, 'calendar-icon-hover');" border="0">
            </div>

            <div id="passport_area">

                <div class="botmarg17">
                    <h2 id="passport" style="padding-top: 66px; margin-top: -66px;">ПАСПОРТНЫЕ ДАННЫЕ</h2>
                </div>

                <!--Серия и номер-->
                <div class="elem_name">Серия и номер*</div>
                <div class="botmarg17">
                    <input type="text" class="input_text W450" id="UF_PASSPORT_NUMB" value="12345 123456780">
                </div>
                <!--Кем выдан-->
                <div class="elem_name">Кем выдан*</div>
                <div class="botmarg17">
                    <input type="text" class="input_text W450" id="UF_PASSPORT_ISSUE" value="dfg">
                </div>
                <!--Код подразделения-->
                <div class="elem_name">Код подразделения*</div>
                <div class="botmarg17">
                    <input type="text" class="input_text W450" id="UF_PASSPORT_CODE" value="dfg">
                </div>
                <!--Дата выдачи-->
                <div class="elem_name">Дата выдачи*</div>
                <div class="botmarg17 flexim">
                    <input type="text" class="input_text W400 mask-date" name="UF_PASSPORT_DATE_ISSUE" id="UF_PASSPORT_DATE_ISSUE" value="09.09.2020">

                    <img src="/img/ico/calendar.gif" alt="Выбрать дату в календаре" class="calendar-icon" onclick="BX.calendar({node:this, field:'UF_PASSPORT_DATE_ISSUE', bTime: false, currentTime: '1595931360', bHideTime: false});" onmouseover="BX.addClass(this, 'calendar-icon-hover');" onmouseout="BX.removeClass(this, 'calendar-icon-hover');" border="0">
                </div>
                <!--Адрес регистрации-->
                <div class="elem_name">Адрес регистрации*</div>
                <div class="botmarg17">
                    <input type="text" class="input_text W450" id="UF_ADRESS" value="г.Нижневартовск, ХМАО-Югра, Чапаева 83">
                </div>
                <!--Гражданство-->
                <div class="elem_name">Гражданство*</div>
                <div class="botmarg37">
                    <select class="typeselect" id="UF_CITIZENSHIP">
                        <option value="">(не выбрано)</option>
                        <option value="16">Австралия</option>
                        <option value="17">Австрия</option>
                        <option value="2">Азербайджан</option>
                        <option value="18">Албания</option>
                        <option value="19">Алжир</option>
                        <option value="232">Американские Виргинские острова</option>
                        <option value="182">Ангилья</option>
                        <option value="20">Ангола</option>
                        <option value="146">Андорра</option>
                        <option value="183">Антарктида</option>
                        <option value="184">Антигуа и Барбуда</option>
                        <option value="210">Антильские острова</option>
                        <option value="21">Арабские Эмираты</option>
                        <option value="22">Аргентина</option>
                        <option value="3">Армения</option>
                        <option value="23">Аруба</option>
                        <option value="24">Афганистан</option>
                        <option value="25">Багамские острова</option>
                        <option value="26">Бангладеш</option>
                        <option value="27">Барбадос</option>
                        <option value="145">Бахрейн</option>
                        <option value="4">Беларусь</option>
                        <option value="147">Белиз</option>
                        <option value="28">Бельгия</option>
                        <option value="29">Бенин</option>
                        <option value="30">Бермудские острова</option>
                        <option value="31">Болгария</option>
                        <option value="32">Боливия</option>
                        <option value="33">Босния и Герцеговина</option>
                        <option value="149">Ботсвана</option>
                        <option value="34">Бразилия</option>
                        <option value="187">Британские Виргинские острова</option>
                        <option value="186">Британские территории в Индийском Океане</option>
                        <option value="35">Бруней</option>
                        <option value="150">Буркина Фасо</option>
                        <option value="151">Бурунди</option>
                        <option value="148">Бутан</option>
                        <option value="233">Вануату</option>
                        <option value="234">Ватикан</option>
                        <option value="36">Великобритания</option>
                        <option value="37">Венгрия</option>
                        <option value="38">Венесуэлла</option>
                        <option value="156">Восточный Тимор</option>
                        <option value="39">Вьетнам</option>
                        <option value="161">Габон</option>
                        <option value="40">Гаити</option>
                        <option value="41">Гамбия</option>
                        <option value="162">Гана</option>
                        <option value="43">Гваделупа</option>
                        <option value="44">Гватемала</option>
                        <option value="196">Гвиана</option>
                        <option value="45">Гвинея</option>
                        <option value="163">Гвинея-Биссау</option>
                        <option value="46">Германия</option>
                        <option value="47">Гибралтар</option>
                        <option value="42">Гондурас</option>
                        <option value="49">Гонконг</option>
                        <option value="50">Гренада</option>
                        <option value="51">Гренландия</option>
                        <option value="52">Греция</option>
                        <option value="5">Грузия</option>
                        <option value="53">Гуана</option>
                        <option value="54">Дания</option>
                        <option value="57">Демократическая республика Конго</option>
                        <option value="155">Джибути</option>
                        <option value="193">Доминика</option>
                        <option value="55">Доминиканская Республика</option>
                        <option value="56">Египет</option>
                        <option value="58">Замбия</option>
                        <option value="180">Западная Сахара</option>
                        <option value="59">Зимбабве</option>
                        <option value="60">Израиль</option>
                        <option value="61">Индия</option>
                        <option value="62">Индонезия</option>
                        <option value="63">Иордания</option>
                        <option value="64">Ирак</option>
                        <option value="65">Иран</option>
                        <option value="66">Ирландия</option>
                        <option value="67">Исландия</option>
                        <option value="68">Испания</option>
                        <option value="69">Италия</option>
                        <option value="70">Йемен</option>
                        <option value="189">Кабо-Верде</option>
                        <option value="6">Казахстан</option>
                        <option value="71">Каймановы острова</option>
                        <option value="78">Камбоджа</option>
                        <option value="72">Камерун</option>
                        <option value="73">Канада</option>
                        <option value="172">Катар</option>
                        <option value="74">Кения</option>
                        <option value="75">Кипр</option>
                        <option value="7" selected="selected">Киргизия</option>
                        <option value="200">Кирибати</option>
                        <option value="76">Китай</option>
                        <option value="191">Кокосовые острова</option>
                        <option value="77">Колумбия</option>
                        <option value="153">Коморос</option>
                        <option value="79">Конго</option>
                        <option value="164">Корея (Северная)</option>
                        <option value="80">Корея (Южная)</option>
                        <option value="81">Коста Рика</option>
                        <option value="154">Кот-Д`ивуар</option>
                        <option value="82">Куба</option>
                        <option value="83">Кувейт</option>
                        <option value="201">Лаос</option>
                        <option value="8">Латвия</option>
                        <option value="166">Лесото</option>
                        <option value="84">Либерия</option>
                        <option value="165">Ливан</option>
                        <option value="167">Ливия</option>
                        <option value="9">Литва</option>
                        <option value="85">Лихтенштейн</option>
                        <option value="86">Люксембург</option>
                        <option value="205">Маврикий</option>
                        <option value="87">Мавритания</option>
                        <option value="88">Мадагаскар</option>
                        <option value="206">Майотта</option>
                        <option value="202">Макао</option>
                        <option value="89">Македония</option>
                        <option value="203">Малави</option>
                        <option value="90">Малайзия</option>
                        <option value="91">Мали</option>
                        <option value="168">Мальдивы</option>
                        <option value="92">Мальта</option>
                        <option value="204">Мартиника</option>
                        <option value="169">Маршалские острова</option>
                        <option value="93">Мексика</option>
                        <option value="207">Микронезия</option>
                        <option value="94">Мозамбик</option>
                        <option value="10">Молдавия</option>
                        <option value="95">Монако</option>
                        <option value="96">Монголия</option>
                        <option value="208">Монтсеррат</option>
                        <option value="97">Морокко</option>
                        <option value="188">Мьянма</option>
                        <option value="98">Намибия</option>
                        <option value="209">Науру</option>
                        <option value="99">Непал</option>
                        <option value="170">Нигер</option>
                        <option value="100">Нигерия</option>
                        <option value="48">Нидерланды</option>
                        <option value="102">Никарагуа</option>
                        <option value="212">Ниуэ</option>
                        <option value="103">Новая Зеландия</option>
                        <option value="211">Новая Каледония</option>
                        <option value="104">Норвегия</option>
                        <option value="171">Оман</option>
                        <option value="185">Остров Буве</option>
                        <option value="213">Остров Норфолк</option>
                        <option value="216">Остров Питкэрн</option>
                        <option value="190">Остров Рождества</option>
                        <option value="218">Остров Св.Елены</option>
                        <option value="192">Острова Кука</option>
                        <option value="221">Острова Сен-Пьер и Микелон</option>
                        <option value="219">Острова Сент-Киттс и Невис</option>
                        <option value="230">Острова Тёркс и Кайкос</option>
                        <option value="235">Острова Уоллис и Футуна</option>
                        <option value="199">Острова Херд и Макдоналд</option>
                        <option value="226">Острова Шпицберген и Ян-Майен</option>
                        <option value="105">Пакистан</option>
                        <option value="214">Палау</option>
                        <option value="215">Палестина</option>
                        <option value="106">Панама</option>
                        <option value="107">Папуа Новая Гвинея</option>
                        <option value="108">Парагвай</option>
                        <option value="109">Перу</option>
                        <option value="110">Польша</option>
                        <option value="111">Португалия</option>
                        <option value="112">Пуэрто Рико</option>
                        <option value="217">Реюньон</option>
                        <option value="1">Россия</option>
                        <option value="173">Руанда</option>
                        <option value="113">Румыния</option>
                        <option value="122">США</option>
                        <option value="174">Самоа</option>
                        <option value="223">Сан-Марино</option>
                        <option value="220">Санта-Лючия</option>
                        <option value="114">Саудовская Аравия</option>
                        <option value="178">Свазиленд</option>
                        <option value="175">Сейшеллы</option>
                        <option value="115">Сенегал</option>
                        <option value="222">Сент-Винсент и Гренадины</option>
                        <option value="142">Сербия</option>
                        <option value="116">Сингапур</option>
                        <option value="117">Сирия</option>
                        <option value="118">Словакия</option>
                        <option value="119">Словения</option>
                        <option value="224">Соломоновы острова</option>
                        <option value="120">Сомали</option>
                        <option value="121">Судан</option>
                        <option value="177">Суринам</option>
                        <option value="176">Сьерра-Леоне</option>
                        <option value="11">Таджикистан</option>
                        <option value="124">Таиланд</option>
                        <option value="123">Тайвань</option>
                        <option value="179">Танзания</option>
                        <option value="227">Того</option>
                        <option value="228">Токелау</option>
                        <option value="229">Тонга</option>
                        <option value="125">Тринидад и Тобаго</option>
                        <option value="231">Тувалу</option>
                        <option value="126">Тунис</option>
                        <option value="12">Туркменистан</option>
                        <option value="127">Турция</option>
                        <option value="128">Уганда</option>
                        <option value="13">Узбекистан</option>
                        <option value="14">Украина</option>
                        <option value="129">Уругвай</option>
                        <option value="195">Фарерские острова</option>
                        <option value="160">Фижи</option>
                        <option value="130">Филиппины</option>
                        <option value="131">Финляндия</option>
                        <option value="194">Фолклендские острова</option>
                        <option value="132">Франция</option>
                        <option value="197">Французская Полинезия</option>
                        <option value="181">Хорватия</option>
                        <option value="152">Центральноафриканская Республика</option>
                        <option value="133">Чад</option>
                        <option value="236">Черногория</option>
                        <option value="134">Чехия</option>
                        <option value="135">Чили</option>
                        <option value="136">Швейцария</option>
                        <option value="137">Швеция</option>
                        <option value="138">Шри-Ланка</option>
                        <option value="139">Эквадор</option>
                        <option value="158">Экваториальная Гвинея</option>
                        <option value="157">Эль Сальвадор</option>
                        <option value="159">Эритрея</option>
                        <option value="15">Эстония</option>
                        <option value="140">Эфиопия</option>
                        <option value="141">ЮАР</option>
                        <option value="225">Южная Георгия и Южные Сандвичевы острова</option>
                        <option value="198">Южные Французские территории</option>
                        <option value="143">Ямайка</option>
                        <option value="144">Япония</option>
                    </select>
                </div>
            </div>

            <!--Загрука документов-->
            <div class="botmarg17">
                <h2 id="doc" style="padding-top: 66px; margin-top: -66px;">ДОКУМЕНТЫ</h2>
            </div>

            <p>Загрузите следующие документы:</p>
            <div id="txtdoc" class="botmarg17">
                <p>Скан паспорта, включая страницу регистрации</p>


            </div>

            <div>
                <div class="DocumentUpload fs-upload-element fs-upload fs-light">
                    <div class="fs-upload-target">ЗАГРУЗИТЬ</div>
                    <input class="fs-upload-input" type="file" multiple=""></div>
                <div id="DocumentArea" class="DocumentArea" style="width: 570px;">
                    <div id="DocumentResult" class="DocumentResult"></div>
                </div>
            </div>
            <!--Область контента-->
            <div id="refresh_content" class="botmarg37">
                <ul id="doc_list" style="list-style-type: none;">
                    <li class="doc_elem">
                        <div class="flexim" style="align-items: center;">

                            <!--Даннеы файла-->
                            <div style="width: 100%">
                                <span style="display: block; line-height: 27px;">doc Без названия — копия.gif</span>
                                <span style="display: block; font-size: 13px; color: #93989d;">Добавлен 13.10.2020 в  11:37</span>
                            </div>

                            <!--Скачать-->
                            <a download="" href="/user-uploads/profile/1/doc Без названия — копия.gif" style="display: contents;" title="скачать">
                                <img src="/img/ico/download_active.svg" class="black" width="30px" height="30px"></a>

                            <!--Удалить-->
                            <div id="hideBlock_0" style="display: none;">
                                <!--Вы действительно хотите удалить файл?-->
                                <h2>Вы действительно хотите удалить файл?</h2>
                                <!--Название файла-->
                                <h2>doc Без названия — копия.gif</h2>
                            </div>

                            <div id="delRelease_0" style="display: contents;" class="delRelease_0 black">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px"></div>

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_0 = BX.PopupWindow('call_feedback_0', window.body, {
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
                                                text: "ДА",
                                                className: "button_block green W75",
                                                events: {
                                                    click: function () {

                                                        $.ajax({
                                                            type: "POST",
                                                            url: "/app/user/refresh/delDocument.php", //загружаемая страница
                                                            data: {
                                                                deleteElem: 0,
                                                                USER_ID: 1
                                                            }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    type: "POST",
                                                                    url: "/app/user/refresh/refresh-list-document.php", //загружаемая страница
                                                                    data: { USER_ID: 1 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        oPopup_0.close();
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "НЕТ",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_0.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_0.setContent(BX('hideBlock_0'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'delRelease_0' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_0.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_0)
                                    );
                                });
                            </script>

                        </div>
                    </li>
                    <li class="doc_elem">
                        <div class="flexim" style="align-items: center;">

                            <!--Даннеы файла-->
                            <div style="width: 100%">
                                <span style="display: block; line-height: 27px;">doc img.png</span>
                                <span style="display: block; font-size: 13px; color: #93989d;">Добавлен 13.10.2020 в  11:37</span>
                            </div>

                            <!--Скачать-->
                            <a download="" href="/user-uploads/profile/1/doc img.png" style="display: contents;" title="скачать">
                                <img src="/img/ico/download_active.svg" class="black" width="30px" height="30px"></a>

                            <!--Удалить-->
                            <div id="hideBlock_1" style="display: none;">
                                <!--Вы действительно хотите удалить файл?-->
                                <h2>Вы действительно хотите удалить файл?</h2>
                                <!--Название файла-->
                                <h2>doc img.png</h2>
                            </div>

                            <div id="delRelease_1" style="display: contents;" class="delRelease_1 black">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px"></div>

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_1 = BX.PopupWindow('call_feedback_1', window.body, {
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
                                                text: "ДА",
                                                className: "button_block green W75",
                                                events: {
                                                    click: function () {

                                                        $.ajax({
                                                            type: "POST",
                                                            url: "/app/user/refresh/delDocument.php", //загружаемая страница
                                                            data: {
                                                                deleteElem: 1,
                                                                USER_ID: 1
                                                            }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    type: "POST",
                                                                    url: "/app/user/refresh/refresh-list-document.php", //загружаемая страница
                                                                    data: { USER_ID: 1 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        oPopup_1.close();
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "НЕТ",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_1.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_1.setContent(BX('hideBlock_1'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'delRelease_1' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_1.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_1)
                                    );
                                });
                            </script>

                        </div>
                    </li>
                    <li class="doc_elem">
                        <div class="flexim" style="align-items: center;">

                            <!--Даннеы файла-->
                            <div style="width: 100%">
                                <span style="display: block; line-height: 27px;">doc gori-3840x2160-gori-21590.jpg</span>
                                <span style="display: block; font-size: 13px; color: #93989d;">Добавлен 13.10.2020 в  11:37</span>
                            </div>

                            <!--Скачать-->
                            <a download="" href="/user-uploads/profile/1/doc gori-3840x2160-gori-21590.jpg" style="display: contents;" title="скачать">
                                <img src="/img/ico/download_active.svg" class="black" width="30px" height="30px"></a>

                            <!--Удалить-->
                            <div id="hideBlock_2" style="display: none;">
                                <!--Вы действительно хотите удалить файл?-->
                                <h2>Вы действительно хотите удалить файл?</h2>
                                <!--Название файла-->
                                <h2>doc gori-3840x2160-gori-21590.jpg</h2>
                            </div>

                            <div id="delRelease_2" style="display: contents;" class="delRelease_2 black">
                                <img src="/img/ico/delete_active.svg" class="black" style="margin-left: 10px; cursor: pointer" width="30px" height="30px"></div>

                            <script>
                                window.BXDEBUG = true;
                                BX.ready(function () {
                                    var oPopup_2 = BX.PopupWindow('call_feedback_2', window.body, {
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
                                                text: "ДА",
                                                className: "button_block green W75",
                                                events: {
                                                    click: function () {

                                                        $.ajax({
                                                            type: "POST",
                                                            url: "/app/user/refresh/delDocument.php", //загружаемая страница
                                                            data: {
                                                                deleteElem: 2,
                                                                USER_ID: 1
                                                            }, //параметры которые передаём
                                                            dataType: 'html', //Тип данных
                                                            cache: false,
                                                        })
                                                            .done(function (result) {
                                                                $.ajax({
                                                                    type: "POST",
                                                                    url: "/app/user/refresh/refresh-list-document.php", //загружаемая страница
                                                                    data: { USER_ID: 1 }, //параметры которые передаём
                                                                    dataType: 'html', //Тип данных
                                                                    cache: false,
                                                                })
                                                                    .done(function (result) {
                                                                        oPopup_2.close();
                                                                        $("#refresh_content").html(result);
                                                                    })
                                                                    .fail(function (error) {

                                                                    });
                                                            })
                                                            .fail(function (error) {

                                                            });
                                                    }
                                                }
                                            }),
                                            new BX.PopupWindowButton({
                                                text: "НЕТ",
                                                className: "button_block red W75",
                                                events: {
                                                    click: function () {
                                                        oPopup_2.close();
                                                    }
                                                }
                                            })
                                        ]
                                    });
                                    oPopup_2.setContent(BX('hideBlock_2'));
                                    BX.bindDelegate(
                                        document.body, 'click', { className: 'delRelease_2' },
                                        BX.proxy(function (e) {
                                            if (!e)
                                                e = window.event;
                                            oPopup_2.show();
                                            return BX.PreventDefault(e);
                                        }, oPopup_2)
                                    );
                                });
                            </script>

                        </div>
                    </li>
                </ul>
            </div>


            <div class="botmarg17">
                <h2 id="plus" style="padding-top: 66px; margin-top: -66px;">ДОПОЛНИТЕЛЬНЫЕ ДАННЫЕ</h2>
            </div>

            <!--Изменяемая область-->
            <div id="refresh_area">

                <!--Счёт-->
                <div class="elem_name" id="NAME_UF_PAYMENT">Счёт</div>
                <input type="text" class="input_text W450 botmarg17" id="UF_PAYMENT" value="">

                <!--ИНН-->
                <div class="elem_name" id="NAME_UF_INN">ИНН</div>
                <input type="text" class="input_text W450 botmarg17" id="UF_INN" value="">

                <!--ИНН-->
                <div class="elem_name" id="NAME_UF_TIN" style="display: none;">ИНН</div>
                <input type="text" class="input_text W450 botmarg17" id="UF_TIN" value="" style="display: none;">

                <!--СНИЛС-->
                <div class="elem_name" id="NAME_UF_SNILS">СНИЛС</div>
                <input type="text" class="input_text W450 botmarg17" id="UF_SNILS" value="">

                <!--ОГРН-->
                <div class="elem_name" id="NAME_UF_OGRN" style="display: none;">ОГРН</div>
                <input type="text" class="input_text W450 botmarg17" id="UF_OGRN" value="" style="display: none;">

                <!--Наименование банка-->
                <div class="elem_name" id="NAME_UF_BANK_NAME" style="display: none;">Наименование банка</div>
                <input type="text" class="input_text W450 botmarg17" id="UF_BANK_NAME" value="" style="display: none;">

                <!--БИК банка-->
                <div class="elem_name" id="NAME_" style="display: none;">БИК банка</div>
                <input type="text" class="input_text W450 botmarg17" id="UF_BIK_BANK" value="" style="display: none;">

                <!--Расчетный счет в банке (р/с)-->
                <div class="elem_name" id="NAME_UF_CURRENT_ACCOUNT" style="display: none;">Расчетный счет в банке (р/с)</div>
                <input type="text" class="input_text W450 botmarg17" id="UF_CURRENT_ACCOUNT" value="" style="display: none;">

                <!--Корреспондентский счет в банке (к/с)-->
                <div class="elem_name" id="NAME_UF_CORRESPONDENT_BANK_ACCOUNT" style="display: none;">Корреспондентский счет в банке (к/с)</div>
                <input type="text" class="input_text W450 botmarg17" id="UF_CORRESPONDENT_BANK_ACCOUNT" value="" style="display: none;">

                <!--Наименование организации-->
                <div class="elem_name" id="NAME_UF_COMPANY_NAME" style="display: none;">Наименование организации</div>
                <input type="text" class="input_text W450 botmarg17" id="UF_COMPANY_NAME" value="" style="display: none;">

                <!--Форма юридического лица-->
                <div class="elem_name" id="NAME_UF_ENTITY_FORM" style="display: none;">Форма юридического лица</div>
                <input type="text" class="input_text W450 botmarg17" id="UF_ENTITY_FORM" value="" style="display: none;">

                <!--Юридический адрес организации-->
                <div class="elem_name" id="NAME_UF_LEGAL_ADDRESS_ORGANIZATION" style="display: none;">Юридический адрес организации</div>
                <input type="text" class="input_text W450 botmarg17" id="UF_LEGAL_ADDRESS_ORGANIZATION" value="" style="display: none;">

                <!--Фактический адрес организации-->
                <div class="elem_name" id="NAME_UF_ACTUAL_ADDRESS_ORGANIZATION" style="display: none;">Фактический адрес организации</div>
                <input type="text" class="input_text W450 botmarg17" id="UF_ACTUAL_ADDRESS_ORGANIZATION" value="" style="display: none;">

                <!--КПП организации-->
                <div class="elem_name" id="NAME_UF_PPC_ORGANIZATION" style="display: none;">КПП организации</div>
                <input type="text" class="input_text W450 botmarg17" id="UF_PPC_ORGANIZATION" value="" style="display: none;">

                <!--Генеральный директор организации-->
                <div class="elem_name" id="NAME_UF_CEO_ORGANIZATION" style="display: none;">Генеральный директор организации</div>
                <input type="text" class="input_text W450 botmarg17" id="UF_CEO_ORGANIZATION" value="" style="display: none;">
            </div>


            <div class="release_button_block flexim">
                <a href="/pages/app/user/profile-view.aspx" class="button cancel">ОТМЕНА</a>
                <div class="button apply" onclick="SaveParam()">СОХРАНИТЬ</div>

            </div>

        </form>
    </div>
</asp:Content>
