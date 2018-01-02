<%-- 
    Document   : nav
    Created on : 9 Aug, 2017, 3:44:40 PM
    Author     : Sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="css/demo.css" rel="stylesheet" type="text/css"/>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans|Open+Sans+Condensed:300|Oswald" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">  
    <link href="css/owl.carousel.css" rel="stylesheet" type="text/css"/>
    <link href="css/owl.theme.css" rel="stylesheet" type="text/css"/>
    <link href="css/owl.transitions.css" rel="stylesheet" type="text/css"/>
    <script src="js/owl.carousel.min.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-router/1.0.3/angular-ui-router.min.js"></script>
    <script src="custom/jsjs.js" type="text/javascript"></script>
    <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
   <script src="custom/services.js" type="text/javascript"></script>
    <script src="custom/app.js" type="text/javascript"></script>
    <script src="custom/filters.js" type="text/javascript"></script>
    <script src="custom/controllers.js" type="text/javascript"></script>
    <script src="custom/directives.js" type="text/javascript"></script>
    <link href="css/hover.css" rel="stylesheet" type="text/css"/>
   
    <style>
.grids figure {
	position: relative;
    overflow: hidden;
    background:#000000;
    text-align: center;
}

.grids figure img {
	position: relative;
	display: block;
	opacity: 0.8;
}

.grids figure figcaption {
	padding: 2em;
    -webkit-backface-visibility: hidden;
    backface-visibility: hidden;
}

.grids figure figcaption::before,
.grids figure figcaption::after {
	pointer-events: none;
}

