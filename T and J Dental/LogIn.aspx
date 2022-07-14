<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="T_and_J_Dental.LogIn" %>

<!DOCTYPE html>

<html>
<head>
    <title>T and J Dental</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <!-- styles -->
    <link href="styles.css" rel="stylesheet">
    <!--icons-->
    <link href="icons-1.5.0/font/bootstrap-icons.css" rel="stylesheet">
  </head>
<body class="" style=" background-image:url('images/Login_dental.png'); background-repeat:no-repeat; background-size:inherit; background-position:inherit;">
      <div class="mb-2 col-lg-12 row mt-4">
               <div class="col-lg-4 mt-2">
                   
               </div>
	           <div class="col-lg-4 mt-2">
	              <!-- Logo -->
	              <div class="logo mt-5 text-center">
	                  <img src="images/logo_T&J.png" class="" style="width: 80%;"/>
	              </div>

            <form id="form1" runat="server" class="col-md-12">
                  <div class="input-group-lg mt-3">
                      <asp:Label ID="usernamelbl" CssClass="fs-3" runat="server"><strong>USERNAME</strong></asp:Label>
                      <asp:TextBox ID="usernameinput" placeholder="Username" CssClass="form-control fs-2" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>
                  </div>
                   <div class="input-group-lg mt-3">
                      <asp:Label ID="passwordll1" CssClass="fs-3" runat="server"><strong>PASSWORD</strong></asp:Label>
                      <asp:TextBox ID="passwordinput" Type="password" placeholder="Password" CssClass="form-control fs-2" runat="server" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large"></asp:TextBox>                 
                  </div>

                    <asp:Button ID="loginsubmit" Text="LOG IN" CssClass="col-lg-12 btn btn-lg btn-primary mt-3 fs-3" runat="server" OnClick="loginsubmit_Click"/>
                  <%--  <a href="index.aspx" class="col-lg-12 btn btn-lg btn-primary mt-3 fs-3">LOG IN</a>--%>
                
            </form>

                   <div class="text-center mt-3">
                       <asp:Label ID="Loginerrorlbl" runat="server" CssClass="text-danger" Font-Size="X-Large" Font-Bold="true"></asp:Label>
                   </div>
	           </div>	  
               <div class="col-lg-4 mt-2">

               </div>
	     </div>
</body>
</html>

