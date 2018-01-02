<%-- 
    Document   : Suplier
    Created on : 21 Aug, 2017, 2:17:06 AM
    Author     : Sony
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

              
                <%
 String jslist=null;
if(request.getSession(false) != null && session.getAttribute("sname") != null) 
{%>
   <%  jslist = (String)session.getAttribute("sname").toString(); %>
<% }else{%>
   <%  jslist = null; 
   response.sendRedirect("sessionend.jsp"); 
   %>
 <%}%>
                
 <c:set var="list1" value="<%=jslist%>"></c:set>
        

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>suplier page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link href="css/owl.carousel.css" rel="stylesheet" type="text/css"/>
    <link href="css/owl.theme.css" rel="stylesheet" type="text/css"/>
    <link href="css/owl.transitions.css" rel="stylesheet" type="text/css"/>
    <script src="js/owl.carousel.min.js" type="text/javascript"></script>
    <script src="custom/jsjs.js" type="text/javascript"></script>
          <script src="angular/angular.min.js" type="text/javascript"></script>
    
    
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

          </style>
    </head>
    
    <body ng-app="mymod" ng-controller="myctl">
        <h1 style="display:none">${list1}</h1>
        
        <div class="head">
    
  
  <div class="mainmenu-area" style="background:#06d3c9">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button id="navi" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span style="color:#ffffff" class="glyphicon glyphicon-th-list"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse .menu--shylock">
        <ul class="nav navbar-nav">
			<li><a href="#" id="hove" style="color:#ffffff;font-size:24px" data-toggle="modal" data-target="#myModal">Add Product</a></li>
                      
</ul><ul class="nav navbar-nav navbar-right" >
        <li><a href="Logout?action=suplier" id="hove" ><span class="glyphicon glyphicon-log-out"></span> Log-Out</a></li>
        </ul>
	
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->
    </div>    
    

   
   <!-- main content area-->
      
   <div class="container-fluid"  >
    
  
        <div  style="width:40%;margin-left:50%">
  
  <div style="margin-left:4%;margin-top:2%; margin-right:1%">
    <div class="input-group">
<input type="text" style="border-radius:1px" ng-model='search' class="form-control input-lg SearchBar" placeholder="Search for...">
      <span class="input-group-btn">
        <a class="SearchButton btn input-lg"  style="background:#04585b " >
            <span class=" glyphicon glyphicon-search SearchIcon" style="font-size:25px"></span>
        </a>
      </span>
    </div><!-- /input-group -->
  </div>
  
  </div><!-- /.row -->
  <hr>
  
        <div id="second" style="margin-top:2%"  class="container thumbnail"  > 
       
            <h2  class="col-md-12">products</h2>
       <table style="background:#ffffff" class="table table-bordered table-hover" >
           <thead> <tr>
                <th class="col-md-2">P-Image</th>
                <th>P-Brand</th>
                <th>P-ID</th>
                <th>P-Name</th>
                <th>P-Price</th>
                <th>P-Date</th>
                <th>P-Supplier</th>
                <th>P-Description</th>
                <th>CatID</th>
                <th>p-status</th>
                <th colspan="2" class="col-md-1">Action</th>
               </tr></thead>
            <tr ng-repeat="x in person|filter:search"><form>
                <td><img ng-src="data:image/png;base64,{{x.p_photo}}" width="20%"></td>
                <td>
                 <div ng-hide="edit[x.p_id]">{{x.p_imagename}}</div>
                 <div ng-show="edit[x.p_id]"><input class="form-control" name="imgname" type="text"  ng-model="x.p_imagename" /></div>
                </td>
                <td>{{x.p_id}}</td>
                <td>
                 <div ng-hide="edit[x.p_id]">{{x.p_name}}</div>
                 <div ng-show="edit[x.p_id]"><input class="form-control" name="p_name" type="text" ng-model="x.p_name" /></div>
                </td>
                <td>
                <div ng-hide="edit[x.p_id]">{{x.p_price|currency:'₹'}}</div>
                 <div ng-show="edit[x.p_id]"><input class="form-control" name="p_price" type="text" ng-model="x.p_price" /></div>
                </td>
                <td>{{x.p_date}}</td>
                <td>{{x.p_supplier}}</td>
                <td>
                <div ng-hide="edit[x.p_id]">{{x.p_description}}</div>
                <div ng-show="edit[x.p_id]"><textarea class="form-control" name="p_desc" ng-model="x.p_description"></textarea></div>
                </td>
                <td>{{x.catid}}</td>
                <td>{{x.p_status}}</td>
               <td><a class="btn btn-danger btn-sm" href="deletep?action=delete&p_id={{x.p_id}}&suplier=true"><span class="glyphicon glyphicon-trash">Delete</span></a></td>
               <td>
                   <a class="btn btn-success btn-sm" ng-hide="edit[x.p_id]" ng-click="modify(x)"><span class="glyphicon glyphicon-pencil"> Modify</span></a>
                    <a class="btn btn-info btn-sm" ng-show="edit[x.p_id]" ng-click="update(x)">Update</a>
		 </td>
           
            </form></tr> 
        </table>
       
        </div>
        </div>
  
                <div  class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Enter Product Details</h4>
        </div>
        <div class="modal-body">
             <form action="AddProduct" mehtod="post">
        <div class="form-inline">
            <input class="btn btn-default col-md-5" type="file" name="pimage" accept="image/gif,image/png,image/jpg" value="upload image" >
        <input class="form-control" type="text" name="product" placeholder="Enter Brand name" id="amg">
        </div>
        <br><br><br><input type="text" class="form-control" placeholder="Enter product Name" name="product">
        <br><input type="text" class="form-control" placeholder="Enter product Price in Rupees" name="product">
        
        <br><label>Select Category Name</label><select class="form-control" name="product">
            <option ng-repeat="y in cate">{{y.cat_name}}</option>
        </select>
      
        <br><textarea rows="3"  class="form-control" placeholder="Enter product description" name="product"></textarea>
        <br><input type="submit" class="btn btn-block btn-lg btn-info" name value="submit">
        </form>  
        
        </div>
        
      </div>
      
    </div>
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
   
 
 <script>
     
     var a=${list1};
     
      
   var app=angular.module("mymod",[]);
            app.controller("myctl",function($scope,$http,filterFilter){
              
                var url="Showphoto";
               $http.get(url).then(function(data){
                   $scope.product=data.data;
                   $scope.person=filterFilter($scope.product,{p_supplier:a[0]});
                    console.log($scope.person);
    
    
$scope.edit = {};

for (var i = 0, length = $scope.person.length; i < length; i++) {
  $scope.edit[$scope.person[i].p_id] = false;
}

$scope.modify = function(x){
    $scope.edit[x.p_id] = true;
};


$scope.update = function(x){
   
    var updateurl="deletep?action=update&suplier=true&p_id="+x.p_id+"&imgname="+x.p_imagename+"&pname="+x.p_name+"&pprice="+x.p_price+"&pdesc="+x.p_description;
           console.log(updateurl);
               $http.post(updateurl).then(function(data){
         $scope.edit[x.p_id] = false;    
                 
    });
};
    });
               
               
               
               
               var url="showcate";
               $http.get(url).then(function(data){
                   $scope.cate=data.data;
               });
                
            });
       
       
 </script>    
        
    </body>
</html>




