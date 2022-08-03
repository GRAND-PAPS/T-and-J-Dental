<%@ Page Title="" Language="C#" MasterPageFile="~/Dental.Master" AutoEventWireup="true" CodeBehind="Addservice.aspx.cs" Inherits="T_and_J_Dental.Addservice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-lg-12">
        <a href="services.aspx" class="btn btn-info fs-5 col-1">BACK</a>

       <%-- for Officers Only--%>
        <div class="col-12 text-center mt-3">
            <asp:Button ID="allservicesbtn" runat="server" CssClass="btn alert alert-success fs-4" Font-Size="Large" Text="ALL SERVICES"/>
            <asp:Button ID="newServicesbtn" runat="server" CssClass="btn alert alert-success fs-4" Font-Size="Large" Text="ADD NEW SERVICES"/>
        </div>

        <%--service form--%>
        <div class="col-12">

        </div>      
    </div>
</asp:Content>
