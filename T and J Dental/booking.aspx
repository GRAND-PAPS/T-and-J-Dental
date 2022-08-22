<%@ Page Title="" Language="C#" MasterPageFile="~/Dental.Master" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="T_and_J_Dental.booking1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-lg-12 row"> 
        <div class="col-lg-4"></div>
        <div class="col-lg-8 form-group row"> 
            <div class="col-lg-4">
                 <asp:TextBox ID="firstnamebookingsearch" placeholder="First Name" runat="server" CssClass="fs-3 form-control" aria-descibedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
            </div>
            <div class="col-lg-5">
                 <asp:TextBox ID="surnamebookingsearch" placeholder="Surname" runat="server" CssClass="fs-3 form-control" aria-descibedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
            </div>               
            <div class="col-lg-3">
               <asp:Button ID="bookingbtnsearch" Text="Search" CssClass="btn btn-primary form-control fs-3" runat="server" OnClick="bookingbtnsearch_Click" data-bs-toggle="modal" data-bs-target="#booking"/> 
<%--                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Search</button>--%>
            </div>                                       
        </div>           
    </div>

     <!--UnderDevelopment-->
     <div class="col-lg-12 row">
         <div class="m-2 form-group">
              <asp:Button ID="allBookingbtn" runat="server" CssClass="btn btn-sm alert alert-success m-2" OnClick="allBookingbtn_Click" Text="All Bookings" Font-Size="X-Large"/>
              <a href="bookingform.aspx" class="btn btn-sm alert-success"><i class="bi bi-journal-text btn btn-sm fs-4"><span class="fs-4">Booking form</span></i></a>           
         </div>  
    </div>

    <div class="col-lg-12 m-2 text-center">
        <asp:Label ID="bookingList" runat="server" CssClass="" Font-Size="X-Large" Font-Underline="true" ><strong>BOOKING LIST FOR APPLICANTS:</strong></asp:Label>
            <div class=" col-lg-12 mt-3 card">
<%--                <asp:Panel ID="Bookingpanel" CssClass="col-12 table-hover" runat="server"></asp:Panel>--%>
                <asp:GridView ID="BookingDataGrid" runat="server" CssClass="col-12 fs-3" AutoGenerateColumns="false" BorderStyle="None">
                    <Columns>
                        <%--<asp:BoundField DataField="Bookingid" HeaderText="Booking Id" ReadOnly="true" SortExpression="Bookingid"/>--%>
                        <asp:BoundField DataField="Firstname" HeaderText="First Name" SortExpression="Firstname" />
                        <asp:BoundField DataField="Othernames" HeaderText="Other Name" SortExpression="Othernames" />
                        <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone Number" SortExpression="Phone" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="Proceed" Text='<%# Bind("Bookingid")%>' runat="server" CssClass="btn btn-success" OnClick="Proceed_Click"></asp:LinkButton>
                                <asp:LinkButton ID="Cancel" Text='<%# Bind("Bookingid") %>' runat="server" CssClass="btn btn-danger" OnClick="Cancel_Click"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
    </div>
    

    <!-- Modal -->
        <%--<div class="modal fade" id="booking" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                   <div class=" col-lg-12 mt-3 card">
                        <asp:Panel ID="ModelPanel" CssClass="col-12 table-hover" runat="server"></asp:Panel>
                   </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Understood</button>
              </div>
            </div>
          </div>
        </div>--%>

  </asp:Content>
