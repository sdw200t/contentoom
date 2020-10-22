<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/template/app/app.Master" CodeBehind="ready.aspx.vb" Inherits="contentoom.audioReleaseReady" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Готовность аудио релиза
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderApp" runat="server">
    <!--Заголовок 1-->
    <div class="release_title">
        <h2>РЕДАКТИРОВАНИЕ АУДИО РЕЛИЗА:</h2>
    </div>
    <!--Заголовок 2-->
    <div class="release_subtitle">
        <h1>ГОТОВНОСТЬ</h1>
    </div>
    <!--топ меню-->
    <div class="release_menu_top">
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
                <div class="elem_menu">
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
                <div class="elem_menu_active">
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
    <div class="release_block">
        <div class="release_content flexim">

            <div class="meta_list">
                <div class="elem_ready flexim">
                    <div class="elem_file_ready">
                        Повороты судьбы					
                        <input type="hidden" id="file_1" value="865">
                    </div>
                    <div class="elem_number_list" id="number_1">
                        1				
                    </div>
                    <div class="elem_meta_ready" id="meta_1">
                        <select name="metaSelect_1" id="select_1" class="select_ready">
                            <option>не выбрано</option>

                            <option value="846">01_Povoroty_CD_mast-p2p</option>


                            <option value="847">02_Vne_Pravil_CD_mast_2-p2p</option>


                            <option value="848">03_Pulse_CD_mast-p2p</option>


                            <option value="849">04_Jeff_44_CD_mast-p2p</option>


                            <option value="850">05_Game_CD_mast-p2p</option>


                            <option value="851">06_Extaz_CD_mast-p2p</option>


                            <option value="852">07_Neokon_Povest3.3-p2p</option>


                            <option value="853">08_SexHorses_CD_mast-p2p</option>


                            <option value="854">09_S_Blues_CD_mast-p2p</option>


                            <option value="855">10_Avalanche_CD_mast-p2p</option>


                            <option value="856">11_Vokr_Purpur2.3-p2p</option>


                            <option value="857">12_Play_with_Me_CD_mast-p2p</option>


                            <option value="858">13_Free_line_CD_mast-p2p</option>


                            <option value="859">14_I_Love_CD_mast-p2p</option>


                            <option value="860">15_Otkrovenye4.3-p2p</option>


                            <option value="861">16_Rubikon_CD_mast-p2p</option>


                            <option value="862">17_Friends_CD_mast-p2p</option>


                            <option value="863">18_Smyteniye5.3-p2p</option>


                            <option value="864">19_Na_Schastye_CD_mast-p2p</option>

                        </select>
                    </div>
                </div>
                <div class="elem_ready flexim">
                    <div class="elem_file_ready">
                        Rules Don’t Apply					
                        <input type="hidden" id="file_2" value="866">
                    </div>
                    <div class="elem_number_list" id="number_2">
                        2				
                    </div>
                    <div class="elem_meta_ready" id="meta_2">
                        <select name="metaSelect_2" id="select_2" class="select_ready">
                            <option>не выбрано</option>

                            <option value="846">01_Povoroty_CD_mast-p2p</option>


                            <option value="847">02_Vne_Pravil_CD_mast_2-p2p</option>


                            <option value="848">03_Pulse_CD_mast-p2p</option>


                            <option value="849">04_Jeff_44_CD_mast-p2p</option>


                            <option value="850">05_Game_CD_mast-p2p</option>


                            <option value="851">06_Extaz_CD_mast-p2p</option>


                            <option value="852">07_Neokon_Povest3.3-p2p</option>


                            <option value="853">08_SexHorses_CD_mast-p2p</option>


                            <option value="854">09_S_Blues_CD_mast-p2p</option>


                            <option value="855">10_Avalanche_CD_mast-p2p</option>


                            <option value="856">11_Vokr_Purpur2.3-p2p</option>


                            <option value="857">12_Play_with_Me_CD_mast-p2p</option>


                            <option value="858">13_Free_line_CD_mast-p2p</option>


                            <option value="859">14_I_Love_CD_mast-p2p</option>


                            <option value="860">15_Otkrovenye4.3-p2p</option>


                            <option value="861">16_Rubikon_CD_mast-p2p</option>


                            <option value="862">17_Friends_CD_mast-p2p</option>


                            <option value="863">18_Smyteniye5.3-p2p</option>


                            <option value="864">19_Na_Schastye_CD_mast-p2p</option>

                        </select>
                    </div>
                </div>
                <div class="elem_ready flexim">
                    <div class="elem_file_ready">
                        Pulse					
                        <input type="hidden" id="file_3" value="867">
                    </div>
                    <div class="elem_number_list" id="number_3">
                        3				
                    </div>
                    <div class="elem_meta_ready" id="meta_3">
                        <select name="metaSelect_3" id="select_3" class="select_ready">
                            <option>не выбрано</option>

                            <option value="846">01_Povoroty_CD_mast-p2p</option>


                            <option value="847">02_Vne_Pravil_CD_mast_2-p2p</option>


                            <option value="848">03_Pulse_CD_mast-p2p</option>


                            <option value="849">04_Jeff_44_CD_mast-p2p</option>


                            <option value="850">05_Game_CD_mast-p2p</option>


                            <option value="851">06_Extaz_CD_mast-p2p</option>


                            <option value="852">07_Neokon_Povest3.3-p2p</option>


                            <option value="853">08_SexHorses_CD_mast-p2p</option>


                            <option value="854">09_S_Blues_CD_mast-p2p</option>


                            <option value="855">10_Avalanche_CD_mast-p2p</option>


                            <option value="856">11_Vokr_Purpur2.3-p2p</option>


                            <option value="857">12_Play_with_Me_CD_mast-p2p</option>


                            <option value="858">13_Free_line_CD_mast-p2p</option>


                            <option value="859">14_I_Love_CD_mast-p2p</option>


                            <option value="860">15_Otkrovenye4.3-p2p</option>


                            <option value="861">16_Rubikon_CD_mast-p2p</option>


                            <option value="862">17_Friends_CD_mast-p2p</option>


                            <option value="863">18_Smyteniye5.3-p2p</option>


                            <option value="864">19_Na_Schastye_CD_mast-p2p</option>

                        </select>
                    </div>
                </div>
                <div class="elem_ready flexim">
                    <div class="elem_file_ready">
                        Привет, Jeff!					
                        <input type="hidden" id="file_4" value="868">
                    </div>
                    <div class="elem_number_list" id="number_4">
                        4				
                    </div>
                    <div class="elem_meta_ready" id="meta_4">
                        <select name="metaSelect_4" id="select_4" class="select_ready">
                            <option>не выбрано</option>

                            <option value="846">01_Povoroty_CD_mast-p2p</option>


                            <option value="847">02_Vne_Pravil_CD_mast_2-p2p</option>


                            <option value="848">03_Pulse_CD_mast-p2p</option>


                            <option value="849">04_Jeff_44_CD_mast-p2p</option>


                            <option value="850">05_Game_CD_mast-p2p</option>


                            <option value="851">06_Extaz_CD_mast-p2p</option>


                            <option value="852">07_Neokon_Povest3.3-p2p</option>


                            <option value="853">08_SexHorses_CD_mast-p2p</option>


                            <option value="854">09_S_Blues_CD_mast-p2p</option>


                            <option value="855">10_Avalanche_CD_mast-p2p</option>


                            <option value="856">11_Vokr_Purpur2.3-p2p</option>


                            <option value="857">12_Play_with_Me_CD_mast-p2p</option>


                            <option value="858">13_Free_line_CD_mast-p2p</option>


                            <option value="859">14_I_Love_CD_mast-p2p</option>


                            <option value="860">15_Otkrovenye4.3-p2p</option>


                            <option value="861">16_Rubikon_CD_mast-p2p</option>


                            <option value="862">17_Friends_CD_mast-p2p</option>


                            <option value="863">18_Smyteniye5.3-p2p</option>


                            <option value="864">19_Na_Schastye_CD_mast-p2p</option>

                        </select>
                    </div>
                </div>
                <div class="elem_ready flexim">
                    <div class="elem_file_ready">
                        Game					
                        <input type="hidden" id="file_5" value="869">
                    </div>
                    <div class="elem_number_list" id="number_5">
                        5				
                    </div>
                    <div class="elem_meta_ready" id="meta_5">
                        <select name="metaSelect_5" id="select_5" class="select_ready">
                            <option>не выбрано</option>

                            <option value="846">01_Povoroty_CD_mast-p2p</option>


                            <option value="847">02_Vne_Pravil_CD_mast_2-p2p</option>


                            <option value="848">03_Pulse_CD_mast-p2p</option>


                            <option value="849">04_Jeff_44_CD_mast-p2p</option>


                            <option value="850">05_Game_CD_mast-p2p</option>


                            <option value="851">06_Extaz_CD_mast-p2p</option>


                            <option value="852">07_Neokon_Povest3.3-p2p</option>


                            <option value="853">08_SexHorses_CD_mast-p2p</option>


                            <option value="854">09_S_Blues_CD_mast-p2p</option>


                            <option value="855">10_Avalanche_CD_mast-p2p</option>


                            <option value="856">11_Vokr_Purpur2.3-p2p</option>


                            <option value="857">12_Play_with_Me_CD_mast-p2p</option>


                            <option value="858">13_Free_line_CD_mast-p2p</option>


                            <option value="859">14_I_Love_CD_mast-p2p</option>


                            <option value="860">15_Otkrovenye4.3-p2p</option>


                            <option value="861">16_Rubikon_CD_mast-p2p</option>


                            <option value="862">17_Friends_CD_mast-p2p</option>


                            <option value="863">18_Smyteniye5.3-p2p</option>


                            <option value="864">19_Na_Schastye_CD_mast-p2p</option>

                        </select>
                    </div>
                </div>
                <div class="elem_ready flexim">
                    <div class="elem_file_ready">
                        Ecstasy 					
                        <input type="hidden" id="file_6" value="870">
                    </div>
                    <div class="elem_number_list" id="number_6">
                        6				
                    </div>
                    <div class="elem_meta_ready" id="meta_6">
                        <select name="metaSelect_6" id="select_6" class="select_ready">
                            <option>не выбрано</option>

                            <option value="846">01_Povoroty_CD_mast-p2p</option>


                            <option value="847">02_Vne_Pravil_CD_mast_2-p2p</option>


                            <option value="848">03_Pulse_CD_mast-p2p</option>


                            <option value="849">04_Jeff_44_CD_mast-p2p</option>


                            <option value="850">05_Game_CD_mast-p2p</option>


                            <option value="851">06_Extaz_CD_mast-p2p</option>


                            <option value="852">07_Neokon_Povest3.3-p2p</option>


                            <option value="853">08_SexHorses_CD_mast-p2p</option>


                            <option value="854">09_S_Blues_CD_mast-p2p</option>


                            <option value="855">10_Avalanche_CD_mast-p2p</option>


                            <option value="856">11_Vokr_Purpur2.3-p2p</option>


                            <option value="857">12_Play_with_Me_CD_mast-p2p</option>


                            <option value="858">13_Free_line_CD_mast-p2p</option>


                            <option value="859">14_I_Love_CD_mast-p2p</option>


                            <option value="860">15_Otkrovenye4.3-p2p</option>


                            <option value="861">16_Rubikon_CD_mast-p2p</option>


                            <option value="862">17_Friends_CD_mast-p2p</option>


                            <option value="863">18_Smyteniye5.3-p2p</option>


                            <option value="864">19_Na_Schastye_CD_mast-p2p</option>

                        </select>
                    </div>
                </div>
                <div class="elem_ready flexim">
                    <div class="elem_file_ready">
                        Неоконченная повесть 					
                        <input type="hidden" id="file_7" value="871">
                    </div>
                    <div class="elem_number_list" id="number_7">
                        7				
                    </div>
                    <div class="elem_meta_ready" id="meta_7">
                        <select name="metaSelect_7" id="select_7" class="select_ready">
                            <option>не выбрано</option>

                            <option value="846">01_Povoroty_CD_mast-p2p</option>


                            <option value="847">02_Vne_Pravil_CD_mast_2-p2p</option>


                            <option value="848">03_Pulse_CD_mast-p2p</option>


                            <option value="849">04_Jeff_44_CD_mast-p2p</option>


                            <option value="850">05_Game_CD_mast-p2p</option>


                            <option value="851">06_Extaz_CD_mast-p2p</option>


                            <option value="852">07_Neokon_Povest3.3-p2p</option>


                            <option value="853">08_SexHorses_CD_mast-p2p</option>


                            <option value="854">09_S_Blues_CD_mast-p2p</option>


                            <option value="855">10_Avalanche_CD_mast-p2p</option>


                            <option value="856">11_Vokr_Purpur2.3-p2p</option>


                            <option value="857">12_Play_with_Me_CD_mast-p2p</option>


                            <option value="858">13_Free_line_CD_mast-p2p</option>


                            <option value="859">14_I_Love_CD_mast-p2p</option>


                            <option value="860">15_Otkrovenye4.3-p2p</option>


                            <option value="861">16_Rubikon_CD_mast-p2p</option>


                            <option value="862">17_Friends_CD_mast-p2p</option>


                            <option value="863">18_Smyteniye5.3-p2p</option>


                            <option value="864">19_Na_Schastye_CD_mast-p2p</option>

                        </select>
                    </div>
                </div>
                <div class="elem_ready flexim">
                    <div class="elem_file_ready">
                        Sexyhorsessuccess					
                        <input type="hidden" id="file_8" value="872">
                    </div>
                    <div class="elem_number_list" id="number_8">
                        8				
                    </div>
                    <div class="elem_meta_ready" id="meta_8">
                        <select name="metaSelect_8" id="select_8" class="select_ready">
                            <option>не выбрано</option>

                            <option value="846">01_Povoroty_CD_mast-p2p</option>


                            <option value="847">02_Vne_Pravil_CD_mast_2-p2p</option>


                            <option value="848">03_Pulse_CD_mast-p2p</option>


                            <option value="849">04_Jeff_44_CD_mast-p2p</option>


                            <option value="850">05_Game_CD_mast-p2p</option>


                            <option value="851">06_Extaz_CD_mast-p2p</option>


                            <option value="852">07_Neokon_Povest3.3-p2p</option>


                            <option value="853">08_SexHorses_CD_mast-p2p</option>


                            <option value="854">09_S_Blues_CD_mast-p2p</option>


                            <option value="855">10_Avalanche_CD_mast-p2p</option>


                            <option value="856">11_Vokr_Purpur2.3-p2p</option>


                            <option value="857">12_Play_with_Me_CD_mast-p2p</option>


                            <option value="858">13_Free_line_CD_mast-p2p</option>


                            <option value="859">14_I_Love_CD_mast-p2p</option>


                            <option value="860">15_Otkrovenye4.3-p2p</option>


                            <option value="861">16_Rubikon_CD_mast-p2p</option>


                            <option value="862">17_Friends_CD_mast-p2p</option>


                            <option value="863">18_Smyteniye5.3-p2p</option>


                            <option value="864">19_Na_Schastye_CD_mast-p2p</option>

                        </select>
                    </div>
                </div>
                <div class="elem_ready flexim">
                    <div class="elem_file_ready">
                        Summer Blues					
                        <input type="hidden" id="file_9" value="873">
                    </div>
                    <div class="elem_number_list" id="number_9">
                        9				
                    </div>
                    <div class="elem_meta_ready" id="meta_9">
                        <select name="metaSelect_9" id="select_9" class="select_ready">
                            <option>не выбрано</option>

                            <option value="846">01_Povoroty_CD_mast-p2p</option>


                            <option value="847">02_Vne_Pravil_CD_mast_2-p2p</option>


                            <option value="848">03_Pulse_CD_mast-p2p</option>


                            <option value="849">04_Jeff_44_CD_mast-p2p</option>


                            <option value="850">05_Game_CD_mast-p2p</option>


                            <option value="851">06_Extaz_CD_mast-p2p</option>


                            <option value="852">07_Neokon_Povest3.3-p2p</option>


                            <option value="853">08_SexHorses_CD_mast-p2p</option>


                            <option value="854">09_S_Blues_CD_mast-p2p</option>


                            <option value="855">10_Avalanche_CD_mast-p2p</option>


                            <option value="856">11_Vokr_Purpur2.3-p2p</option>


                            <option value="857">12_Play_with_Me_CD_mast-p2p</option>


                            <option value="858">13_Free_line_CD_mast-p2p</option>


                            <option value="859">14_I_Love_CD_mast-p2p</option>


                            <option value="860">15_Otkrovenye4.3-p2p</option>


                            <option value="861">16_Rubikon_CD_mast-p2p</option>


                            <option value="862">17_Friends_CD_mast-p2p</option>


                            <option value="863">18_Smyteniye5.3-p2p</option>


                            <option value="864">19_Na_Schastye_CD_mast-p2p</option>

                        </select>
                    </div>
                </div>
                <div class="elem_ready flexim">
                    <div class="elem_file_ready">
                        Avalanche					
                        <input type="hidden" id="file_10" value="874">
                    </div>
                    <div class="elem_number_list" id="number_10">
                        10				
                    </div>
                    <div class="elem_meta_ready" id="meta_10">
                        <select name="metaSelect_10" id="select_10" class="select_ready">
                            <option>не выбрано</option>

                            <option value="846">01_Povoroty_CD_mast-p2p</option>


                            <option value="847">02_Vne_Pravil_CD_mast_2-p2p</option>


                            <option value="848">03_Pulse_CD_mast-p2p</option>


                            <option value="849">04_Jeff_44_CD_mast-p2p</option>


                            <option value="850">05_Game_CD_mast-p2p</option>


                            <option value="851">06_Extaz_CD_mast-p2p</option>


                            <option value="852">07_Neokon_Povest3.3-p2p</option>


                            <option value="853">08_SexHorses_CD_mast-p2p</option>


                            <option value="854">09_S_Blues_CD_mast-p2p</option>


                            <option value="855">10_Avalanche_CD_mast-p2p</option>


                            <option value="856">11_Vokr_Purpur2.3-p2p</option>


                            <option value="857">12_Play_with_Me_CD_mast-p2p</option>


                            <option value="858">13_Free_line_CD_mast-p2p</option>


                            <option value="859">14_I_Love_CD_mast-p2p</option>


                            <option value="860">15_Otkrovenye4.3-p2p</option>


                            <option value="861">16_Rubikon_CD_mast-p2p</option>


                            <option value="862">17_Friends_CD_mast-p2p</option>


                            <option value="863">18_Smyteniye5.3-p2p</option>


                            <option value="864">19_Na_Schastye_CD_mast-p2p</option>

                        </select>
                    </div>
                </div>
                <div class="elem_ready flexim">
                    <div class="elem_file_ready">
                        Вокруг пурпурного C					
                        <input type="hidden" id="file_11" value="875">
                    </div>
                    <div class="elem_number_list" id="number_11">
                        11				
                    </div>
                    <div class="elem_meta_ready" id="meta_11">
                        <select name="metaSelect_11" id="select_11" class="select_ready">
                            <option>не выбрано</option>

                            <option value="846">01_Povoroty_CD_mast-p2p</option>


                            <option value="847">02_Vne_Pravil_CD_mast_2-p2p</option>


                            <option value="848">03_Pulse_CD_mast-p2p</option>


                            <option value="849">04_Jeff_44_CD_mast-p2p</option>


                            <option value="850">05_Game_CD_mast-p2p</option>


                            <option value="851">06_Extaz_CD_mast-p2p</option>


                            <option value="852">07_Neokon_Povest3.3-p2p</option>


                            <option value="853">08_SexHorses_CD_mast-p2p</option>


                            <option value="854">09_S_Blues_CD_mast-p2p</option>


                            <option value="855">10_Avalanche_CD_mast-p2p</option>


                            <option value="856">11_Vokr_Purpur2.3-p2p</option>


                            <option value="857">12_Play_with_Me_CD_mast-p2p</option>


                            <option value="858">13_Free_line_CD_mast-p2p</option>


                            <option value="859">14_I_Love_CD_mast-p2p</option>


                            <option value="860">15_Otkrovenye4.3-p2p</option>


                            <option value="861">16_Rubikon_CD_mast-p2p</option>


                            <option value="862">17_Friends_CD_mast-p2p</option>


                            <option value="863">18_Smyteniye5.3-p2p</option>


                            <option value="864">19_Na_Schastye_CD_mast-p2p</option>

                        </select>
                    </div>
                </div>
                <div class="elem_ready flexim">
                    <div class="elem_file_ready">
                        Play with Me					
                        <input type="hidden" id="file_12" value="876">
                    </div>
                    <div class="elem_number_list" id="number_12">
                        12				
                    </div>
                    <div class="elem_meta_ready" id="meta_12">
                        <select name="metaSelect_12" id="select_12" class="select_ready">
                            <option>не выбрано</option>

                            <option value="846">01_Povoroty_CD_mast-p2p</option>


                            <option value="847">02_Vne_Pravil_CD_mast_2-p2p</option>


                            <option value="848">03_Pulse_CD_mast-p2p</option>


                            <option value="849">04_Jeff_44_CD_mast-p2p</option>


                            <option value="850">05_Game_CD_mast-p2p</option>


                            <option value="851">06_Extaz_CD_mast-p2p</option>


                            <option value="852">07_Neokon_Povest3.3-p2p</option>


                            <option value="853">08_SexHorses_CD_mast-p2p</option>


                            <option value="854">09_S_Blues_CD_mast-p2p</option>


                            <option value="855">10_Avalanche_CD_mast-p2p</option>


                            <option value="856">11_Vokr_Purpur2.3-p2p</option>


                            <option value="857">12_Play_with_Me_CD_mast-p2p</option>


                            <option value="858">13_Free_line_CD_mast-p2p</option>


                            <option value="859">14_I_Love_CD_mast-p2p</option>


                            <option value="860">15_Otkrovenye4.3-p2p</option>


                            <option value="861">16_Rubikon_CD_mast-p2p</option>


                            <option value="862">17_Friends_CD_mast-p2p</option>


                            <option value="863">18_Smyteniye5.3-p2p</option>


                            <option value="864">19_Na_Schastye_CD_mast-p2p</option>

                        </select>
                    </div>
                </div>
                <div class="elem_ready flexim">
                    <div class="elem_file_ready">
                        Free Line					
                        <input type="hidden" id="file_13" value="877">
                    </div>
                    <div class="elem_number_list" id="number_13">
                        13				
                    </div>
                    <div class="elem_meta_ready" id="meta_13">
                        <select name="metaSelect_13" id="select_13" class="select_ready">
                            <option>не выбрано</option>

                            <option value="846">01_Povoroty_CD_mast-p2p</option>


                            <option value="847">02_Vne_Pravil_CD_mast_2-p2p</option>


                            <option value="848">03_Pulse_CD_mast-p2p</option>


                            <option value="849">04_Jeff_44_CD_mast-p2p</option>


                            <option value="850">05_Game_CD_mast-p2p</option>


                            <option value="851">06_Extaz_CD_mast-p2p</option>


                            <option value="852">07_Neokon_Povest3.3-p2p</option>


                            <option value="853">08_SexHorses_CD_mast-p2p</option>


                            <option value="854">09_S_Blues_CD_mast-p2p</option>


                            <option value="855">10_Avalanche_CD_mast-p2p</option>


                            <option value="856">11_Vokr_Purpur2.3-p2p</option>


                            <option value="857">12_Play_with_Me_CD_mast-p2p</option>


                            <option value="858">13_Free_line_CD_mast-p2p</option>


                            <option value="859">14_I_Love_CD_mast-p2p</option>


                            <option value="860">15_Otkrovenye4.3-p2p</option>


                            <option value="861">16_Rubikon_CD_mast-p2p</option>


                            <option value="862">17_Friends_CD_mast-p2p</option>


                            <option value="863">18_Smyteniye5.3-p2p</option>


                            <option value="864">19_Na_Schastye_CD_mast-p2p</option>

                        </select>
                    </div>
                </div>
                <div class="elem_ready flexim">
                    <div class="elem_file_ready">
                        Я люблю					
                        <input type="hidden" id="file_14" value="878">
                    </div>
                    <div class="elem_number_list" id="number_14">
                        14				
                    </div>
                    <div class="elem_meta_ready" id="meta_14">
                        <select name="metaSelect_14" id="select_14" class="select_ready">
                            <option>не выбрано</option>

                            <option value="846">01_Povoroty_CD_mast-p2p</option>


                            <option value="847">02_Vne_Pravil_CD_mast_2-p2p</option>


                            <option value="848">03_Pulse_CD_mast-p2p</option>


                            <option value="849">04_Jeff_44_CD_mast-p2p</option>


                            <option value="850">05_Game_CD_mast-p2p</option>


                            <option value="851">06_Extaz_CD_mast-p2p</option>


                            <option value="852">07_Neokon_Povest3.3-p2p</option>


                            <option value="853">08_SexHorses_CD_mast-p2p</option>


                            <option value="854">09_S_Blues_CD_mast-p2p</option>


                            <option value="855">10_Avalanche_CD_mast-p2p</option>


                            <option value="856">11_Vokr_Purpur2.3-p2p</option>


                            <option value="857">12_Play_with_Me_CD_mast-p2p</option>


                            <option value="858">13_Free_line_CD_mast-p2p</option>


                            <option value="859">14_I_Love_CD_mast-p2p</option>


                            <option value="860">15_Otkrovenye4.3-p2p</option>


                            <option value="861">16_Rubikon_CD_mast-p2p</option>


                            <option value="862">17_Friends_CD_mast-p2p</option>


                            <option value="863">18_Smyteniye5.3-p2p</option>


                            <option value="864">19_Na_Schastye_CD_mast-p2p</option>

                        </select>
                    </div>
                </div>
                <div class="elem_ready flexim">
                    <div class="elem_file_ready">
                        Откровение					
                        <input type="hidden" id="file_15" value="879">
                    </div>
                    <div class="elem_number_list" id="number_15">
                        15				
                    </div>
                    <div class="elem_meta_ready" id="meta_15">
                        <select name="metaSelect_15" id="select_15" class="select_ready">
                            <option>не выбрано</option>

                            <option value="846">01_Povoroty_CD_mast-p2p</option>


                            <option value="847">02_Vne_Pravil_CD_mast_2-p2p</option>


                            <option value="848">03_Pulse_CD_mast-p2p</option>


                            <option value="849">04_Jeff_44_CD_mast-p2p</option>


                            <option value="850">05_Game_CD_mast-p2p</option>


                            <option value="851">06_Extaz_CD_mast-p2p</option>


                            <option value="852">07_Neokon_Povest3.3-p2p</option>


                            <option value="853">08_SexHorses_CD_mast-p2p</option>


                            <option value="854">09_S_Blues_CD_mast-p2p</option>


                            <option value="855">10_Avalanche_CD_mast-p2p</option>


                            <option value="856">11_Vokr_Purpur2.3-p2p</option>


                            <option value="857">12_Play_with_Me_CD_mast-p2p</option>


                            <option value="858">13_Free_line_CD_mast-p2p</option>


                            <option value="859">14_I_Love_CD_mast-p2p</option>


                            <option value="860">15_Otkrovenye4.3-p2p</option>


                            <option value="861">16_Rubikon_CD_mast-p2p</option>


                            <option value="862">17_Friends_CD_mast-p2p</option>


                            <option value="863">18_Smyteniye5.3-p2p</option>


                            <option value="864">19_Na_Schastye_CD_mast-p2p</option>

                        </select>
                    </div>
                </div>
                <div class="elem_ready flexim">
                    <div class="elem_file_ready">
                        Rubicon					
                        <input type="hidden" id="file_16" value="880">
                    </div>
                    <div class="elem_number_list" id="number_16">
                        16				
                    </div>
                    <div class="elem_meta_ready" id="meta_16">
                        <select name="metaSelect_16" id="select_16" class="select_ready">
                            <option>не выбрано</option>

                            <option value="846">01_Povoroty_CD_mast-p2p</option>


                            <option value="847">02_Vne_Pravil_CD_mast_2-p2p</option>


                            <option value="848">03_Pulse_CD_mast-p2p</option>


                            <option value="849">04_Jeff_44_CD_mast-p2p</option>


                            <option value="850">05_Game_CD_mast-p2p</option>


                            <option value="851">06_Extaz_CD_mast-p2p</option>


                            <option value="852">07_Neokon_Povest3.3-p2p</option>


                            <option value="853">08_SexHorses_CD_mast-p2p</option>


                            <option value="854">09_S_Blues_CD_mast-p2p</option>


                            <option value="855">10_Avalanche_CD_mast-p2p</option>


                            <option value="856">11_Vokr_Purpur2.3-p2p</option>


                            <option value="857">12_Play_with_Me_CD_mast-p2p</option>


                            <option value="858">13_Free_line_CD_mast-p2p</option>


                            <option value="859">14_I_Love_CD_mast-p2p</option>


                            <option value="860">15_Otkrovenye4.3-p2p</option>


                            <option value="861">16_Rubikon_CD_mast-p2p</option>


                            <option value="862">17_Friends_CD_mast-p2p</option>


                            <option value="863">18_Smyteniye5.3-p2p</option>


                            <option value="864">19_Na_Schastye_CD_mast-p2p</option>

                        </select>
                    </div>
                </div>
                <div class="elem_ready flexim">
                    <div class="elem_file_ready">
                        Памяти друзей					
                        <input type="hidden" id="file_17" value="881">
                    </div>
                    <div class="elem_number_list" id="number_17">
                        17				
                    </div>
                    <div class="elem_meta_ready" id="meta_17">
                        <select name="metaSelect_17" id="select_17" class="select_ready">
                            <option>не выбрано</option>

                            <option value="846">01_Povoroty_CD_mast-p2p</option>


                            <option value="847">02_Vne_Pravil_CD_mast_2-p2p</option>


                            <option value="848">03_Pulse_CD_mast-p2p</option>


                            <option value="849">04_Jeff_44_CD_mast-p2p</option>


                            <option value="850">05_Game_CD_mast-p2p</option>


                            <option value="851">06_Extaz_CD_mast-p2p</option>


                            <option value="852">07_Neokon_Povest3.3-p2p</option>


                            <option value="853">08_SexHorses_CD_mast-p2p</option>


                            <option value="854">09_S_Blues_CD_mast-p2p</option>


                            <option value="855">10_Avalanche_CD_mast-p2p</option>


                            <option value="856">11_Vokr_Purpur2.3-p2p</option>


                            <option value="857">12_Play_with_Me_CD_mast-p2p</option>


                            <option value="858">13_Free_line_CD_mast-p2p</option>


                            <option value="859">14_I_Love_CD_mast-p2p</option>


                            <option value="860">15_Otkrovenye4.3-p2p</option>


                            <option value="861">16_Rubikon_CD_mast-p2p</option>


                            <option value="862">17_Friends_CD_mast-p2p</option>


                            <option value="863">18_Smyteniye5.3-p2p</option>


                            <option value="864">19_Na_Schastye_CD_mast-p2p</option>

                        </select>
                    </div>
                </div>
                <div class="elem_ready flexim">
                    <div class="elem_file_ready">
                        Смятение					
                        <input type="hidden" id="file_18" value="882">
                    </div>
                    <div class="elem_number_list" id="number_18">
                        18				
                    </div>
                    <div class="elem_meta_ready" id="meta_18">
                        <select name="metaSelect_18" id="select_18" class="select_ready">
                            <option>не выбрано</option>

                            <option value="846">01_Povoroty_CD_mast-p2p</option>


                            <option value="847">02_Vne_Pravil_CD_mast_2-p2p</option>


                            <option value="848">03_Pulse_CD_mast-p2p</option>


                            <option value="849">04_Jeff_44_CD_mast-p2p</option>


                            <option value="850">05_Game_CD_mast-p2p</option>


                            <option value="851">06_Extaz_CD_mast-p2p</option>


                            <option value="852">07_Neokon_Povest3.3-p2p</option>


                            <option value="853">08_SexHorses_CD_mast-p2p</option>


                            <option value="854">09_S_Blues_CD_mast-p2p</option>


                            <option value="855">10_Avalanche_CD_mast-p2p</option>


                            <option value="856">11_Vokr_Purpur2.3-p2p</option>


                            <option value="857">12_Play_with_Me_CD_mast-p2p</option>


                            <option value="858">13_Free_line_CD_mast-p2p</option>


                            <option value="859">14_I_Love_CD_mast-p2p</option>


                            <option value="860">15_Otkrovenye4.3-p2p</option>


                            <option value="861">16_Rubikon_CD_mast-p2p</option>


                            <option value="862">17_Friends_CD_mast-p2p</option>


                            <option value="863">18_Smyteniye5.3-p2p</option>


                            <option value="864">19_Na_Schastye_CD_mast-p2p</option>

                        </select>
                    </div>
                </div>
                <div class="elem_ready flexim">
                    <div class="elem_file_ready">
                        На счастье!					
                        <input type="hidden" id="file_19" value="883">
                    </div>
                    <div class="elem_number_list" id="number_19">
                        19				
                    </div>
                    <div class="elem_meta_ready" id="meta_19">
                        <select name="metaSelect_19" id="select_19" class="select_ready">
                            <option>не выбрано</option>

                            <option value="846">01_Povoroty_CD_mast-p2p</option>


                            <option value="847">02_Vne_Pravil_CD_mast_2-p2p</option>


                            <option value="848">03_Pulse_CD_mast-p2p</option>


                            <option value="849">04_Jeff_44_CD_mast-p2p</option>


                            <option value="850">05_Game_CD_mast-p2p</option>


                            <option value="851">06_Extaz_CD_mast-p2p</option>


                            <option value="852">07_Neokon_Povest3.3-p2p</option>


                            <option value="853">08_SexHorses_CD_mast-p2p</option>


                            <option value="854">09_S_Blues_CD_mast-p2p</option>


                            <option value="855">10_Avalanche_CD_mast-p2p</option>


                            <option value="856">11_Vokr_Purpur2.3-p2p</option>


                            <option value="857">12_Play_with_Me_CD_mast-p2p</option>


                            <option value="858">13_Free_line_CD_mast-p2p</option>


                            <option value="859">14_I_Love_CD_mast-p2p</option>


                            <option value="860">15_Otkrovenye4.3-p2p</option>


                            <option value="861">16_Rubikon_CD_mast-p2p</option>


                            <option value="862">17_Friends_CD_mast-p2p</option>


                            <option value="863">18_Smyteniye5.3-p2p</option>


                            <option value="864">19_Na_Schastye_CD_mast-p2p</option>

                        </select>
                    </div>
                </div>
            </div>

        </div>

    </div>

    <div class="release_button_block">
        <a href="#" onclick="SaveEdit()">
            <div class="button apply">СОХРАНИТЬ</div>
        </a>
    </div>
    <script>
        function SaveEdit() {

            for (let i = 1; i <= 19; i++) {
                let metaID = document.getElementById('file_' + i).value;
                let fileID = document.getElementById('select_' + i).value;
                $.ajax({
                    method: "GET",
                    url: "/app/audio-release/refresh-page/ready-save.aspx", //загружаемая страница
                    data: { "metaID": metaID, "fileID": fileID, "releaseID": 845 }, //параметры которые передаём
                    dataType: 'html', //Тип данных
                    cache: false,
                })
                    .done(function (result) {
                        console.log("Complite");
                    })
                    .fail(function (error) {
                        console.log("Error");
                    });

            }

        }
    </script>
</asp:Content>
