<%-- 
    Document   : AddPruduct
    Created on : 18 Jun, 2017, 11:33:59 PM
    Author     : Sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%
 String jslist=null;
if(request.getSession(false) != null && session.getAttribute("aname") != null) 
{%>
   <%  jslist = (String)session.getAttribute("aname").toString(); %>
<% }else{%>
   <%  jslist = null; 
   response.sendRedirect("sessionend.jsp"); 
   %>
 <%}%>

<c:set var="list1" value="<%=jslist%>"></c:set>
   
              
<!DOCTYPE html>

<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>product Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="angular/angular.min.js" type="text/javascript"></script>
        <script src="jquery/jquery-3.1.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <link href="css/owl.carousel.css" rel="stylesheet" type="text/css"/>
        <link href="css/owl.theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/owl.transitions.css" rel="stylesheet" type="text/css"/>
        <script src="js/owl.carousel.min.js" type="text/javascript"></script>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <script src="custom/jsjs.js" type="text/javascript"></script>
        <style>
               ::-webkit-scrollbar {
    width: 10px;
}
 ::-webkit-scrollbar-track
{
	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.9);
	background-color: #F5F5F5;
}
	::-webkit-scrollbar-thumb
	{
	background:#0dc4c4;	
	border: 2px;
}
 ::-webkit-scrollbar-track:hover{
 background-color:#ffffff;
 -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0);
  }

::-webkit-scrollbar-thumb:hover{
	background: #04585b;	
border-radius: 10px;
 }

	

body{
background:#ffffff;
    overflow-x:hidden;
}
table{
border:none;
}


.dropdown-menu ul:first-of-type {
    padding-right:20px;
	}
​
#mai{
border-radius:1px;
}

#hove{

font-size:20px;
color:#ffffff;
font-family:'Roboto';
font-style: normal;
font-weight: 500;
padding:24px 24px 24px 24px;
}

#hove:hover{
	color:#ffffff;
    background-color: #04585b;
	padding:24px 24px 24px 24px;
}
.nav .open > a, .nav .open > a:focus, .nav .open > a:hover {
   background-color: #04585b;
}

#navi:hover{
    background-color: #04585b;
}

.active{
     background-color: #04585b;

}
.SearchIcon
{
margin-top:3px;
    color:#fff;
    
   }
.SearchButton
{
    border-radius:1px;
    width:65px;
   
    padding-top:12%;
    
}
.cart-ico{
    border: 1px solid #ddd;
    float: left;
    font-size: 18px;
   font-family:Roboto;
    padding:12px;
    position: relative;
    
}
.drp{
	border-top:1px solid grey !important;

}

.drp2{
border-radius:1px;
margin-top:5% !important;
border:1px solid #cccccc;
}


.dropdown-menu{
    width: 200px ;
	margin-top:1% !important;
	border:none;
	border-top:1px solid #0dc4c4;
}


.footer-top-area {
background: none repeat scroll 0 0 #2d2c2c;
color: #999;
padding: 30px 0 110px;
}

.footer-top-top-area {
background: none repeat scroll 0 0 #ffffff;
color: #97a1a3;
padding: 30px 0 110px;
}


.footer-about-us span {
  color:#06d3c9;
}

.footer-wid-title {
  font-family: raleway;
  font-size: 22px;
  font-weight: 100;
  color: #d4dadb;
}

.footer-wid-titli {
  font-family: raleway;
  font-size: 22px;
  font-weight: 100;
  color: #868d8e;
}



.footer-menu ul {
    list-style: outside none none;
    margin: 0;
    padding: 0;
}
.footer-menu ul li {
    border-bottom: 1px dashed #9a9e9e;
    padding: 5px 0;
}

.footer-menu.min ul li {
    border-bottom: 1px solid #dee0e2;
    padding: 5px 0;
}

.footer-menu a {
    display: block;
	text-decoration: none;
    padding: 5px 0;
	color: #999;
}


.footer-social1 a {
  background: none repeat scroll 0 0 #fff;
  color: #5e5d5d;
  display: inline-block;
  font-size: 20px;
  height: 40px;
  margin-bottom: 10px;
  margin-right: 10px;
  padding-top: 5px;
  text-align: center;
  width: 40px;
  border: 1px solid #5e5d5d;
}

.footer-social1 a:hover {
color:#ffffff;
background-color:#06d3c9;
border-color: #06d3c9 ;
}

.footer-social1 {
margin-top: 20px;
}

a {
color: #5a88ca;
}

a:hover {
color: #06d3c9;
}
a:focus{
color: #17a78b;
background:#04585b;
}

.footer-bottom-area {
  background:#000;
  color: #fff;
  padding-bottom: 20px;
}

.footer-card-icon {
  font-size: 40px;
  text-align: right;
  margin-top:10px;
}

.copyright > p {
  margin: 20px 0 0;
}

