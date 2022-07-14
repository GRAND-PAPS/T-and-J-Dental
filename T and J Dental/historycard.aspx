<%@ Page Title="" Language="C#" MasterPageFile="~/Dental.Master" AutoEventWireup="true" CodeBehind="historycard.aspx.cs" Inherits="T_and_J_Dental.historycard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                 <div class="content-box-large">
  				    <div class="panel-heading">
                        <div class="panel-title">
                          <h5 class="text-danger"><strong>PATIENT HISTORY CARD:</strong></h5>  
                        </div>
				     </div>

                     <!--History form-->
  				        <div class="panel-body">
  					        <div class="col-md-12 row g-3">
                                 <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="firstnamelbl" CssClass="fs-3" runat="server">Firstname:</asp:Label>
                                     <asp:TextBox ID="firstnameinput" placeholder="First Name" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
                                 </div>
                                 <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="othernameslbl" CssClass="fs-3" runat="server">Othernames:</asp:Label>
                                     <asp:TextBox ID="othernamesinput" placeholder="Other Names" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
                                 </div>
                                 <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="surnamelbl" CssClass="fs-3" runat="server">Surname:</asp:Label>
                                     <asp:TextBox ID="surnameinput" placeholder="Surname" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
                                 </div>
  					        </div>
                            <div class="col-md-12 row g-3">
                                <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="genderlblbook" CssClass="fs-3" runat="server">Gender:</asp:Label>
                                     <asp:DropDownList ID="GenderDropdown" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large">
                                         <asp:ListItem ID="Maletextcard" Text="Male"></asp:ListItem>
                                         <asp:ListItem ID="Femaletextcard" Text="Female"></asp:ListItem>
                                     </asp:DropDownList>
                                 </div>
                                 <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="addresslbl" CssClass="fs-3" runat="server">Address:</asp:Label>
                                     <asp:TextBox ID="addressTextBox" placeholder="Address" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
                                 </div>
                                 <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="emaillbl" CssClass="fs-3" runat="server">Email:</asp:Label>
                                     <asp:TextBox ID="emailTextBox" placeholder="example@email.com" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
                                 </div>                                
  					        </div>
                             <div class="col-md-12 row g-3">
                                  <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="phone" CssClass="fs-3" runat="server">Phone:</asp:Label>
                                     <asp:TextBox ID="phoneTextBox" placeholder="Phone Number" type="number" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
                                 </div>
                                 <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="DOBlabel" CssClass="fs-3" runat="server">Date Of Birth:</asp:Label>
                                     <asp:TextBox ID="DOBTextBox" placeholder="DD/MM/YYYY" type="date" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
                                 </div>
                                 <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="employerLabel" CssClass="fs-3" runat="server">Employer:</asp:Label>
                                     <asp:TextBox ID="employerTextBox" placeholder="Work place" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
                                 </div>                                 
  					        </div>
                            <div class="col-md-12 row g-3">
                                <div class="col-md-4 input-group-lg">
                                     <asp:Label ID="Label3" CssClass="fs-3" runat="server">Guardian:</asp:Label>
                                     <asp:DropDownList ID="guardianDropdown" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large">
                                         <asp:ListItem ID="parentdroplist" Text="Parent"></asp:ListItem>
                                         <asp:ListItem ID="Legaldroplist" Text="Legal Guardian"></asp:ListItem>
                                         <asp:ListItem ID="Nonedroplist" Text="None" Selected="True"></asp:ListItem>
                                     </asp:DropDownList>
                                </div>
                                <div class="col-md-4 input-group-lg">
                                    <asp:Label ID="insuranceID" CssClass="fs-3" runat="server">Do you have dental insurance.?</asp:Label>
                                    <asp:DropDownList ID="insurancedroplist" CssClass="form-control" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large">
                                        <asp:ListItem ID="nodroplist" Text="NO"></asp:ListItem>   
                                        <asp:ListItem ID="yesdroplist" Text="YES" ></asp:ListItem>                                                                                       
                                    </asp:DropDownList>
                                </div>                                    
                            </div>
  				        </div>
  			      </div>
                <div class="col-lg-12 row">
                    <div class="col-lg-8"></div>
                    <div class="col-lg-4 text-end">
                        <a href="index.aspx" class="btn btn-lg btn-danger fs-4">CANCEL</a>
                        <asp:button ID="historysubmitbtn" runat="server" CssClass="btn btn-md btn-success fs-4 col-md-4" Text="SAVE" OnClick="historysubmitbtn_Click"/>
                    </div>
                </div>

</asp:Content>
