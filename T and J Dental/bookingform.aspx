<%@ Page Title="" Language="C#" MasterPageFile="~/Dental.Master" AutoEventWireup="true" CodeBehind="bookingform.aspx.cs" Inherits="T_and_J_Dental.booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


                  <div class="content-box-large m-2">
  				        <div class="panel-heading">
                            <div class="panel-title">
                              <h5 class="text-danger"><strong>PATIENT BOOKING FORM:</strong></h5>  
                            </div>
				         </div>

                     <!--History form-->
  				        <div class="panel-body">
  					         <div class="col-md-12 row">
                                 <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="firstnamelbl" CssClass="fs-3" runat="server">Firstname:</asp:Label>
                                     <asp:TextBox ID="firstnameinput" Placeholder="Firstname" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
                                 </div>
                                 <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="othernameslbl" CssClass="fs-3" runat="server">Othernames:</asp:Label>
                                     <asp:TextBox ID="othernamesinput" Placeholder="Othernames" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
                                 </div>
                                 <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="surnamelbl" CssClass="fs-3" runat="server">Surname:</asp:Label>
                                     <asp:TextBox ID="surnameinput" Placeholder="Surname" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
                                 </div>
  					        </div>

                             <div class="col-md-12 row g-3">
                                  <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="Label3" CssClass="fs-3" runat="server">Gender:</asp:Label>
                                     <asp:DropDownList ID="GenderDropdown" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large">
                                         <asp:ListItem ID="Maletext" Text="Male"></asp:ListItem>
                                         <asp:ListItem ID="Femaletext" Text="Female"></asp:ListItem>
                                     </asp:DropDownList>
                                 </div>
                                 <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="addresslbl" CssClass="fs-3" runat="server">Address:</asp:Label>
                                     <asp:TextBox ID="addressTextBox" placeholder=" etc P.O Box 1111" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
                                 </div>                                 
                                 <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="phone" CssClass="fs-3" runat="server">Phone:</asp:Label>
                                     <asp:TextBox ID="phoneTextBox" Placeholder="Phone Number" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
                                 </div>
  					        </div>

                              <div class="col-md-12 row g-3">
                                 <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="bookeddatelbl" CssClass="fs-3" runat="server">Booked Date:</asp:Label>
                                     <asp:TextBox ID="Bookeddatetextbox" Type="Date" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
                                 </div>
                                 <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="residencelbl" CssClass="fs-3" runat="server">Residence:</asp:Label>
                                     <asp:TextBox ID="residencetextbox" placeholder="physical Address" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
                                 </div>
                                 <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="worklbl" CssClass="fs-3" runat="server">Work/Business:</asp:Label>
                                     <asp:TextBox ID="workTextBox" placeholder="Work/Business" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
                                 </div>
  					        </div>

                               <div class="col-md-12 row g-3">
                                 <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="emailbl" CssClass="fs-3" runat="server">Email:</asp:Label>
                                     <asp:TextBox ID="emailTextBox" Placeholder="example@mail.com" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
                                 </div>                                 
  					        </div>
  				        </div>
  			      </div>
                
                 <div class="col-lg-12 row mt-3">
                    <div class="col-md-6">
                        <a href="booking.aspx" class="btn btn-lg btn-info fs-4 col-2">BACK</a>
                    </div>
                    <div class="col-lg-6 text-end">
                        <a href="booking.aspx" class="btn btn-lg btn-danger fs-4">CANCEL</a>
                        <asp:button ID="bookingsubmitbtn" runat="server" CssClass="btn btn-lg btn-success fs-4" Text="SAVE" OnClick="bookingsubmitbtn_Click"/>
                    </div>
                </div>

</asp:Content>
