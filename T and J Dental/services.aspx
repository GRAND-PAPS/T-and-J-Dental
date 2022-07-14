<%@ Page Title="" Language="C#" MasterPageFile="~/Dental.Master" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="T_and_J_Dental.services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12">
       <%-- for Officers Only--%>
        <div class="col-12 mt-2">
            <asp:Button ID="allservicesbtn" runat="server" CssClass="btn alert alert-success fs-2" Font-Size="XX-Large" Text="ALL SERVICES"/>
            <asp:Button ID="Button1" runat="server" CssClass="btn alert alert-success fs-2" Font-Size="XX-Large"/>
        </div>

        <%--for Administrator Only--%>
        <div class="col-12">

        </div>
        <%--results for all services Offered--%>
        <div class="col-12">
            
        </div>
    </div>
</asp:Content>
