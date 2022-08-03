<%@ Page Title="" Language="C#" MasterPageFile="~/Dental.Master" AutoEventWireup="true" CodeBehind="Patients.aspx.cs" Inherits="T_and_J_Dental.Patients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12 row"> 
        <div class="col-lg-4"></div>
        <div class="col-lg-8 form-group row"> 
            <div class="col-lg-4">
                 <asp:TextBox ID="patientfirstname" placeholder="First Name" runat="server" CssClass="fs-4 form-control" aria-descibedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
            </div>
            <div class="col-lg-5">
                 <asp:TextBox ID="patientsurname" placeholder="Surname" runat="server" CssClass="fs-4 form-control" aria-descibedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
            </div>               
            <div class="col-lg-3">
                <asp:Button ID="patientsbtn" Text="Search" CssClass="btn btn-primary form-control fs-4" runat="server" OnClick="patientsbtn_Click"/>  
            </div>                                       
        </div>           
    </div>
     
    <div class="col-lg-12 m-2 text-center card">
        <asp:Label ID="patientslbl" runat="server" CssClass="" Font-Size="X-Large" Font-Bold="true">PATIENTS RESULTS RECORDS:</asp:Label>
            <div class="">
                
            </div>
    </div>
</asp:Content>
