<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="TestFTP.aspx.vb" Inherits="contentoom.TestFTP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <input id="File1" type="file" runat="server"/>
    <input type="button" 
              id="Button1" 
              value="Upload" 
              onserverclick="Button1_Click" 
              runat="server" />

</asp:Content>
