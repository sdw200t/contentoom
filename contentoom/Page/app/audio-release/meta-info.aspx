<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/template/empty/empty.Master" CodeBehind="meta-info.aspx.vb" Inherits="contentoom.AudioReleaseMetaInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderEmpty" runat="server">
    <form class="leftmarg17" id="metadata_add" name="metadata_add" action="/app/audio-release/metadata-edit.php?edit=Y&amp;CODE=865&amp;lang_ui=ru&amp;IFRAME=Y&amp;IFRAME_TYPE=SIDE_SLIDER" method="post" enctype="multipart/form-data">
        <input type="hidden" name="sessid" id="sessid" value="c54a705aa9eba9efd578c880aabbe417">
        <div class="">
            <!--Заголовок 1-->
            <div class="release_title">
                <h2>РЕДАКТИРОВАНИЕ ФОНОГРАММЫ:</h2>
            </div>
            <!--Заголовок 2-->
            <div class="release_title">
                <h1>Повороты судьбы</h1>
            </div>

            <!--Нумерация в списке-->
            <input type="hidden" name="PROPERTY[92][0][VALUE]" class="input_text W450" value="1">

            <!--Ссылка на аудио релиз-->
            <input type="hidden" name="PROPERTY[5][0][VALUE]" class="input_text W450" value="845">

            <!--Инструментальная-->
            <div class="elem_name">
                Инструментальная           
            </div>
            <div class="botmarg37">
                <div class="checkbox" id="PROPERTY_81_0">
                    <input type="checkbox" name="PROPERTY[81][0][VALUE]" id="showcase81_0" class="checkbox_flag W25 Y25" value="yesno_yes">
                    <label for="showcase81_0" class="checkbox_name W400 Y45">
                        <p>Да</p>
                    </label>
                    <br>
                </div>


                <script>
                    let xMauth = 0;
                    let xTauth = 0;

                    $("#showcase81_0").change(function () {
                        if ($("#showcase81_0").prop("checked") == true) {
                            $('input.text_autor_sur')
                                .val("")

                            $('input.text_autor_name')
                                .val("")

                            $('input.text_autor_mid')
                                .val("")

                            $('#area_text_autor').hide();
                            $('#area_lang_words').hide();
                            document.getElementById('PROPERTY_65_0').value = "";


                            var sumPer = xMauth + 1;
                            var numPer = 100 / sumPer;
                            var endPer = 100;

                            for (let i = 0; i <= xMauth; i++) {
                                if (i == xMauth) {
                                    document.getElementById('PROPERTY_83_' + i).value = endPer.toFixed(2);
                                }
                                else {
                                    document.getElementById('PROPERTY_83_' + i).value = numPer.toFixed(2);
                                    endPer = endPer - numPer.toFixed(2);
                                }
                            }
                        }
                        else {
                            $('#area_text_autor').show();
                            $('#area_lang_words').show();

                            var sumPer = xMauth + xTauth + 2;
                            var numPer = 100 / sumPer;
                            var endPer = 100;

                            for (let i = 0; i <= xMauth; i++) {
                                document.getElementById('PROPERTY_83_' + i).value = numPer.toFixed(2);
                                endPer = endPer - numPer.toFixed(2);
                            }

                            for (let i = 0; i <= xTauth; i++) {
                                if (i == xTauth) {
                                    document.getElementById('PROPERTY_84_' + i).value = endPer.toFixed(2);
                                }
                                else {
                                    document.getElementById('PROPERTY_84_' + i).value = numPer.toFixed(2);
                                    endPer = endPer - numPer.toFixed(2);
                                }
                            }
                        }
                    })
                </script>
            </div>

            <!--Название-->
            <div class="elem_name">
                Наименование фонограммы		
            </div>
            <div class="flexim botmarg37">
                <input type="text" id="PROPERTY_NAME" name="PROPERTY[NAME][0]" class="input_text W450" value="Повороты судьбы">
            </div>

            <!--Версия, подзаголовок фонограммы-->
            <div class="elem_name">
                Версия, подзаголовок фонограммы           
            </div>
            <div class="botmarg37">
                <input type="text" name="PROPERTY[76][0][VALUE]" class="input_text W450" value="">
            </div>

            <!--Имя основного Исполнителя-->
            <div class="elem_name">
                Имя основного Исполнителя           
            </div>
            <div class="botmarg37">
                <div id="main0" class="counter_poly">
                    <div class="main_class W500 botmarg17">
                        <input type="text" name="PROPERTY[61][0][VALUE]" class="input_text W450 botmarg7" id="PROPERTY_61_0" value="Дмитрий Четвергов" placeholder="Имя основного Исполнителя">
                        <!--Ссылка на Apple-->
                        <input type="text" name="PROPERTY[87][0][VALUE]" class="input_text W450 botmarg7" value="" placeholder="Ссылка на Apple">
                        <!--Ссылка на Spotify-->
                        <input type="text" name="PROPERTY[88][0][VALUE]" class="input_text W450 botmarg7" value="ссылка" placeholder="Ссылка на Spotify">
                    </div>
                    <span class="tooltip tooltipstered">
                        <div class="counter_but">?</div>
                    </span>
                    <div class="counter_but" onclick="addMain()">+</div>
                    <div class="counter_but" onclick="delMain()">-</div>
                </div>

                <div id="r_main" class="main_class">
                </div>

                <script type="text/javascript">
                    var xMain = 0;

                    function addMain() {
                        if (document.getElementById('PROPERTY_61_' + xMain).value !== "") {
                            document.getElementById('PROPERTY_61_' + xMain).placeholder = "Имя основного Исполнителя";
                            document.getElementById('PROPERTY_61_' + xMain).className = "input_text W450 botmarg7";
                            var profile = document.getElementById('r_main');
                            var div = document.createElement('div');
                            div.id = 'main' + ++xMain;
                            div.classList.toggle('main_class');
                            div.classList.add('botmarg17');
                            div.innerHTML = '<input class="input_text W450 botmarg7" type="text" id="PROPERTY_61_' + xMain + '" name="PROPERTY[61][' + xMain + '][VALUE]" placeholder="Имя основного Исполнителя"><input class="input_text W450 botmarg7" type="text" name="PROPERTY[87][' + xMain + '][VALUE]" placeholder="Ссылка на Apple"><input class="input_text W450 botmarg7" type="text" name="PROPERTY[88][' + xMain + '][VALUE]" placeholder="Ссылка на Spotify">';
                            profile.appendChild(div);
                            document.getElementById('PROPERTY_61_' + xMain).focus();
                        }
                        else {
                            document.getElementById('PROPERTY_61_' + xMain).placeholder = "Заполните основного исполнителя!";
                            document.getElementById('PROPERTY_61_' + xMain).className = "input_text W450 botmarg7 redBoarder";
                            document.getElementById('PROPERTY_61_' + xMain).focus();
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

            <!--Имя включенного Исполнителя-->
            <div class="elem_name">
                Имя включенного Исполнителя           
            </div>
            <div class="botmarg37">
                <div id="feat0" class="counter_poly">
                    <input type="text" name="PROPERTY[62][0][VALUE]" id="PROPERTY_62_0" class="input_text W450 botmarg7" value="" placeholder="Имя включенного Исполнителя">
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
                        if (document.getElementById('PROPERTY_62_' + xFeat).value !== "") {
                            document.getElementById('PROPERTY_62_' + xFeat).placeholder = "Имя включенного Исполнителя";
                            document.getElementById('PROPERTY_62_' + xFeat).className = "input_text W450";
                            var profile = document.getElementById('r_feat');
                            var div = document.createElement('div');
                            div.id = 'feat' + ++xFeat;
                            div.innerHTML = '<input class="botmarg7 input_text W450 " id="PROPERTY_62_' + xFeat + '" type="text" name="PROPERTY[62][' + xFeat + '][VALUE]" placeholder="Имя включенного Исполнителя">';
                            profile.appendChild(div);
                            document.getElementById('PROPERTY_62_' + xFeat).focus();
                        }
                        else {
                            document.getElementById('PROPERTY_62_' + xFeat).placeholder = "Заполните включенного исполнителя!";
                            document.getElementById('PROPERTY_62_' + xFeat).className = "input_text W450 botmarg7 redBoarder";
                            document.getElementById('PROPERTY_62_' + xFeat).focus();
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
                    <input type="text" name="PROPERTY[75][0][VALUE]" id="PROPERTY_75_0" class="input_text W450 botmarg7" value="" placeholder="Имя ремиксера, битмейкера">
                    <div class="counter_but" onclick="addRemix()">+</div>
                    <div class="counter_but" onclick="delRemix()">-</div>
                </div>

                <div id="r_remix">
                </div>

                <script type="text/javascript">
                    var xRemix = 0;

                    function addRemix() {
                        if (document.getElementById('PROPERTY_75_' + xRemix).value !== "") {
                            document.getElementById('PROPERTY_75_' + xRemix).placeholder = "Имя ремиксера, битмейкера";
                            document.getElementById('PROPERTY_75_' + xRemix).className = "input_text W450";
                            var profile = document.getElementById('r_remix');
                            var div = document.createElement('div');
                            div.id = 'remix' + ++xRemix;
                            div.innerHTML = '<input class="input_text W450 botmarg7" id="PROPERTY_75_' + xRemix + '" type="text" name="PROPERTY[75][' + xRemix + '][VALUE]" placeholder="Имя ремиксера, битмейкера">';
                            profile.appendChild(div);
                            document.getElementById('PROPERTY_75_' + xRemix).focus();
                        }
                        else {
                            document.getElementById('PROPERTY_75_' + xRemix).placeholder = "Заполните ремиксера, битмейкера!";
                            document.getElementById('PROPERTY_75_' + xRemix).className = "input_text W450 redBoarder";
                            document.getElementById('PROPERTY_75_' + xRemix).focus();
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

            <!--% Авторских прав-->
            <div class="elem_name">
                % Авторских прав           
            </div>
            <div class="botmarg37 flexim">
                <input type="number" min="0" max="100" name="PROPERTY[66][0][VALUE]" class="input_text W450" value="100">
                <span>
                    <output name="ageOutputName" id="ageOutputId"></output>
                </span>
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>

            <!--% Смежных прав-->
            <div class="elem_name">
                % Смежных прав           
            </div>
            <div class="botmarg37 flexim">
                <input type="number" min="0" max="100" name="PROPERTY[67][0][VALUE]" class="input_text W450" value="100">
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>

            <!--Автор музыки произведения (Композитор)-->
            <div class="elem_name">
                Автор музыки произведения (Композитор)           
            </div>
            <div class="botmarg7">
                <div id="mauth0" class="counter_poly botmarg37">
                    <div class="W500">
                        <input type="text" name="PROPERTY[100][0][VALUE]" class="input_text W450 botmarg7 music_auth_sur" id="PROPERTY_100_0" value="Четвергов" placeholder="Фамилия">
                        <input type="text" name="PROPERTY[101][0][VALUE]" class="input_text W450 botmarg7 music_auth_name" id="PROPERTY_101_0" value="Дмитрий" placeholder="Имя">
                        <input type="text" name="PROPERTY[102][0][VALUE]" class="input_text W450 music_auth_mid" value="" placeholder="Отчество">
                        Доля в авторском праве					
                        <input type="number" min="0" max="100" step="0.01" name="PROPERTY[83][0][VALUE]" class="input_text W450 music_auth_per" value="50.00" id="PROPERTY_83_0" placeholder="процент">
                    </div>
                    <span class="tooltip tooltipstered">
                        <div class="counter_but">?</div>
                    </span>
                    <div class="counter_but" onclick="addMauth()">+</div>
                    <div class="counter_but" onclick="delMauth()">-</div>
                </div>

                <div id="r_mauth">
                </div>

                <script type="text/javascript">				
                    function addMauth() {
                        if (document.getElementById('PROPERTY_100_' + xMauth).value !== "") {
                            if (document.getElementById('PROPERTY_101_' + xMauth).value !== "") {
                                var profile = document.getElementById('r_mauth');
                                var div = document.createElement('div');
                                div.id = 'mauth' + ++xMauth;
                                div.className = " botmarg37";
                                div.innerHTML = '<input class="input_text W450 botmarg7 music_auth_sur" type="text" name="PROPERTY[100][' + xMauth + '][VALUE]" id="PROPERTY_100_' + xMauth + '" placeholder="Фамилия"> <input class="input_text W450 botmarg7 music_auth_name" type="text" name="PROPERTY[101][' + xMauth + '][VALUE]" id="PROPERTY_101_' + xMauth + '" placeholder="Имя"> <input class="input_text W450 music_auth_mid" type="text" name="PROPERTY[102][' + xMauth + '][VALUE]" placeholder="Отчество"></br>Доля в авторском праве</br><input type="number" min="0" max="100" step="0.01" name="PROPERTY[83][' + xMauth + '][VALUE]" class="input_text W450 music_auth_per" id="PROPERTY_83_' + xMauth + '" placeholder="процент">';
                                profile.appendChild(div);
                                document.getElementById('PROPERTY_100_' + xMauth).focus();

                                if ($("#showcase81_0").prop("checked") == true) {
                                    var sumPer = xMauth + 1;
                                    var numPer = 100 / sumPer;
                                    var endPer = 100;

                                    for (let i = 0; i <= xMauth; i++) {
                                        if (i == xMauth) {
                                            document.getElementById('PROPERTY_83_' + i).value = endPer.toFixed(2);
                                        }
                                        else {
                                            document.getElementById('PROPERTY_83_' + i).value = numPer.toFixed(2);
                                            endPer = endPer - numPer.toFixed(2);
                                        }
                                    }
                                }
                                else {
                                    var sumPer = xMauth + xTauth + 2;
                                    var numPer = 100 / sumPer;
                                    var endPer = 100;

                                    for (let i = 0; i <= xMauth; i++) {
                                        document.getElementById('PROPERTY_83_' + i).value = numPer.toFixed(2);
                                        endPer = endPer - numPer.toFixed(2);
                                    }

                                    for (let i = 0; i <= xTauth; i++) {
                                        if (i == xTauth) {
                                            document.getElementById('PROPERTY_84_' + i).value = endPer.toFixed(2);
                                        }
                                        else {
                                            document.getElementById('PROPERTY_84_' + i).value = numPer.toFixed(2);
                                            endPer = endPer - numPer.toFixed(2);
                                        }
                                    }
                                }

                            }
                            else {
                                document.getElementById('PROPERTY_101_' + xMauth).placeholder = "Заполните Имя!";
                                document.getElementById('PROPERTY_101_' + xMauth).className = "input_text W450 botmarg7 redBoarder";
                                document.getElementById('PROPERTY_101_' + xMauth).focus();
                            }
                        }
                        else {
                            document.getElementById('PROPERTY_100_' + xMauth).placeholder = "Заполните Фамилию!";
                            document.getElementById('PROPERTY_100_' + xMauth).className = "input_text W450 botmarg7 music_auth redBoarder";
                            document.getElementById('PROPERTY_100_' + xMauth).focus();
                        }
                    }

                    function delMauth() {
                        if (xMauth > 0) {
                            var div = document.getElementById('mauth' + xMauth);
                            div.remove();
                            --xMauth;

                            if ($("#showcase81_0").prop("checked") == true) {
                                var sumPer = xMauth + 1;
                                var numPer = 100 / sumPer;
                                var endPer = 100;

                                for (let i = 0; i <= xMauth; i++) {
                                    if (i == xMauth) {
                                        document.getElementById('PROPERTY_83_' + i).value = endPer.toFixed(2);
                                    }
                                    else {
                                        document.getElementById('PROPERTY_83_' + i).value = numPer.toFixed(2);
                                        endPer = endPer - numPer.toFixed(2);
                                    }
                                }
                            }
                            else {
                                var sumPer = xMauth + xTauth + 2;
                                var numPer = 100 / sumPer;
                                var endPer = 100;

                                for (let i = 0; i <= xMauth; i++) {
                                    document.getElementById('PROPERTY_83_' + i).value = numPer.toFixed(2);
                                    endPer = endPer - numPer.toFixed(2);
                                }

                                for (let i = 0; i <= xTauth; i++) {
                                    if (i == xTauth) {
                                        document.getElementById('PROPERTY_84_' + i).value = endPer.toFixed(2);
                                    }
                                    else {
                                        document.getElementById('PROPERTY_84_' + i).value = numPer.toFixed(2);
                                        endPer = endPer - numPer.toFixed(2);
                                    }
                                }
                            }
                        }
                    }
                </script>
            </div>

            <!--Автор текста произведения-->
            <div id="area_text_autor">
                <div class="elem_name">
                    Автор текста произведения           
                </div>
                <div class="botmarg37">
                    <div id="tauth0" class="counter_poly botmarg37">
                        <div class="W500">
                            <input type="text" name="PROPERTY[103][0][VALUE]" class="input_text W450 botmarg7 text_autor_sur" value="Для" id="PROPERTY_103_0" placeholder="Фамилия">
                            <input type="text" name="PROPERTY[104][0][VALUE]" class="input_text W450 botmarg7 text_autor_name" value="Проверки" id="PROPERTY_104_0" placeholder="Имя">
                            <input type="text" name="PROPERTY[105][0][VALUE]" class="input_text W450 text_autor_mid" value="Процентов" id="PROPERTY_105_0" placeholder="Отчество">
                            Доля в авторском праве					
                            <input type="number" min="0" max="100" step="0.01" name="PROPERTY[84][0][VALUE]" class="input_text W450 text_autor_per" value="50.00" id="PROPERTY_84_0" placeholder="процент">
                        </div>
                        <span class="tooltip tooltipstered">
                            <div class="counter_but">?</div>
                        </span>
                        <div class="counter_but" onclick="addTauth()">+</div>
                        <div class="counter_but" onclick="delTauth()">-</div>
                    </div>

                    <div id="r_tauth">
                    </div>

                    <script type="text/javascript">
                        function addTauth() {
                            if (document.getElementById('PROPERTY_103_' + xTauth).value !== "") {
                                if (document.getElementById('PROPERTY_104_' + xTauth).value !== "") {
                                    var profile = document.getElementById('r_tauth');
                                    var div = document.createElement('div');
                                    div.id = 'tauth' + ++xTauth;
                                    div.className = "botmarg37";
                                    div.innerHTML = '<input class="input_text W450 botmarg7 text_autor_sur" type="text" name="PROPERTY[103][' + xTauth + '][VALUE]" id="PROPERTY_103_' + xTauth + '" placeholder="Фамилия"> <input class="input_text W450 botmarg7 text_autor_name" type="text" name="PROPERTY[104][' + xTauth + '][VALUE]" id="PROPERTY_104_' + xTauth + '" placeholder="Имя"> <input class="input_text W450 text_autor_mid" type="text" name="PROPERTY[105][' + xTauth + '][VALUE]" id="PROPERTY_105_' + xTauth + '" placeholder="Отчество"></br>Доля в авторском праве</br><input type="number" min="0" max="100" step="0.01" name="PROPERTY[84][' + xTauth + '][VALUE]" class="input_text W450 text_autor_per" id="PROPERTY_84_' + xTauth + '" placeholder="процент">';
                                    profile.appendChild(div);
                                    document.getElementById('PROPERTY_103_' + xTauth).focus();

                                    if ($("#showcase81_0").prop("checked") == true) {
                                        var sumPer = xMauth + 1;
                                        var numPer = 100 / sumPer;
                                        var endPer = 100;

                                        for (let i = 0; i <= xMauth; i++) {
                                            if (i == xMauth) {
                                                document.getElementById('PROPERTY_83_' + i).value = endPer.toFixed(2);
                                            }
                                            else {
                                                document.getElementById('PROPERTY_83_' + i).value = numPer.toFixed(2);
                                                endPer = endPer - numPer.toFixed(2);
                                            }
                                        }
                                    }
                                    else {
                                        var sumPer = xMauth + xTauth + 2;
                                        var numPer = 100 / sumPer;
                                        var endPer = 100;

                                        for (let i = 0; i <= xMauth; i++) {
                                            document.getElementById('PROPERTY_83_' + i).value = numPer.toFixed(2);
                                            endPer = endPer - numPer.toFixed(2);
                                        }

                                        for (let i = 0; i <= xTauth; i++) {
                                            if (i == xTauth) {
                                                document.getElementById('PROPERTY_84_' + i).value = endPer.toFixed(2);
                                            }
                                            else {
                                                document.getElementById('PROPERTY_84_' + i).value = numPer.toFixed(2);
                                                endPer = endPer - numPer.toFixed(2);
                                            }
                                        }
                                    }
                                }
                                else {
                                    document.getElementById('PROPERTY_104_' + xTauth).placeholder = "Заполните Имя!";
                                    document.getElementById('PROPERTY_104_' + xTauth).className = "input_text W450 botmarg7 redBoarder";
                                    document.getElementById('PROPERTY_104_' + xTauth).focus();
                                }
                            }
                            else {
                                document.getElementById('PROPERTY_103_' + xTauth).placeholder = "Заполните Фамилию!";
                                document.getElementById('PROPERTY_103_' + xTauth).className = "input_text W450 botmarg7 redBoarder";
                                document.getElementById('PROPERTY_103_' + xTauth).focus();
                            }
                        }

                        function delTauth() {
                            if (xTauth > 0) {
                                var div = document.getElementById('tauth' + xTauth);
                                div.remove();
                                --xTauth;

                                if ($("#showcase81_0").prop("checked") == true) {
                                    var sumPer = xMauth + 1;
                                    var numPer = 100 / sumPer;
                                    var endPer = 100;

                                    for (let i = 0; i <= xMauth; i++) {
                                        if (i == xMauth) {
                                            document.getElementById('PROPERTY_83_' + i).value = endPer.toFixed(2);
                                        }
                                        else {
                                            document.getElementById('PROPERTY_83_' + i).value = numPer.toFixed(2);
                                            endPer = endPer - numPer.toFixed(2);
                                        }
                                    }
                                }
                                else {
                                    var sumPer = xMauth + xTauth + 2;
                                    var numPer = 100 / sumPer;
                                    var endPer = 100;

                                    for (let i = 0; i <= xMauth; i++) {
                                        document.getElementById('PROPERTY_83_' + i).value = numPer.toFixed(2);
                                        endPer = endPer - numPer.toFixed(2);
                                    }

                                    for (let i = 0; i <= xTauth; i++) {
                                        if (i == xTauth) {
                                            document.getElementById('PROPERTY_84_' + i).value = endPer.toFixed(2);
                                        }
                                        else {
                                            document.getElementById('PROPERTY_84_' + i).value = numPer.toFixed(2);
                                            endPer = endPer - numPer.toFixed(2);
                                        }
                                    }
                                }
                            }
                        }
                    </script>
                </div>
            </div>

            <!--Музыкальный издатель Авторов произведения-->
            <div class="elem_name">
                Музыкальный издатель Авторов произведения           
            </div>
            <div class="botmarg37">
                <div id="publish0" class="counter_poly">
                    <input type="text" name="PROPERTY[85][0][VALUE]" class="input_text W450" id="PROPERTY_85_0" value="Moscow City Records">
                    <div class="counter_but" onclick="addPublish()">+</div>
                    <div class="counter_but" onclick="delPublish()">-</div>
                </div>

                <div id="r_publish">
                </div>

                <script type="text/javascript">
                    var xPublish = 0;

                    function addPublish() {
                        if (document.getElementById('PROPERTY_85_' + xPublish).value !== "") {
                            var profile = document.getElementById('r_publish');
                            var div = document.createElement('div');
                            div.id = 'publish' + ++xPublish;
                            div.innerHTML = '<input class="input_text W450" type="text" name="PROPERTY[85][' + xPublish + '][VALUE]" id="PROPERTY_85_' + xPublish + '">';
                            profile.appendChild(div);
                            document.getElementById('PROPERTY_85_' + xPublish).focus();
                        }
                        else {
                            document.getElementById('PROPERTY_85_' + xPublish).placeholder = "Заполните издателя!";
                            document.getElementById('PROPERTY_85_' + xPublish).className = "input_text W450 botmarg7 redBoarder";
                            document.getElementById('PROPERTY_85_' + xPublish).focus();
                        }
                    }

                    function delPublish() {
                        if (xPublish > 0) {
                            var div = document.getElementById('publish' + xPublish);
                            div.remove();
                            --xPublish;
                        }
                    }
                </script>
            </div>

            <!--ISRC-->
            <div class="elem_name">
                ISRC           
            </div>
            <div class="botmarg37 flexim">
                <input type="text" name="PROPERTY[57][0][VALUE]" class="input_text W450" value="FR-X20-20-84840">
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>

            <!--Каталожный номер фонограммы пользовательский-->
            <div class="elem_name">
                Каталожный номер фонограммы (пользовательский)           
            </div>
            <div class="botmarg37 flexim">
                <input type="text" name="PROPERTY[59][0][VALUE]" class="input_text W450" value="">
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>

            <!--Считается ли данная фонограмма основной в релизе?-->
            <div class="elem_name">
                Считается ли данная фонограмма основной в релизе?           
            </div>
            <div class="botmarg37">
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[82][0][VALUE]" id="showcase82_0" class="checkbox_flag W25 Y25" value="yesno_yes">
                    <label for="showcase82_0" class="checkbox_name W400 Y45">
                        <p>Да</p>
                    </label>
                    <br>
                </div>
            </div>

            <!--Предпрослушивание-->
            <div class="elem_name">
                Предпрослушивание           
            </div>
            <div class="botmarg37 flexim">
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[72][0][VALUE]" id="showcase72_0" class="checkbox_flag W25 Y25" value="yesno_yes" checked="">
                    <label for="showcase72_0" class="checkbox_name W400 Y45">
                        <p>Да</p>
                    </label>
                    <br>
                </div>
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>

            <!--Начало предпрослушивания-->
            <div class="elem_name">
                Начало предпрослушивания           
            </div>
            <div class="botmarg37 flexim">
                <input type="number" min="0" name="PROPERTY[60][0][VALUE]" class="input_text W450" value="20">
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>

            <!--Год изготовления фонограммы-->
            <div class="elem_name">
                Год изготовления фонограммы           
            </div>
            <div class="botmarg37">
                <input type="number" min="0" name="PROPERTY[77][0][VALUE]" class="input_text W450" value="2020">
            </div>

            <!--Жанр фонограммы-->
            <div class="elem_name">
                Жанр фонограммы           
            </div>
            <div class="botmarg37">
                <select name="PROPERTY[78][0][VALUE]" id="genre">
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

            <!--Стиль фонограммы-->
            <div class="elem_name">
                Стиль фонограммы           
            </div>
            <div class="botmarg37">
                <div id="refreshStyle">
                    <select name="PROPERTY[79][0][VALUE]">
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
                                url: "/app/audio-release/refresh-page/style-list.php",
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

            <!--Рекомандации родителям-->
            <div class="elem_name">
                Рекомандации родителям           
            </div>
            <div class="botmarg37 flexim">
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[71][0][VALUE]" id="showcase71_0" class="checkbox_flag W25 Y25" value="yesno_yes">
                    <label for="showcase71_0" class="checkbox_name W400 Y45">
                        <p>Да</p>
                    </label>
                    <br>
                </div>
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>

            <!--IsLive-->
            <div class="elem_name">
                IsLive           
            </div>
            <div class="botmarg37">
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[70][0][VALUE]" id="showcase70_0" class="checkbox_flag W25 Y25" value="yesno_yes">
                    <label for="showcase70_0" class="checkbox_name W400 Y45">
                        <p>Да</p>
                    </label>
                    <br>
                </div>
            </div>

            <!--Instant Grant-->
            <div class="elem_name">
                Instant Grant           
            </div>
            <div class="botmarg37 flexim">
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[73][0][VALUE]" id="showcase73_0" class="checkbox_flag W25 Y25" value="yesno_yes">
                    <label for="showcase73_0" class="checkbox_name W400 Y45">
                        <p>Да</p>
                    </label>
                    <br>
                </div>
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>

            <!--Только в составе альбома-->
            <div class="elem_name">
                Только в составе альбома           
            </div>
            <div class="botmarg37 flexim">
                <div class="checkbox">
                    <input type="checkbox" name="PROPERTY[74][0][VALUE]" id="showcase74_0" class="checkbox_flag W25 Y25" value="yesno_yes">
                    <label for="showcase74_0" class="checkbox_name W400 Y45">
                        <p>Да</p>
                    </label>
                    <br>
                </div>
                <span class="tooltip tooltipstered">
                    <div class="counter_but">?</div>
                </span>
            </div>

            <!--Язык произведения-->
            <div id="area_lang_words">
                <div class="elem_name">
                    Язык произведения           
                </div>
                <div class="botmarg37">
                    <select name="PROPERTY[65][0][VALUE]">
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
                </div>
            </div>

            <!--Язык названия произведения-->
            <div class="elem_name">
                Язык названия произведения           
            </div>
            <div class="botmarg37">
                <select name="PROPERTY[86][0][VALUE]">
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
            </div>

            <!--Текст песни-->
            <div class="elem_name">
                Текст песни           
            </div>
            <div class="botmarg37">
                <div unselectable="on" style="width: 550px;">
                    <div class=" nicEdit-panelContain" unselectable="on" style="overflow: hidden; width: 100%; border: 1px solid rgb(204, 204, 204); background-color: rgb(239, 239, 239);">
                        <div class=" nicEdit-panel" unselectable="on" style="margin: 0px 2px 2px; zoom: 1; overflow: hidden;"></div>
                    </div>
                </div>
                <div style="width: 550px; border-width: 0px 1px 1px; border-top-style: initial; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; overflow: hidden auto; max-height: 400px;">
                    <div class=" nicEdit-main" contenteditable="true" style="width: 542px; margin: 4px; min-height: 47px; overflow: hidden;">12345<div>67891</div>
                    </div>
                </div>
                <textarea name="PROPERTY[69][0][VALUE]" id="PROPERTY_69_0" wrap="off" class="W550" style="display: none;">12345&lt;div&gt;67891&lt;/div&gt;</textarea>
            </div>




        </div>

        <div class="release_button_block">
            <input type="button" name="iblock_cancel" class="cancel" value="Отмена" onclick="closeSidePanel()">
            <input type="submit" class="apply" name="iblock_apply" value="Сохранить">

            <script>
                function closeSidePanel() {
                    if (document.getElementById("PROPERTY_NAME").value == "") {
                        document.getElementById("PROPERTY_NAME").value = "Без названия!"
                    }
                    //				document.getElementById("PROPERTY_69_0").value =
                    BX.SidePanel.Instance.close([immediately = false]);
                }
            </script>
        </div>
    </form>
</asp:Content>