.fa-stack{
color:#06d3c9;
}


.single-promo{
border:5px solid #f2f2f2;
padding: 20px 20px 20px 20px;
text-align: center;
}

.single-promo i{
font-size: 24px;
    font-weight: 200;
}

#ic{
color:#06d3c9;
font-size:50px;
}
#ic:hover{
color:#04585b;
}

            #amg{float: left;}
            #second{
               
              background:#04585b;
            padding:0 20px 10px 20px;
                
            }
            
            #hove{

font-size:20px;
color:#ffffff;
font-style: normal;
font-weight: 500;
padding:24px 24px 24px 24px;
}

#hove:hover{
	color:#ffffff;
    background-color: #04585b;
	padding:24px 24px 24px 24px;
}
.nav .open > a, .nav .open > a:focus, .nav .open > a:hover {
   background-color: #04585b;
}

#navi{
 margin-left:6%;   
}
#navi2{
    margin-right: 6%;
}

.active{
     background-color: #04585b;

}
.SearchIcon
{
margin-top:3px;
    color:#fff;
    
   }
.SearchButton
{
    border-radius:1px;
    width:65px;
   
    padding-top:12%;
    
}

            
        </style>
  
    </head>
    <body   ng-app="mymod" >
        
 <nav class="navbar navbar-fixed-top" style="background:#06d3c9">
   <div class="container-fluid">
    <div class="navbar-header" >
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
             <span style="color:#ffffff" class="glyphicon glyphicon-th-list"></span>                        
        </button>
        
   </div>
    <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav" id="navi">
       <li> <a  id="hove"  class="active" style="font-size:30px;font-weight: bold" href="#">Admin</a></li>
        <li ><a href="#" id="hove"  data-toggle="modal" data-target="#myModal2"><span></span>Add Category</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right" id="navi2">
        <li><a href="Logout?action=admin" id="hove" ><span class="glyphicon glyphicon-log-out"></span> Log-Out</a></li>
        </ul>
    </div>
  </div>
</nav>
  
          

<div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Enter Category Details</h4>
        </div>
        <div class="modal-body">
          <form id="categor" action="AddCates" mehtod="post">
                <p id="done" class="btn btn-block" style="background:#254747;color:#ffffff"></p>
                
        <br><input type="text" class="form-control" placeholder="Enter Category Name" name="catname">
        <span id="exist" style="color:#ff0000"></span>
        <br><input type="submit" class="btn btn-block btn-lg btn-primary" value="submit">
        </form> 
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  
</div>
  
        
        <div ng-controller="myctl">
        <div  style="width:40%;margin-left:50%;margin-top:8%">
  
  <div style="margin-left:4%; margin-right:1%">
    <div class="input-group">
<input type="text" style="border-radius:1px" ng-model='search' class="form-control input-lg SearchBar" placeholder="Search for...">
      <span class="input-group-btn">
        <a class="SearchButton btn input-lg"  style="background:#04585b " >
            <span class=" glyphicon glyphicon-search SearchIcon" style="font-size:25px"></span>
        </a>
      </span>
    </div><!-- /input-group -->
  </div>
  </div>
        <div id="second" style="margin-top:2%" class="container-fluid thumbnail"  > 
 
            <h2  style="color:#ffffff" class="col-md-12">products</h2>
       <table style="background:#ffffff" class="table table-bordered table-hover " >
           <thead> <tr>
                <th class="col-md-2">P-Image</th>
                <th>P-Image-Name</th>
                <th>P-ID</th>
                <th>P-Name</th>
                <th>P-Price</th>
                <th>P-Date</th>
                <th>P-Supplier</th>
                <th>P-Description</th>
                <th>CatID</th>
                <th>p-status</th>
                <th colspan="3" class="col-md-2">Action</th>
               </tr></thead>
            <tr ng-repeat="x in person| filter:search">
                <td><img src="data:image/png;base64,{{x.p_photo}}" style="height:130px;width:100px"></td>
                <td>{{x.p_imagename}}</td>
                <td>{{x.p_id}}</td>
                <td>{{x.p_name}}</td>
                <td>{{x.p_price|currency:'$'}}</td>
                <td>{{x.p_date}}</td>
                <td>{{x.p_supplier}}</td>
                <td>{{x.p_description}}</td>
                <td>{{x.catid}}</td>
                <td>{{x.p_status}}</td>
               <td><a class="btn btn-danger btn-sm" ng-click="deletep(x.p_id)"><span class="glyphicon glyphicon-trash"></span></a></td>
            <td><a class="btn btn-success btn-sm" ng-click="approve(x.p_id)"><span class="glyphicon glyphicon-pencil">Approve</span></a></td>
            <td><a class="btn btn-success btn-sm" ng-click="reject(x.p_id)"><span class="glyphicon glyphicon-pencil">Reject</span></a></td>
           </tr>
        </table>
       </div>
