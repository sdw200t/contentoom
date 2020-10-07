<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="contentoom._Default" EnableSessionState="True" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">
        <div class="col-md-4">
            <asp:Button ID="btnReadUsers" runat="server" Text="Прочитать пользователей" />
            &nbsp;<asp:DropDownList ID="dlUsers" runat="server" Width="199px"> 
            </asp:DropDownList>
            <br />
            <asp:Button ID="btnReadGroup" runat="server" Text="Прочитать группы пользователей" />
            &nbsp;<asp:DropDownList ID="dlGroup" runat="server" Width="184px">
            </asp:DropDownList>
        </div>
        <div class="col-md-4">
            &nbsp;<br />
            <asp:Login ID="UserLogin" runat="server">
            </asp:Login>
            <br />
            <asp:LinkButton ID="lbRegistration" runat="server">Регистрация</asp:LinkButton>
            <br />
            <asp:CreateUserWizard ID="CreateUserWizard" runat="server">
                <WizardSteps>
                    <asp:CreateUserWizardStep runat="server" />
                    <asp:CompleteWizardStep runat="server" >
                        <ContentTemplate>
                            <table>
                                <tr>
                                    <td align="center" colspan="2">Завершить</td>
                                </tr>
                                <tr>
                                    <td>Ваша учетная запись создана.</td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" CommandName="Continue" Text="Продолжить" ValidationGroup="CreateUserWizard" />
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:CompleteWizardStep>
                </WizardSteps>
            </asp:CreateUserWizard>
            <asp:LinkButton ID="lbEnter" runat="server">Вход</asp:LinkButton>
        </div>    
    </div>

</asp:Content>
