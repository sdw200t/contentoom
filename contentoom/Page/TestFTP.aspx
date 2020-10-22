<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/template/app/app.Master" CodeBehind="TestFTP.aspx.vb" Inherits="contentoom.TestFTP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderApp" runat="server">

    <input id="File1" type="file" runat="server"/>
    <input type="button" 
              id="Button1" 
              value="Upload" 
              onserverclick="Button1_Click" 
              runat="server" />

</asp:Content>
