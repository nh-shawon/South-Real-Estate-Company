<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="South___Real_Estate_Company.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"  lang="en">
<head runat="server">
    <title>Registration</title>
     <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>

	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">

	<link rel="stylesheet" type="text/css" href="fontsLogin/font-awesome-4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css" href="fontsLogin/Linearicons-Free-v1.0.0/icon-font.min.css">

	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">

	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">

	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">

	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">

	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">

	<link rel="stylesheet" type="text/css" href="cssLogin/util.css">
	<link rel="stylesheet" type="text/css" href="cssLogin/main.css">
    <script type="text/javascript" src="reg.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90">
				<form class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-51">
						Registration
					</span>

					
					<div class="wrap-input100 validate-input m-b-16">
                        <asp:TextBox ID="rn" runat="server" placeholder="Username" class="input100"></asp:TextBox>
						<span class="focus-input100"></span>
                        <asp:Label ID="lbluser" runat="server" Text="" ForeColor="Red"></asp:Label>
                        
					</div>
                    <div class="wrap-input100 validate-input m-b-16">
                        <asp:TextBox ID="remail" runat="server" placeholder="Email" class="input100" TextMode="Email"></asp:TextBox>
						<span class="focus-input100"></span>
                        <asp:Label ID="lblemail" runat="server" Text=""></asp:Label>
                        
					</div>
					
					
					<div class="wrap-input100 validate-input m-b-16">
                        <asp:TextBox ID="rpass"  class="input100" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
						<span class="focus-input100"></span>
                        <asp:Label ID="lblpass" runat="server" Text=""></asp:Label>
                        
					</div>
                    <div class="wrap-input100 validate-input m-b-16">
                        <asp:TextBox ID="rcpass"  class="input100" runat="server" placeholder=" Confirm Password" TextMode="Password"></asp:TextBox>
						<span class="focus-input100"></span>
                        <asp:Label ID="lblcpass" runat="server" Text=""></asp:Label>
                        
					</div>
					
					<div class="flex-sb-m w-full p-t-3 p-b-24">
						
                            <a href="login.aspx">
							<label>
								Already have an account?
							</label></a>
						

						
					</div>

					<div class="container-login100-form-btn m-t-17">
						
                        <asp:Button ID="regbtn" runat="server" Text="Register" class="login100-form-btn" OnClick="regbtn_Click" OnClientClick="return ValidateForm()"/>
			
						
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	

	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>

	<script src="vendor/animsition/js/animsition.min.js"></script>

	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="vendor/select2/select2.min.js"></script>
<
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>

	<script src="vendor/countdowntime/countdowntime.js"></script>

	
    </form>
    
</body>
</html>
