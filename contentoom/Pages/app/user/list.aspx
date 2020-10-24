<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/template/app/app.Master" CodeBehind="list.aspx.vb" Inherits="contentoom.AppUserlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Список пользователей
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderApp" runat="server">

        <!--Заголовок 1-->
        <div class="release_title">
            <h2>ПОЛЬЗОВАТЕЛИ</h2>
        </div>

        <!--Заголовок 2-->
        <div class="release_subtitle">
            <h1>СПИСОК</h1>
        </div>

        <div id="user_list_wrapper" class="dataTables_wrapper no-footer">
            <div class="dataTables_length" id="user_list_length">
                <label>Показывать по
                    <select name="user_list_length" aria-controls="user_list" class="">
                        <option value="10">10</option>
                        <option value="25">25</option>
                        <option value="50">50</option>
                        <option value="100">100</option>
                    </select>
                    записей</label></div>
            <div id="user_list_filter" class="dataTables_filter">
                <label>Найти:<input type="search" class="" placeholder="" aria-controls="user_list"></label></div>
            <table id="user_list" class="display dataTable no-footer" style="width: 100%" role="grid" aria-describedby="user_list_info">

                <thead>
                    <tr role="row">
                        <th class="sorting_asc" tabindex="0" aria-controls="user_list" rowspan="1" colspan="1" aria-sort="ascending" aria-label="ID: Нажмите для сортировки столбца по убыванию" style="width: 16px;">ID</th>
                        <th class="sorting" tabindex="0" aria-controls="user_list" rowspan="1" colspan="1" aria-label="Логин: Нажмите для сортировки столбца по возрастанию" style="width: 217px;">Логин</th>
                        <th class="sorting" tabindex="0" aria-controls="user_list" rowspan="1" colspan="1" aria-label="Ф.И.О.: Нажмите для сортировки столбца по возрастанию" style="width: 138px;">Ф.И.О.</th>
                        <th class="sorting" tabindex="0" aria-controls="user_list" rowspan="1" colspan="1" aria-label="Тип пользователя: Нажмите для сортировки столбца по возрастанию" style="width: 121px;">Тип пользователя</th>
                        <th class="sorting" tabindex="0" aria-controls="user_list" rowspan="1" colspan="1" aria-label="Дата регистрации: Нажмите для сортировки столбца по возрастанию" style="width: 120px;">Дата регистрации</th>
                        <th class="sorting" tabindex="0" aria-controls="user_list" rowspan="1" colspan="1" aria-label="Статус: Нажмите для сортировки столбца по возрастанию" style="width: 52px;">Статус</th>
                        <th class="sorting" tabindex="0" aria-controls="user_list" rowspan="1" colspan="1" aria-label="Подробнее: Нажмите для сортировки столбца по возрастанию" style="width: 84px;">Подробнее</th>
                    </tr>
                </thead>
                <tbody>








                    <tr role="row" class="odd">
                        <th class="sorting_1">2</th>
                        <th class="thLeft">mmt_1974@mail.ru</th>
                        <th>Абдуллин  Ирикович</th>
                        <th></th>
                        <th>2020.05.05</th>
                        <th></th>
                        <th><a href="/page/app/user/list-user-view.aspx">Подробнее</a></th>
                    </tr>
                    <tr role="row" class="even">
                        <th class="sorting_1">3</th>
                        <th class="thLeft">khusniddin.koychiev@yandex.ru</th>
                        <th>Койчиев Хусниддин </th>
                        <th></th>
                        <th>2020.05.11</th>
                        <th></th>
                        <th><a href="/page/app/user/list-user-view.aspx">Подробнее</a></th>
                    </tr>
                    <tr role="row" class="odd">
                        <th class="sorting_1">4</th>
                        <th class="thLeft">moderator@contentoom.com</th>
                        <th></th>
                        <th>Физическое лицо</th>
                        <th>2020.06.17</th>
                        <th></th>
                        <th><a href="/page/app/user/list-user-view.aspx">Подробнее</a></th>
                    </tr>
                    <tr role="row" class="even">
                        <th class="sorting_1">5</th>
                        <th class="thLeft">user@contentoom.com</th>
                        <th>Фамилия Имя Отчество</th>
                        <th>Физическое лицо</th>
                        <th>2020.06.17</th>
                        <th></th>
                        <th><a href="/page/app/user/list-user-view.aspx">Подробнее</a></th>
                    </tr>
                    <tr role="row" class="odd">
                        <th class="sorting_1">6</th>
                        <th class="thLeft">mom70@bk.ru</th>
                        <th></th>
                        <th></th>
                        <th>2020.07.05</th>
                        <th></th>
                        <th><a href="/page/app/user/list-user-view.aspx">Подробнее</a></th>
                    </tr>
                    <tr role="row" class="even">
                        <th class="sorting_1">7</th>
                        <th class="thLeft">test2@contentoom.com</th>
                        <th></th>
                        <th></th>
                        <th>2020.07.05</th>
                        <th></th>
                        <th><a href="/page/app/user/list-user-view.aspx">Подробнее</a></th>
                    </tr>
                    <tr role="row" class="odd">
                        <th class="sorting_1">9</th>
                        <th class="thLeft">hariton70@gmail.com</th>
                        <th></th>
                        <th></th>
                        <th>2020.07.30</th>
                        <th></th>
                        <th><a href="/page/app/user/list-user-view.aspx">Подробнее</a></th>
                    </tr>
                    <tr role="row" class="even">
                        <th class="sorting_1">10</th>
                        <th class="thLeft">9612839@gmail.com</th>
                        <th></th>
                        <th></th>
                        <th>2020.09.17</th>
                        <th></th>
                        <th><a href="/page/app/user/list-user-view.aspx">Подробнее</a></th>
                    </tr>
                </tbody>
            </table>
            <div class="dataTables_info" id="user_list_info" role="status" aria-live="polite">Показаны записи с 1 по 8 из 8 записей</div>
            <div class="dataTables_paginate paging_simple_numbers" id="user_list_paginate"><a class="paginate_button previous disabled" aria-controls="user_list" data-dt-idx="0" tabindex="-1" id="user_list_previous">Назад</a><span><a class="paginate_button current" aria-controls="user_list" data-dt-idx="1" tabindex="0">1</a></span><a class="paginate_button next disabled" aria-controls="user_list" data-dt-idx="2" tabindex="-1" id="user_list_next">Далее</a></div>
        </div>

        <script>
            $(document).ready(function () {
                $('#user_list').DataTable({
                    "language": {
                        "decimal": "",
                        "emptyTable": "Нет данных для отображения",
                        "info": "Показаны записи с _START_ по _END_ из _TOTAL_ записей",
                        "infoEmpty": "Нет записей",
                        "infoFiltered": "(отфильтровано из _MAX_ записей)",
                        "infoPostFix": "",
                        "thousands": ",",
                        "lengthMenu": "Показывать по _MENU_ записей",
                        "loadingRecords": "Загрузка...",
                        "processing": "Обработка...",
                        "search": "Найти:",
                        "zeroRecords": "Совпадающих записей не найдено",
                        "paginate": {
                            "first": "Первый",
                            "last": "Последний",
                            "next": "Далее",
                            "previous": "Назад"
                        },
                        "aria": {
                            "sortAscending": ": Нажмите для сортировки столбца по возрастанию",
                            "sortDescending": ": Нажмите для сортировки столбца по убыванию"
                        }
                    }
                });
            });
        </script>

</asp:Content>
