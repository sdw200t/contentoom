<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/template/app/app.Master" AutoEventWireup="true" CodeBehind="Test.aspx.vb" Inherits="contentoom._Default" EnableSessionState="True" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolderApp" runat="server">

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


    <div class="row">
        <div class="col-md-4">
            <asp:Button ID="btnReadUsers" runat="server" Text="Прочитать пользователей" />
            &nbsp;<asp:DropDownList ID="dlUsers" runat="server" Width="199px"> 
            </asp:DropDownList>
            <br />
            <asp:Button ID="btnReadGroup" runat="server" Text="Прочитать группы пользователей" />
            &nbsp;<asp:DropDownList ID="dlGroup" runat="server" Width="184px">
            </asp:DropDownList>
            <br />
<%--<div id="dvCaptcha">
</div>
<asp:TextBox ID="txtCaptcha" runat="server" Style="display: none" />
<asp:RequiredFieldValidator ID="rfvCaptcha" ErrorMessage="Captcha validation is required." ControlToValidate="txtCaptcha"
    runat="server" ForeColor="Red" Display="Dynamic" />
<br />
<br />
<asp:Button ID="btnSubmit" Text="Submit" runat="server" />--%>
            <br />
            <asp:Button ID="Button2" runat="server" Text="ОткрытьСтраницуРегистарции" />
            <asp:Button ID="Button3" runat="server" Text="ОткрытьСтраницуВхода" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="отправить письмо" />
            <asp:Button ID="Button4" runat="server" Text="Проверить сложность пароля" />
            <br />

        </div>
        <div class="col-md-4">
            <asp:Table ID="tEnterUser" runat="server" Height="143px" Width="335px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"> <asp:Label ID="lblLogin" runat="server" Text="Логин"></asp:Label>
</asp:TableCell>
                    <asp:TableCell runat="server"> <asp:TextBox ID="tbLogin" runat="server"></asp:TextBox>
</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"> <asp:Label ID="lblPass" runat="server" Text="Пароль"></asp:Label>
</asp:TableCell>
                    <asp:TableCell runat="server"> <asp:TextBox ID="tbPass" runat="server" TextMode="Password"></asp:TextBox>
</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Button ID="btnEnter" runat="server" Text="Войти" /></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:LinkButton ID="lbRegistration" runat="server">Регистрация</asp:LinkButton></asp:TableCell>
                </asp:TableRow>           </asp:Table>
            <asp:Table ID="tNewUser" runat="server" Height="143px" Width="335px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"> <asp:Label ID="lblLoginNew" runat="server" Text="Логин"></asp:Label>
</asp:TableCell>
                    <asp:TableCell runat="server"> <asp:TextBox ID="tbLoginNew" runat="server"></asp:TextBox>
</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"> <asp:Label ID="lblPassNew" runat="server" Text="Пароль" ></asp:Label>
</asp:TableCell>
                    <asp:TableCell runat="server"> <asp:TextBox ID="tbPassNew" runat="server" TextMode="Password"></asp:TextBox>
</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"> <asp:Label ID="lblPassRep" runat="server" Text="Повторить пароль"></asp:Label>
</asp:TableCell>
                    <asp:TableCell runat="server"> <asp:TextBox ID="tbPassRep" runat="server" TextMode="Password"></asp:TextBox>
</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"> <asp:Label ID="lblName" runat="server" Text="Имя"></asp:Label>
</asp:TableCell>
                    <asp:TableCell runat="server"> <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
</asp:TableCell>
                </asp:TableRow>
                              <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Button ID="btnReg" runat="server" Text="Зарегистрироваться" /></asp:TableCell>
                </asp:TableRow>
                              <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:LinkButton ID="lbEnter" runat="server">Вход</asp:LinkButton></asp:TableCell>
                </asp:TableRow>            </asp:Table>
            <br />
            
        </div>    
    </div>


    </asp:Content>
