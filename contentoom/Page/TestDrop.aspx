<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/template/app/app.Master" CodeBehind="TestDrop.aspx.vb" Inherits="contentoom.TestDrop" %>
<%@Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="BotDetect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderApp" runat="server">

   <%-- драг дроп перетаскивание элементов списка --%>
    <script src="/scripts/jquery-3.5.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <%-- нумерованный список --%>
    <ol id="list_content">
        <li>1 Элемент</li>
        <li>2 Элемент</li>
        <li>3 Элемент</li>
    </ol>

    <%-- не нумерованный список --%>
 <%--   <ul id="list_content">
        <li><div class="elem_numb">1</div>1 Элемент</li>
        <li>2 Элемент</li>
        <li>3 Элемент</li>
    </ul>--%>

    <script>	
        $("#list_content").sortable({
            update: function () {
                //$('.file_list_elem_number').each(function (i, obj) {
                //    $(this).html(i + 1);
                //});
            }
        });
    </script>
    <%-- драг дроп перетаскивание элементов списка --%>


    <%-- драг дроп перетаскивание файла --%>
    <script src="/scripts/formstone/dist/js/core.js"></script>
    <link href="/scripts/formstone/dist/css/upload.css" rel="stylesheet">
    <script src="/scripts/formstone/dist/js/upload.js"></script>

    <div class="upload"></div>
    <div id="AudioResult"></div>
    
    <script>
        jQuery('document').ready(function ($) {
            $('.upload').upload({
                action: '/app/audio-release/refresh-page/upload-audio-file.php',
                label: 'Загрузить тут',
                postKey: 'AudioFile',
                multiple: true,
                maxQueue: 1,
                maxSize: 1048576000,
                Complete: "AudioComplete",
            })
                .on("start.upload", AudioStart)
                .on("filestart.upload", AudiofileStart)
                .on("fileprogress.upload", AudiofileProgress)
                .on("filecomplete.upload", AudiofileComplete)
                .on("fileError.upload", AudiofileError)
                .on("complete.upload", AudioComplete);
        });

        function AudioStart(e, files) {
            console.log('Начало загрузки');
            if (files[0].size > 1048576000) {
                alert('Size');
            };
            document.getElementById("AudioResult").className = "AudioResult ResultUpload";
            document.getElementById("AudioResult").innerHTML = "ЗАГРУЗКА";
        }

        function AudiofileStart(e, file) {
            console.log('Загрузка файла');
            document.getElementById("AudioResult").className = "AudioResult ResultUpload";
            document.getElementById("AudioResult").innerHTML = "Загрузка: 0%";
        }

        function AudiofileProgress(e, file, percent) {
            console.log('Прогресс загрузки');
            document.getElementById("AudioResult").className = "AudioResult ResultUpload";
            document.getElementById("AudioResult").innerHTML = "Загрузка: " + percent + "%" + " (" + file.name + ")";
        }


        function AudiofileComplete(e, file, response) {
            console.log('Завершение загрузки');
        }

        function AudiofileError(e, file) {
            console.log('Ошибка');
            document.getElementById("AudioResult").className = "AudioResult ResultError";
            document.getElementById("AudioResult").innerHTML = "ОШИБКА";
        }

        function AudioComplete(e) {
            console.log('Готово');
        }
    </script>

    <%-- драг дроп перетаскивание файла --%>

    <br />
    <br />
    <img id="imgAlbom" runat="server" alt="picture" src="" onmouseup="countRabbits()" />
    <br />
    <br />

      Select File to Upload: 
       <input id="File1" 
              type="file" 
              runat="server" />
 
       <p>
       Save as file name (no path): 
       <input id="Text1" 
              type="text" 
              runat="server" />
 
       </p>
       <p>
       <span id="Span1" 
             style="font: 8pt verdana;" 
             runat="server" />
       </p>
       <p>
       <input type="button" 
              id="Button1" 
              value="Upload" 
              onserverclick="Button1_Click" 
              runat="server" />
 
       </p>

    <br />
    <br />

    <%-- обработка событий нажатия --%>
    <button id="elem" onmouseup="countRabbits()">Нажми меня</button>
    <script>
        function countRabbits() {
            alert("Кнопка мыши отжата");
        }
    </script>
    <%-- обработка событий нажатия --%>

    <br />
    <br />
    <br />  

    <%-- captcha --%>
    <botdetect:webformscaptcha ID="ExampleCaptcha" runat="server" 
	    UserInputID="CaptchaCodeTextBox" />
    <asp:TextBox ID="CaptchaCodeTextBox" runat="server" />
    <input id="btnCheckOnBot" type="button" value="Проверка капчи" onclick="CheckOnBot()" />

    <script>
        function CheckOnBot(){
            If (IsPostBack) Then
            {
                // validate the Captcha to check we're not dealing with a bot
                bool isHuman = ExampleCaptcha.Validate(CaptchaCodeTextBox.Text);

                CaptchaCodeTextBox.Text = null; // clear previous user input

                If(!isHuman)
                {
                    // TODO: Captcha validation failed, show Error message 
                    alert("Error")
                }
                Else
                {
                    // TODO: captcha validation succeeded; execute the Protected action
                    alert("OK")
                }
            }
        }
    </script>
    <%-- captcha --%>

    </span></asp:Content>
