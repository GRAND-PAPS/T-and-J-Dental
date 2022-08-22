<%@ Page Title="" Language="C#" MasterPageFile="~/Dental.Master" AutoEventWireup="true" CodeBehind="Patients.aspx.cs" Inherits="T_and_J_Dental.Patients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12 row"> 
        <div class="col-lg-4">
            <asp:Button ID="patientbtretrieve" runat="server" CssClass="btn btn-lg btn-info m-auto" Text="All Patients" OnClick="patientbtretrieve_Click" />
        </div>
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
            <div class="fluid-container mt-4">
                <asp:GridView ID="patientGridView" runat="server" CssClass="col-12 fs-3" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="Patientid" HeaderText="Patientid"/>
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" />
                        <asp:BoundField DataField="Othernames" HeaderText="Othernames" />
                        <asp:BoundField DataField="Surname" HeaderText="Surname" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone Number" />
                        <asp:BoundField DataField="Gender" HeaderText="Sex" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="Bookbtn" runat="server" CssClass="btn btn-md btn-info" Text="re-book" OnClick="Bookbtn_Click" />
                                </ItemTemplate>
                            </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                
            </div>
    </div>
</asp:Content>