.grids figure figcaption{
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

.grids figure h3 {
	word-spacing: -0.15em;
	font-weight: 300;
}

.grids figure h3 span {
	font-weight: 800;
    color: #2cc4f7;
}

.grids figure p {
    letter-spacing: 12px;
    color: #fff;
    line-height: 2em;
    font-size: 1.1em;
}

figure.effect-roxy img {
	max-width: none;
	width: -webkit-calc(100% + 60px);
	width: calc(100% + 60px);
	width: -moz-calc(100% + 60px);
	width: -o-calc(100% + 60px);
	width: -ms-calc(100% + 60px);
	-webkit-transition: opacity 0.35s, -webkit-transform 0.35s;
	transition: opacity 0.35s, transform 0.35s;
	-webkit-transform: translate3d(-50px,0,0);
	transform: translate3d(-50px,0,0);
	-moz-transform: translate3d(-50px,0,0);
	-o-transform: translate3d(-50px,0,0);
	-ms-transform: translate3d(-50px,0,0);
}

figure.effect-roxy figcaption::before {
	position: absolute;
	top: 30px;
	right: 30px;
	bottom: 30px;
	left: 30px;
    border: 4px solid #fff;
	content: '';
	opacity: 0;
	-webkit-transition: opacity 0.35s, -webkit-transform 0.35s;
	transition: opacity 0.35s, transform 0.35s;
	-webkit-transform: translate3d(-20px,0,0);
	transform: translate3d(-20px,0,0);
	-ms-transform: translate3d(-20px,0,0);
	-moz-transform: translate3d(-20px,0,0);
	-o-transform: translate3d(-20px,0,0);
}

figure.effect-roxy figcaption {
    padding: 3em;
    text-align: right;
    border: 13px solid rgba(255, 255, 255, 0.15);
}

figure.effect-roxy h3 {
    padding: 1.5em 0 .5em;
    font-size: 1.7em;
    color: #fff;
    text-transform: uppercase;
    letter-spacing: 5px;
}
figure.effect-roxy p {
	opacity: 0;
	-webkit-transition: opacity 0.35s, -webkit-transform 0.35s;
	transition: opacity 0.35s, transform 0.35s;
	-webkit-transform: translate3d(-10px,0,0);
	transform: translate3d(-10px,0,0);
}

figure.effect-roxy:hover img,.agileinfo_banner_bottom_grid_three_left:hover img{
	opacity: 0.7;
	-webkit-transform: translate3d(0,0,0);
	transform: translate3d(0,0,0);
}

figure.effect-roxy:hover figcaption::before,
figure.effect-roxy:hover p,.agileinfo_banner_bottom_grid_three_left:hover figcaption::before,
.agileinfo_banner_bottom_grid_three_left:hover p{
	opacity: 1;
	-webkit-transform: translate3d(0,0,0);
	transform: translate3d(0,0,0);
}

.wthree_banner_bottom_grid_three_left1 {
    width: 49.5%;
    float: left;
}
.banner_bottom_agile_info {
    padding: 5em 0;
}
.banner_bottom_agile_info.team {
    background: #f5f5f5;
}
   
.schedule-bottom {
    background: #26cdd6;
}
.agileits_schedule_bottom_right,.agileinfo_schedule_bottom_left {
    padding: 0;
}
.agileinfo_schedule_bottom_left img{
	width:100%;
}
.w3ls_schedule_bottom_right_grid{
    padding: 3em 2em;
    background: #fff;
    margin: 6.5em 0 0;
    width: 90%;
    box-shadow: 5px 0px 10px #19a98c;

}
.w3ls_schedule_bottom_right_grid h3{
    text-transform: uppercase;
    font-size: 1.4em;
    color: #212121;
    letter-spacing: 2px;
    font-weight: 700;
}
.w3ls_schedule_bottom_right_grid h3 span{
	color:#fc636b;
}
.w3ls_schedule_bottom_right_grid p{
	margin:1em 0 2em;
    color: #545454;
	line-height:2em;
}
.w3l_schedule_bottom_right_grid1{
	text-align:center;
}
.w3l_schedule_bottom_right_grid1 i{
    font-size: 1.5em;
    color: #2fdab8;
    display: block;
	
}
.w3l_schedule_bottom_right_grid1 h4{
	margin: 1em 0;
    color: #212121;
    text-transform: uppercase;
    font-size: 1em;
	letter-spacing: 2px;
}
.w3l_schedule_bottom_right_grid1 h5{
	font-size:2em;
	color:#212121;
	font-weight:600;
}
h3.wthree_text_info {
    font-size: 2.5em;
    font-weight: 700;
    text-align: center;
    letter-spacing: 2px;
    color: #000;
    margin-bottom: 1em;
    text-transform: uppercase;
}
h3.wthree_text_info span{
  font-weight:300;
}
/*-- //schedule-bottom --*/
/*-- new_arrivals --*/
.new_arrivals{
	padding:90px 0;
}
.new_arrivals h3{
	color:#000;
	font-size:36px;
	text-align:center;
	text-transform:uppercase;
	margin-bottom:30px;
}
.new_arrivals h3 span{
	color:#2fdab8;
}
.new_arrivals p{
	color:#848484;
	font-size:16px;
	text-align:center;
}
.new-gd-left{
position:relative;
}
.new-gd-left img{
	width:100%;
}
.new_grids{
	margin-top:55px;
}
.wed-brand h5 {
    margin: 20px 0;
    color: #000;
    font-size: 23px;
    text-align: center;
}
.wed-brand h4{
	font-size:23px;
	text-align:center;
	color:#000;
	text-transform:uppercase;

}

.wed-brand {
    position: absolute;
    top: 28%;
    left: 12%;
}


/* Radial Out */
.hvr-radial-out {
  display: inline-block;
  vertical-align: middle;
  -webkit-transform: perspective(1px) translateZ(0);
  transform: perspective(1px) translateZ(0);
  box-shadow: 0 0 1px transparent;
  position: relative;
  overflow: hidden;
  background: #ffffff;
  -webkit-transition-property: color;
  transition-property: color;
  -webkit-transition-duration: 0.3s;
  transition-duration: 0.3s;
}
.hvr-radial-out:before {
  content: "";
  position: absolute;
  z-index: -1;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background:#02423f;
  -webkit-transform: scale(0);
  transform: scale(0);
  -webkit-transition-property: transform;
  transition-property: transform;
  -webkit-transition-duration: 0.3s;
  transition-duration: 0.3s;
  -webkit-transition-timing-function: ease-out;
  transition-timing-function: ease-out;
}
.hvr-radial-out:hover, .hvr-radial-out:focus, .hvr-radial-out:active {
  color: white;
}
.hvr-radial-out:hover:before, .hvr-radial-out:focus:before, .hvr-radial-out:active:before,.w3layouts_mail_grid_left:hover .hvr-radial-out:before{
  -webkit-transform: scale(2);
  transform: scale(2);
}
/*-- //coupons --*/

.single-promo{
border:5px solid #f2f2f2;
padding: 20px 20px 20px 20px;
text-align: center;
}

.single-promo i{
font-size: 24px;
    font-weight: 200;
}


    </style>

</head>
<body  id="page-top">
    
<div class="header" id="home">
	<div class="container">
	<div class="row">	
            <ul>
                <div class="col-md-3 col-sm-6 col-xs-12">
		    <li > <span style="cursor: pointer" data-toggle="modal" data-target="#myModal3" ><i class="fa fa-unlock-alt" aria-hidden="true"></i> Sign In                      |</span></li>
		</div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <li> <span style="cursor: pointer" data-toggle="modal" data-target="#myModal"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Sign Up                    |</span></li>
		</div >
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <li><i class="fa fa-phone" aria-hidden="true"></i> Call : 9582636339                 |</li>
		</div>
                <div class="col-md-3 col-sm-6 col-xs-12">  
                <li><i class="fa fa-envelope-o" aria-hidden="true"></i> aimshah001@gmail.com        |</li>
		</div>
            </ul>
            </div>
	</div>
</div>
<!--  modal-->
    		 <div  class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog" style="width:60%">
    
      <!-- Modal content-->
      <div class="modal-content" style="background:#034249;border-radius:1px" >
        <div class="modal-header" >
          <ul type="none">
		  <div class="col-md-6 col-sm-6 col-xs-12">
                  <li><a style="border-radius:1px ;text-decoration: none" data-dismiss="modal" data-toggle="modal" data-target="#myModal1"><section  class="demo-1">
				<div class="grid">
					<div class="box">
						<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">
							<line class="top" x1="0" y1="0" x2="900" y2="0"></line>
							<line class="left" x1="0" y1="460" x2="0" y2="-920"></line>
							<line class="bottom" x1="300" y1="400" x2="-600" y2="400"></line>
							<line class="right" x1="300" y1="0" x2="300" y2="1380"></line>
						</svg>
						<h3>C</h3>
                                                <span>Customer</span>
					</div>
		</div></section></a></li>
		  </div>
		  <div class="col-md-6 col-sm-6 col-xs-12">
		  <li><a style="border-radius:1px;text-decoration: none" data-dismiss="modal"  data-toggle="modal" data-target="#myModal2"><section class="demo-3">
				
				<div class="grid">
					<div class="box">
						<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">
							<line class="top" x1="0" y1="0" x2="900" y2="0"></line>
							<line class="left" x1="0" y1="400" x2="0" y2="-920"></line>
							<line class="bottom" x1="300" y1="400" x2="-600" y2="400"></line>
							<line class="right" x1="300" y1="0" x2="300" y2="1380"></line>
						</svg>
						<h3>S</h3>
					<span>Supplier</span>	
                                        </div></div></section></a></li>
		  </div>
		  </ul>
        <div class="modal-footer">
          <button style="border-radius:1px" id="bitti" type="button" class="btn btn-default hvr-hollow hvr-outline-out" data-dismiss="modal">Close</button>
          
        </div>
      </div>
      
    </div>
  </div>
 
				
			</div>
			
			<!-- Modal1 -->
                        	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content" style="border-radius:1px;border:20px double #034249">
					<div class="modal-header" style="margin-top:-6px">
						<button type="button" style="color:black;font-size:30px"  class="close btn btn-default hvr-hollow hvr-outline-out"  data-dismiss="modal">×</button>
					</div>
						<div class="modal-body modal-body-sub_agile" style="margin-top:-20px">
						<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">Sign In <span>Now</span></h3>
						<form id="login-form" action="login1" method="post">
							<div class="styled-input agile-styled-input-top">
								  <input type="email" name="email" id="uname" tabindex="1"  value="" required>
                  						<label>Email</label>
								<span></span>
							</div>
							<div class="styled-input">
								  <input type="password" name="password" id="pass" tabindex="2"   required="">
                                                               <label>Password</label>
								<span></span>
									  
                                                         </div>
                                                          <span style="color:red" id="content"></span><br>
                  
							<input  type="submit" name="login-submit" id="login-submit" tabindex="4"  value="Log In">
						</form>
						<ul class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
															<li><a href="" class="facebook">
																  <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
															<li><a href="" class="twitter"> 
																  <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
															<li><a href="" class="instagram">
																  <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
															<li><a href="" class="pinterest">
																  <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
														</ul>
														<div class="clearfix"></div>
														<p><a href="#" data-toggle="modal" data-target="#myModal2"> Don't have an account?</a></p>

						</div>
						<div class="col-md-4 modal_body_right modal_body_right1">
							<img src="img/login.jpg" alt=" ">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<!-- //Modal content-->
			</div>
		</div>
                        <script>
                            
   var form = $('#login-form');
 form.submit(function () {

 $.ajax({
 type: form.attr('method'),
 url: form.attr('action'),
 data: form.serialize(),
 success: function (data) {
 var result=data;
 
     if(result.indexOf("user")> -1)  { 
        
       location.href="nav.jsp"; 
        }
       else if(result.indexOf("admin")>-1){
        location.href="AddProduct.jsp";  
        }
        else if(result.indexOf("suplier")>-1){
        location.href="Suplier.jsp";  
        }
    
     else{
         $('#content').html("invalid username or password");
        }
       }
 });
 return false;
 });
  
   

                        </script>
		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content" style="border-radius:1px;border:20px double #034249">
					<div class="modal-header" style="margin-top:-6px">
						<button type="button" style="color:black;font-size:30px"  class="close btn btn-default hvr-hollow hvr-outline-out" data-dismiss="modal">×</button>
					</div>
						<div class="modal-body modal-body-sub_agile" style="margin-top:-20px">
						<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">Sign Up <span>Now</span></h3>
                                                    <span id="content2show" style="color:green"></span> 
                                                    <form id="register-form" action="AddClient" method="post" role="form">
							<div class="styled-input agile-styled-input-top">
								<input type="text" name="username" id="username">
								<label>User Name</label>
								<span></span>
							</div><i id="username_error"></i>
							<div class="styled-input">
								<input type="text" name="email" id="email" >
								<label>Email</label>
								<span></span>
							</div><i id="email_error"></i> 
							<div class="styled-input">
								<input type="password" name="password"  id="password" > 
								<label>Password</label>
								<span></span>
							</div><i id="password_error"></i> 
							<div class="styled-input">
								<input type="password" name="confirm-password"  id="confirm-password" > 
								<label>Confirm Password</label>
								<span></span>
							</div><i id="confirm_error"></i>
                                                     
                                                     <span style="color:red" id="content2"></span><br>
      
							<input type="submit" name="register-submit" id="register-submit" value="Sign Up">
						</form>
						  <ul class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
															<li><a href="" class="facebook">
																  <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
															<li><a href="" class="twitter"> 
																  <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
															<li><a href="" class="instagram">
																  <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
															<li><a href="" class="pinterest">
																  <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
														</ul>
														<div class="clearfix"></div>
														<p><a href="#">By clicking register, I agree to your terms</a></p>

						</div>
						<div class="col-md-4 modal_body_right modal_body_right1">
							<img src="img/user.jpg" alt=" ">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<!-- //Modal content-->
			</div>
		</div>
<!-- //Modal1 -->
<script>
 $(function(){
$("#username_error").hide();
$("#email_error").hide();
$("#password_error").hide();
$("#confirm_error").hide();

var username_error=false;
var email_error=false;
var password_error=false;
var confirm_error=false;


$("#username").focusout(function(){
check_username();
});


$("#email").focusout(function(){
check_email();
});

$("#password").focusout(function(){
check_password();
});

$("#confirm-password").focusout(function(){
check_confirm();
});



function check_username(){

var uname=$("#username").val().length;

if(uname <5 || uname > 15){
$("#username_error").html("character between 5 to 15");
$("#username_error").show();
username_error=true;

}else{
$("#username_error").hide();

}

}

function check_email(){
var pattern=new RegExp(/^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+[a-zA-Z]{2,4}$/);
if(pattern.test($("#email").val())){
$("#email_error").hide();
}else{
$("#email_error").html("invalid Email address");
$("#email_error").show();

email_error=true;

}
}
function check_password(){
var pass=$("#password").val().length;

if(pass <8){
$("#password_error").html("Atleast 8 charecter");
$("#password_error").show();
password_error=true;

}else{
$("#password_error").hide();

}
}

function check_confirm(){
var pass=$("#password").val();
var pass2=$("#confirm-password").val();

if(pass !== pass2){
$("#confirm_error").html("Password doesn't match");
$("#confirm_error").show();
confirm_error=true;

}else{
$("#confirm_error").hide();

}
}
$("#register-form").submit(function(){
username_error=false;
email_error=false;
password_error=false;
confirm_error=false;

check_username();
check_email();
check_password();
check_confirm();

if(username_error==false && email_error==false && password_error== false && confirm_error==false){
    return true;
}else{
    return false;
}
});
});
     
   
   
    var form2 = $('#register-form');
 form2.submit(function () {

 $.ajax({
 type: form2.attr('method'),
 url: form2.attr('action'),
 data: form2.serialize(),
 success: function (data) {
 var result=data;
 
     if(result.indexOf("Exist")> -1)  { 
        $('#content2').html("Email Already Exist");
        }
     else{
         $('#content2show').html("successfull");
        }
    }
 });
 return false;
 }); 
 
   
   
</script>
<!-- Modal2 -->
		<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content" style="border-radius:1px;border:20px double #034249">
					<div class="modal-header" style="margin-top:-6px">
						<button type="button" style="font-size:26px"  class="close btn btn-default hvr-hollow hvr-outline-out" data-dismiss="modal">×</button>
					</div>
						<div class="modal-body modal-body-sub_agile" style="margin-top:-20px">
						<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">Sign Up AS Supplier <span>Now</span></h3>
						<span id="content3show" style="color:green"></span> 
                                                <form id="register-form2" action="Addsup" method="post">
                                                     <div class="styled-input agile-styled-input-top">
								<input type="text" name="supsign" id="cname">
								<label>Company Name</label>
								<span></span>
							</div><i id="cname_error"></i>
							
							<div class="styled-input">
								<input type="email" name="supsign" id="cemail"> 
								<label>Email</label>
								<span></span>
							</div> <i id="cemail_error"></i>
							<div class="styled-input">
								<input type="password" name="supsign" id="cpass"> 
								<label>Password</label>
								<span></span>
							</div> <i id="cpass_error"></i>
							<div class="styled-input">
								<input type="password" name="pass2" id="cpass2"> 
								<label>Confirm Password</label>
								<span></span>
							</div><i id="cpass2_error"></i>
                                                <div class="form-group row" >							
							<div class="col-md-6">
							<div class="styled-input" style="border-bottom:1px solid #d8d8d8" >
								<input type="number" class="form-control" name="supsign"  style=" border:0;box-shadow: 0 0 0" id="mobile"> 
								<label>Mobile Number +91:</label>
								<span></span>
							</div><i id="mobile_error"></i> 
							</div >
							<div class="col-md-6">
							<div class="styled-input" style="border-bottom:1px solid #d8d8d8">
								<input type="number" name="supsign" class="form-control" style=" border:0;box-shadow: 0 0 0 " id="pincode"> 
								<label>Pickup Pincode</label>
								<span></span>
							</div><i id="pincode_error"></i>
							</div>
							</div>
							<div class="form-group row" style="margin-top:-0.8em">							
							<div class="col-md-6">

							<div class="styled-input" >
								<input type="text" name="supsign" id="pannum"> 
								<label>Company Pan Number</label>
								<span></span>
							</div><i id="pan_error"></i>
							</div >
							<div class="col-md-6">
							
							<div class="styled-input">
								<input type="text" name="supsign" id="gstnum"> 
								<label>GST Number</label>
								<span></span>
							</div><i id="gst_error"></i>
							</div>
							</div>
                                                        <span id="content3" style="color:red"></span>
							<input type="submit" value="Sign Up">
						</form>
						  <ul class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
															<li><a href="" class="facebook">
																  <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
															<li><a href="" class="twitter"> 
																  <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
															<li><a href="" class="instagram">
																  <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
															<li><a href="" class="pinterest">
																  <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
														</ul>
														<div class="clearfix"></div>
														<p><a href="#">By clicking register, I agree to your terms</a></p>

						</div>
						<div class="col-md-4 modal_body_right modal_body_right1">
							<img src="img/sup1.png" alt=" ">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<!-- //Modal content-->
			</div>
		</div>
<!-- //Modal2 -->
<script>
    
     $(function(){
$("#cname_error").hide();
$("#cemail_error").hide();
$("#cpass_error").hide();
$("#cpass2_error").hide();
$("#mobile_error").hide();
$("#pincode_error").hide();
$("#pan_error").hide();
$("#gst_error").hide();


var cname_error=false;
var cemail_error=false;
var cpass_error=false;
var cpass2_error=false;
var mobile_error=false;
var pincode_error=false;
var pan_error=false;
var gst_error=false;

$("#cname").focusout(function(){
check_name();
});


$("#cemail").focusout(function(){
check_email();
});

$("#cpass").focusout(function(){
check_password();
});

$("#cpass2").focusout(function(){
check_confirm();
});

$("#mobile").focusout(function(){
check_mobile();
});
$("#pincode").focusout(function(){
check_pin();
});
$("#pannum").focusout(function(){
check_pan();
});
$("#gstnum").focusout(function(){
check_gst();
});




function check_name(){

var uname=$("#cname").val().length;

if(uname <7 || uname > 35){
$("#cname_error").html("character between 7 to 35");
$("#cname_error").show();
cname_error=true;

}else{
$("#cname_error").hide();

}

}

function check_email(){
var pattern=new RegExp(/^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+[a-zA-Z]{2,4}$/);
if(pattern.test($("#cemail").val())){
$("#cemail_error").hide();
}else{
$("#cemail_error").html("invalid Email address");
$("#cemail_error").show();

cemail_error=true;

}
}
function check_password(){
var pass=$("#cpass").val().length;

if(pass <8){
$("#cpass_error").html("Atleast 8 charecter");
$("#cpass_error").show();
cpass_error=true;

}else{
$("#cpass_error").hide();

}
}

function check_confirm(){
var pass=$("#cpass").val();
var pass2=$("#cpass2").val();

if(pass !== pass2){
$("#cpass2_error").html("Password doesn't match");
$("#cpass2_error").show();
cpass2_error=true;

}else{
$("#cpass2_error").hide();

}
}

function check_mobile(){
    var mob=$("#mobile").val().length;

if(mob <10||mob>10){
$("#mobile_error").html("Should be 10 digit");
$("#mobile_error").show();
mobile_error=true;

}else{
$("#mobile_error").hide();

}
}

function check_pin(){
var mob=$("#pincode").val().length;

if(mob <6||mob>6){
$("#pincode_error").html("Should be 6 digit");
$("#pincode_error").show();
pincode_error=true;

}else{
$("#pincode_error").hide();

}
}

function check_pan(){
 var pattern= new RegExp(/^([a-zA-Z]){5}([0-9]){4}([a-zA-Z]){1}?$/);
        if(pattern.test($("#pannum").val())){
        $("#pan_error").hide();
        }else{
        $("#pan_error").html("invalid pan number");
        $("#pan_error").show();
        pan_error=true;
}
}


function check_gst(){
     var pattern=new RegExp(/^([0][1-9]|[1-2][0-9]|[3][0-5])([a-zA-Z]{5}[0-9]{4}[a-zA-Z]{1}[1-9a-zA-Z]{1}[zZ]{1}[0-9a-zA-Z]{1})+$/); 
     
if(pattern.test($("#gstnum").val())){
$("#gst_error").hide();

}else{
$("#gst_error").html("invalid GSTIN");
$("#gst_error").show();
mobile_error=true;

}
}


$("#register-form2").submit(function(){

cname_error=false;
cemail_error=false;
cpass_error=false;
cpass2_error=false;
mobile_error=false;
pincode_error=false;
pan_error=false;
gst_error=false;

check_name();
check_email();
check_password();
check_confirm();
check_mobile();
check_pin();
check_pan();
check_gst();


if(cname_error==false && cemail_error==false && cpass_error== false && cpass2_error==false && mobile_error==false && pincode_error==false && pan_error==false && gst_error==false){
    return true;
}else{
    return false;
}
});
});
 
 
 
   var form3 = $('#register-form2');
 form3.submit(function () {

 $.ajax({
 type: form3.attr('method'),
 url: form3.attr('action'),
 data: form3.serialize(),
 success: function (data) {
 var result=data;
 
     if(result.indexOf("Exist")> -1)  { 
        $('#content3').html("Email or Company name already exist");
        }
     else{
         $('#content3show').html("Successful");
        }
    }
 });
 return false;
 }); 
 
 

</script>
			
<!-- modal end-->
   
<div class="head"  >
  
<div class="mainmenu-area" style="background:#06d3c9">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button id="navi" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span style="color:#ffffff" class="glyphicon glyphicon-th-list"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
                    <li class="active ">
                        <a class="page-scroll" id="hove"  href="#page-top">HOME</a>
                    </li>
                    <li>
    			<a class="page-scroll" href="#portfolio" id="hove" >PORTFOLIO</a>				
                    </li>
                    <li class="dropdown mennu">
				<a class="page-scroll" href="#services" id="hove">SERVICES</a>				
                    </li>
                    	
                    <li>
                        <a class="page-scroll" href="#contact" id="hove" >CONTACT US</a>
                    </li>
		
		</ul>
	
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->
    </div>    
    
   
   <!-- main content area-->
        
    <div class="container-fluid" >
   
<div class="row">
 
<div id="myCarousel" class="carousel slide" data-ride="carousel" >
    <!-- Indicators -->
    <ol class="carousel-indicators" id="indi" >
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      
    </ol>
   
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
       <div class="carousel-caption">
          <h2>Summer <span>Collection</span></h2>
        <p>New Arrivals On Sale</p>
        </div>
<img src="img/7201.jpg" alt="" style="width:100%;">
      </div>

      <div class="item">
          <div class="carousel-caption">
              <h2>The Biggest <span>Sale</span></h2>
              <p>Special for today</p>
          </div>
        <img src="img/7202.jpg" alt="" style="width:100%;">
      </div>
    
      <div class="item">
       <div class="carousel-caption">
              <h2>The Biggest <span>Sale</span></h2>
              <p>Special for today</p>
          </div>
       
          <img src="img/7203.jpg" alt="" style="width:100%;">
      </div>
        
        
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span id="ic" class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span id="ic" class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  
 
   <br>
</div>
        <!--grid start -->
     <div style="margin-bottom: 5%" id="portfolio">  
         <div class="banner_bottom_agile_info">
	    <div class="container">
            <div class="banner_bottom_agile_info_inner_w3ls">
    	           <div class="col-md-6 wthree_banner_bottom_grid_three_left1 grids">
						<figure class="effect-roxy">
							<img src="img/bottom1.jpg" alt=" " class="img-responsive">
							<figcaption>
								<h3><span>F</span>all Ahead</h3>
								<p>New Arrivals</p>
							</figcaption>			
						</figure>
					</div>
					 <div class="col-md-6 wthree_banner_bottom_grid_three_left1 grids">
						<figure class="effect-roxy">
							<img src="img/bottom2.jpg" alt=" " class="img-responsive">
							<figcaption>
								<h3><span>F</span>all Ahead</h3>
								<p>New Arrivals</p>
							</figcaption>			
						</figure>
					</div>
					<div class="clearfix"></div>
		    </div> 
		 </div> 
    </div>
	<!---728x90--->
	<!-- schedule-bottom -->
	<div class="schedule-bottom">
		<div class="col-md-6 agileinfo_schedule_bottom_left">
			<img src="img/mid.jpg" alt=" " class="img-responsive">
		</div>
		<div class="col-md-6 agileits_schedule_bottom_right">
			<div class="w3ls_schedule_bottom_right_grid">
				<h3>Save up to <span>50%</span> in this week</h3>
				<p>Suspendisse varius turpis efficitur erat laoreet dapibus. 
					Mauris sollicitudin scelerisque commodo.Nunc dapibus mauris sed metus finibus posuere.</p>
				<div class="col-md-4 w3l_schedule_bottom_right_grid1">
					<i class="fa fa-user-o" aria-hidden="true"></i>
					<h4>Customers</h4>
					<h5 class="counter">653</h5>
				</div>
				<div class="col-md-4 w3l_schedule_bottom_right_grid1">
					<i class="fa fa-calendar-o" aria-hidden="true"></i>
					<h4>Events</h4>
					<h5 class="counter">823</h5>
				</div>
				<div class="col-md-4 w3l_schedule_bottom_right_grid1">
					<i class="fa fa-shield" aria-hidden="true"></i>
					<h4>Awards</h4>
					<h5 class="counter">45</h5>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>

       </div> 
        
 <!--grid end -->       
  
 
 
   
  <div id="services"  >
      <div style="background:#00def7;padding-top:1%;margin-top:-2%">
      <center><h2 class="hvr-push hvr-outline-in" style="padding:0% 1%;color:#ffffff;font-weight:bold; border:5px solid #f2f2f2">Services</h2></center>
   <div class="promo-area" style="padding:2% 4% 4% 2%">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6" >
                    <div style="width:100%" class="w3layouts_mail_grid_left1 hvr-radial-out">
					<div class="single-promo promo1">
                        <i class="fa fa-refresh"></i>
                        <p>30 Days return</p>
					</div>

                    </div>
                </div>
                <div class="col-md-3 col-sm-6" >
                    <div style="width:100%" class="w3layouts_mail_grid_left1 hvr-radial-out">
					
					<div class="single-promo promo2">
                        <i class="fa fa-truck"></i>
                        <p>Free shipping</p>
                    </div>
					</div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div style="width:100%" class="w3layouts_mail_grid_left1 hvr-radial-out">
					
					<div class="single-promo promo3">
                        <i class="fa fa-lock"></i>
                        <p>Secure payments</p>
                    </div>
					</div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div style="width:100%" class="w3layouts_mail_grid_left1 hvr-radial-out">
					
					<div class="single-promo promo4">
                        <i class="fa fa-gift"></i>
                        <p>New products</p>
                    </div>
					</div>
                </div>
            </div>
        </div>
    </div>
	
	
	
	</div>
  </div>
<hr>  
</div>

    
   


   <div class="container">
       </hr>
   <div id="owl-demo" class="owl-carousel owl-theme">
       <div class="item"><img src="brand1.png" alt="Owl Image"></div>
       <div class="item"><img src="brand2.png" alt="Owl Image"></div>
       <div class="item"><img src="brand3.png" alt="Owl Image"></div>
       <div class="item"><img src="brand4.png" alt="Owl Image"></div>
       <div class="item"><img src="brand5.png" alt="Owl Image"></div>
       <div class="item"><img src="brand6.png" alt="Owl Image"></div>
       <div class="item"><img src="brand1.png" alt="Owl Image"></div>
       <div class="item"><img src="brand2.png" alt="Owl Image"></div>
 
</div> </div>
 <hr>
 
 <div class="footer-top-top-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
				<div class="footer-about-us">
                        <h2>I<span>Sikki</span></h2>
                        
						<div class="footer-social1">
                            <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-titli">OPENING TIME</h2>
                                
                                    <div class="module-body outer-top-xs">
                                        <div class="">
                                            <table class="table borderless">
                                                <tbody>
                                                    <tr><td>Monday-Friday:</td><td class="pull-right">9.00 To 18.00</td></tr>
                                                    <tr><td>Saturday:</td><td class="pull-right">9.00 To 16.00</td></tr>
                                                    <tr><td>Sunday:</td><td class="pull-right">Team Recharging</td></tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <p style="font-weight:bold">Hot Line: 9582636339 </p>
                            </div>
                    </div>
                </div>
                
				<div class="col-md-3 col-sm-6" style="margin-left:5%">
                    <div class="footer-menu min">
                        <h2 class="footer-wid-titli">INFORMATION</h2>
                        <div class="module-body outer-top-xs">
                                        <ul class="toggle-footer" style="">
                                            <li class="media">
                                                <div class="pull-left">
                                                    <span  class="icon fa-stack fa-lg">
                                                        <i class="fa fa-circle fa-stack-2x"></i>
                                                        <i class="fa fa-map-marker fa-stack-1x fa-inverse"></i>
                                                    </span>
                                                </div>
                                                <div class="media-body">
                                                    <p>321 Las Vegas Kalka Ji New Delhi</p>
                                                </div>
                                            </li>
                                            <li class="media">
                                                <div class="pull-left">
                                                    <span class="icon fa-stack fa-lg">
                                                        <i class="fa fa-circle fa-stack-2x"></i>
                                                        <i class="fa fa-mobile fa-stack-1x fa-inverse"></i>
                                                    </span>
                                                </div>
                                                <div class="media-body">
                                                    <p>9582636339 </p>
                                                </div>
                                            </li>
                                            <li class="media">
                                                <div class="pull-left">
                                                    <span class="icon fa-stack fa-lg">
                                                        <i class="fa fa-circle fa-stack-2x"></i>
                                                        <i class="fa fa-envelope fa-stack-1x fa-inverse"></i>
                                                    </span>
                                                </div>
                                                <div class="media-body">

                                                    <span>Aimshah001@gmail.com</span>
                                                </div>
                                            </li>

                                        </ul>
                                    </div>


						 
                    </div>
                </div>
                
            </div>
        </div>
    </div>
 
 <div class="footer-top-area" id="contact">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
              <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">QUICK LINKS</h2>
                        <ul >
                            <li><a href="#">About US</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms & Condition</a></li>
                            </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">HELP & SUPPORT</h2>
                        <ul>
                            <li><a href="#">Refund & Returns</a></li>
                            <li><a href="#">Shipping Policy & FAQ</a></li>
                            <li><a href="#">Site Map</a></li>
                         </ul>                        
                    </div>
                </div>
                
				<div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">CONTACT US</h2>
                        <ul>
                            <li class="col-md-5">321 Las Vegas Kalka Ji New Delhi</li>
                            <li class="col-md-10">T :9582636339</li>
                            <li class="col-md-10">Company No :77141714</li>
                         </ul>                        
                    </div>
                </div>
                
            </div>
        </div>
    </div> <!-- End footer top area -->
    
	 <div class="footer-bottom-area" style="background:#1c1c1c ">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                        <p>&copy; 2015 eCommerce. All Rights Reserved. <a href="#" target="_blank">ISikki.com</a></p>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="footer-card-icon">
                        <i class="fa fa-cc-discover"></i>
                        <i class="fa fa-cc-mastercard"></i>
                        <i class="fa fa-cc-paypal"></i>
                        <i class="fa fa-cc-visa"></i>
						 <i class="fa fa-cc-amex"></i>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer bottom area -->
   
    <script>
        $(document).on('click', 'a', function(event){
    event.preventDefault();

    $('html, body').animate({
        scrollTop: $( $.attr(this, 'href') ).offset().top
    }, 500);
});
    </script>
</body>
</html>