</div>
        
        <hr>
        <div id="second" class="container-fluid thumbnail" ng-controller="myctl2">
  
            <h2 style="color:#ffffff"  class="col-md-12">Categories</h2>
       
            <table style="background:#ffffff"  class="table table-bordered table-hover">
           <thead> <tr>
                <th>Cate-ID</th>
                <th>Cate-Name</th>
                <th>Cate-Date</th>
                <th  class="col-md-1">Action</th>
               </tr></thead>
            <tr ng-repeat="x in cate">
                <td>{{x.cat_id}}</td>
                <td>{{x.cat_name}}</td>
                <td>{{x.cat_date}}</td>
                <td><a class="btn btn-danger btn-sm" ng-click="delcate(x.cat_id)"><span class="glyphicon glyphicon-trash"></span></a></td>
            </tr>
            </table>
        
        </div>
        
        <hr>  
   <div id="owl-demo" class="owl-carousel owl-theme">
       <div class="item"><img src="brand1.png" alt="Owl Image"></div>
       <div class="item"><img src="brand2.png" alt="Owl Image"></div>
       <div class="item"><img src="brand3.png" alt="Owl Image"></div>
       <div class="item"><img src="brand4.png" alt="Owl Image"></div>
       <div class="item"><img src="brand5.png" alt="Owl Image"></div>
       <div class="item"><img src="brand6.png" alt="Owl Image"></div>
       <div class="item"><img src="brand1.png" alt="Owl Image"></div>
       <div class="item"><img src="brand2.png" alt="Owl Image"></div>
 
</div> 
 
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
 
 <div class="footer-top-area">
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
  
        
        
<!--        <script>
   var app=angular.module("mymod",[]);
    app.controller('myctl', function($scope){
       $scope.res=${list}; 
    });     
    
     </script> -->

<script>
    var hit;
         var app=angular.module("mymod",[]);
          
    app.controller("myctl",function($scope,$http){
     vir();
        function vir(){
               var url="Showphoto";
               $http.get(url).then(function(data){
                   $scope.person=data.data;
               });
           }
$scope.deletep = function(x){
   console.log(x);
    var deleteurl="deletep?action=delete&suplier=false&p_id="+x;
           console.log(deleteurl);  
               $http.post(deleteurl).then(function(data){
                vir();
    });
};   

$scope.approve = function(x){
   
    var approveurl="deletep?action=approved&suplier=false&p_id="+x;
           console.log(approveurl);
               $http.post(approveurl).then(function(data){
                    vir();
    });
};   

$scope.reject = function(x){
   
    var rejecturl="deletep?action=rejected&suplier=false&p_id="+x;
           console.log(rejecturl);
               $http.post(rejecturl).then(function(data){
             vir();
    });
};   
            });
   
    
    app.controller("myctl2",function($scope,$http){
        $scope.vir2=function(){      
        var url="showcate";
               $http.get(url).then(function(data){
                   $scope.cate=data.data;
               });
        };     
        $scope.vir2();
                
       
        hit=$scope;        
$scope.delcate = function(x){
   
    var deleteurl="deletec?action=delete&p_id="+x;
           console.log(deleteurl);
               $http.post(deleteurl).then(function(data){
              $scope.vir2();
    });
};   
                
                
                
            });
            
            
            
    </script>
   


    <script>
    $(document).ready(function(){
        $("#done").hide();
        
    });

    var form = $('#categor');
 form.submit(function () {

 $.ajax({
 type: form.attr('method'),
 url: form.attr('action'),
 data: form.serialize(),
 success: function (data) {
 var result=data; 

   
if(result.indexOf("exist")> -1){
 $("#exist").html("Category already Exist");   
}
if(result.indexOf("done")> -1){
        $("#done").show();
            $("#done").html("Data inserted");
    hit.vir2();
}
 }
 });
 return false;
 });
 
    </script>    
 
    
    <!--    <script>
// var form = $('#shu');
// form.submit(function () {
//
// $.ajax({
// type: form.attr('method'),
// url: form.attr('action'),
// data: form.serialize(),
// success: function (data) {
// var result=data; 
//
//$('#bk').html(result);
// 
//     var tr;
//        for (var i = 0; i < result.length; i++) {
//            tr = $('<tr/>');
//            
//            tr.append("<td>" + result[i].p_photo + "</td>");
//            tr.append("<td>" + result[i].p_imagename + "</td>");
//            tr.append("<td>" + result[i].p_price + "</td>");
//            tr.append("<td>" + result[i].p_date + "</td>");
//            tr.append("<td>" + result[i].p_supplier + "</td>");
//            tr.append("<td>" + result[i].p_description + "</td>");
//            tr.append("<td>" + result[i].p_catid + "</td>");
//           
//            $('table').append(tr);
//    }     
// }
// });
// return false;
// }); 


       </script>-->
        </body>
</html>
