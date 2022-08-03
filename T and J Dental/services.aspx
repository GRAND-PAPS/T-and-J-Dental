<%@ Page Title="" Language="C#" MasterPageFile="~/Dental.Master" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="T_and_J_Dental.services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12">
        <%--search on service--%>
        <div class="col-12 mt-1 row">
            <div class="col-4"></div>
            <div class="col-8 row">
                <div class="col-4"></div>
                <div class="col-6"><asp:TextBox ID="textsearchservice" CssClass="form-control" runat="server" Font-Size="X-Large" placeholder="Patient ID"></asp:TextBox></div>
                <div class="col-2"><asp:Button ID="btnsearchservice" CssClass="btn btn-info form-control" Font-Size="X-Large" runat="server" Text="Search"/></div>
            </div>
        </div>

       <%-- for Officers Only--%>
        <div class="col-12 text-center mt-3">
            <asp:Button ID="allservicesbtn" runat="server" CssClass="btn alert alert-success fs-4" Font-Size="Large" Text="ALL SERVICES"/>
            <asp:Button ID="newServicesbtn" runat="server" CssClass="btn alert alert-success fs-4" Font-Size="Large" Text="ADD NEW SERVICES" OnClick="newServicesbtn_Click"/>
        </div>

        <%--for Administrator Only--%>
        <div class="col-12">

        </div>
        <%--results for services Offered--%>
        <div class="col-12">
            
        </div>
    </div>
</asp:Content>
