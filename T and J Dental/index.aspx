<%@ Page Title="" Language="C#" MasterPageFile="~/Dental.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="T_and_J_Dental.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                <div class="">
  				    <div class="panel-body">
  					    <div class="col-md-12 row">

                              <a href="Patients.aspx" class="text-dark a col-md-3 btn">                                
                                    <div class="text-center card btn btn-info" style="height:16rem;">                             
                                       <div class="text-center m-3" style="height: 10rem;">
                                            <img src="icons/patients.ico" style="width:inherit; height:inherit;"/>
                                            <h4 class="fw-bold mt-2">PATIENTS</h4>
                                        </div>
                                      </div>
                               </a>                                
                            

                                <a href="Pages/#" class="text-dark a col-md-3 btn disabled">
                                    <div class="text-center card btn btn-info" style="height:16rem;" >
                                         <div class="text-center m-3" style="height: 10rem;">
                                            <img src="icons/report.ico" style=" width:inherit; height:inherit"/>                               
                                             <h4 class="fw-bold mt-2">REPORT</h4>
                                        </div>                                
                                    </div>
                                </a>

                               <a href="AddUser.aspx" id="addUser" class="text-dark a col-md-3 btn">                                
                                    <div class="text-center card btn btn-info" style="height:16rem;">                             
                                       <div class="text-center m-3" style="height: 10rem;">
                                            <img src="icons/User.ico" style="width:inherit; height:inherit;"/>
                                            <h4 class="fw-bold">USER REGISTRATION</h4>
                                        </div>
                                      </div>
                               </a>                                
                            

                                <a href="employee.aspx" id="employeeRegistration" class="text-dark a col-md-3 btn">
                                    <div class="text-center card btn btn-info" style="height:16rem;" >
                                         <div class="text-center m-3" style="height: 10rem;">
                                            <img src="icons/employee.ico" style=" width:inherit; height:inherit"/>                               
                                             <h4 class="fw-bold mt-2">EMPLOYEE REGISTRATION</h4>
                                        </div>                                
                                    </div>
                                </a>
                               
  					</div>

                     <div class="col-md-12 row">                             

                                 <a href="historycard.aspx" class="text-dark a col-md-3 btn">
                                    <div class="text-center card btn btn-info" style="height:16rem;">                             
                                        <div class="text-center m-3" style="height:10rem;">
                                        <img src="icons/HistoryCard.ico" style="width:inherit; height:inherit;"/>
                                          <h4 class="fw-bold mt-2">HISTORY CARD</h4>
                                        </div>                                      
                                    </div>
                                </a>

                              <a href="booking.aspx" class="text-dark a col-md-3 btn">
                                <div class="text-center card btn btn-info" style="height:16rem;">                                    
                                    <div class="text-center m-3" style="height:10rem;">
                                      <img src="icons/booking.ico" style="width:inherit; height:inherit;"/>
                                      <h4 class="fw-bold mt-2">BOOKINGS</h4>
                                    </div>
                                </div>
                              </a>

                             <a href="services.aspx" class="text-dark a col-md-3 btn">
                                    <div class="text-center card btn btn-info" style="height:16rem;">                             
                                        <div class="text-center m-3" style="height:10rem;">
                                        <img src="icons/service.ico" style="width:inherit; height:inherit;"/>
                                          <h4 class="fw-bold mt-2">SERVICE</h4>
                                        </div>                                      
                                    </div>
                                </a>

                              <%--<a href="Pages/#" class="text-dark a col-md-3 btn">
                                <div class="text-center card btn btn-info" style="height:16rem;">                                    
                                    <div class="text-center m-3" style="height:10rem;">
                                      <img src="icons/Profile.ico" style="width:inherit; height:inherit;"/>
                                      <h4 class="fw-bold">PROFILE</h4>
                                    </div>
                                </div>
                              </a>--%>

  					</div>

  				</div>
  			</div>

</asp:Content>
