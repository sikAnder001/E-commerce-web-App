
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%
 String jslist=null;
if(request.getSession(false) != null && session.getAttribute("uname") != null) 
{%>
   <%  jslist = (String)session.getAttribute("uname").toString(); %>
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
        <title>JSP Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <script src="angular/angular.min.js" type="text/javascript"></script>
   <script src="angular/ngStorage.min.js" type="text/javascript"></script>
   <script  src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-router/1.0.3/angular-ui-router.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-filter/0.5.16/angular-filter.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans|Open+Sans+Condensed:300|Oswald" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">  
    <link href="css/owl.carousel.css" rel="stylesheet" type="text/css"/>
    <link href="css/owl.theme.css" rel="stylesheet" type="text/css"/>
    <link href="css/owl.transitions.css" rel="stylesheet" type="text/css"/>
    <script src="js/owl.carousel.min.js" type="text/javascript"></script>
     <script src="custom/ang.js" type="text/javascript"></script>
    <script src="custom/jsjs.js" type="text/javascript"></script>
    <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
    <link rel="icon" href="data:;base64,iVBORw0KGgo=">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
    <style>



</style>
<script>
  
            var a=${list1};
abv();
    function abv(){alert(a);}
    
    apps.controller("inside",function($scope,$http,filterFilter){
                 duck();
      function duck(){
          
             var url="Showcart";
               $http.get(url).then(function(data){
                
                    $scope.cartdata=data.data;
                    $scope.cart=filterFilter($scope.cartdata,{c_email:a[1]});
                    
                $scope.countpro=($scope.cart.length);
                $scope.total=0;
                for(count=0;count<$scope.cart.length;count++){
                $scope.total += parseInt($scope.cart[count].c_price);
          
        }
       
    });
   }
    
     $scope.addcar=function(p_id){
           var adurl="Addcart?action=add&id="+p_id;
           console.log(adurl);
               $http.post(adurl).then(function(data){
                    duck(); 
         
         
    });
            };
        
       $scope.delcar=function(c_id){
           var deleteurl="Addcart?action=delete&id="+c_id;
           console.log(deleteurl);
               $http.post(deleteurl).then(function(data){
                   
                        duck();
                    $scope.$apply();
                   
           });
            };
        
});

</script>
</head>
<body >
  
<div id="test-slider"></div>
      

<!-- modal end-->
    <div ng-app='app' ng-controller="myctl2">
        <div ng-controller="inside">
<div class="head" style="margin-top:2%" >
    <div class="row" >
<div class="col-md-2" style="margin-left:8%">
<h2>I<span>Sikki</span></h2>
</div>
  <div class="col-md-6">
  <div style="margin-left:4%;margin-top:-2%; margin-right:1%">
    <p style="white-space: pre;color:#9ca0a8"><span class="glyphicon glyphicon-earphone" style="color:#06d3c9"></span> 9582636339       |        <span style="color:#06d3c9" class="glyphicon glyphicon-envelope"></span> aimshah001@gmail.com</p>
  
      <div class="input-group">
       
	   <li class="dropdown input-group-btn">
          <button  id="drop" class="dropdown-toggle input-lg shopping-item" data-toggle="dropdown" style="font-size:16px;border-radius:1px;background:#edeef2" aria-expanded="false">Category	 <span class="caret"></span></button>
          <ul class="dropdown-menu drp" role="menu">
                <li><a  class="dropdown-header" style="font-weight:bold;font-size:16px">All Categories</a></li>
            <li ng-repeat="y in cate"><a ui-sref="nav3({val:'{{y.cat_name}}'})" >{{y.cat_name}}</a></li>
            <li class="divider"></li>
          </ul>
        </li>
  
<input type="text" style="border-radius:1px" ng-model='search' class="form-control input-lg SearchBar" placeholder="Search for...">
      <span class="input-group-btn">
        <a class="SearchButton btn input-lg"  style="background:#04585b " >
            <span class=" glyphicon glyphicon-search SearchIcon" style="font-size:25px"></span>
        </a>
      </span>
    </div><!-- /input-group -->
  </div>
  </div><!-- /.col-lg-6 -->
  
<div class="col-md-3 col-sm-6 col-xs-12" >
<div class="input-group dropdown" id="drop2" style="margin:4% 12% 0 12%">
                    
                        <a class="shopping-item dropdown-toggle" id="menu1" type="button" data-toggle="dropdown" style="text-decoration: none !important;color:#5e5f60 " >CART - <span class="cart-amunt"> ₹ {{total}}.00</span> <span class="product-count" >{{countpro}}</span></a>
					
						<a class="dropdown-toggle cart-ico" id="menu1" type="button" data-toggle="dropdown" style="width:60px;background:#edeef2"><i class="glyphicon glyphicon-shopping-cart" style="margin-left:2px;color:#5e5f60;font-size:25px"></i></a> 
                    
					<ul class="dropdown-menu dropdown-menu-right drp2" role="menu" aria-labelledby="menu1">
                                    <!-- ngRepeat: cartItem in cartItems track by $index -->
                                    <li  ng-repeat="m in cart" >
                                            <div class="cart-item product-summary">
                                                <div class="row">
                                                     
                                                    <div class="col-xs-4" style="margin:4% 0% 0% 5%">
                                                        <div class="image">
                                                            <img class="cartImage" ng-src="data:image/png;base64,{{m.c_photo}}" width="100%" alt="" >
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-6" style="margin:0% -10% 0% -5%">
                                                        <p class="desc" style=" text-decoration: none;font-size:16px" href="#same" >{{ m.c_name | limitTo: 20 }}{{m.c_name.length > 20 ? '...' : ''}}</p>
                                                        <div style="color:#06d3c9"  > {{m.c_price|currency:"₹ ":0}}</div>
                                                    </div>
                                                    <div class="col-xs-2" style="margin-top:10%">
                                                        <a  ng-click="delcar(m.c_id)" ><i style="font-size: 16px;cursor: pointer" class="fa fa-trash tra"></i></a>
                                                    </div>
                                                </div>
                                            </div><!-- /.cart-item --><hr style="margin:4%">
                                        </li>
                                    <span class="text" style=" color:#007750;font-size:16px;font-weight:bold;margin-left:2%">Sub Total :</span><span style="color:#727171;font-size:16px;font-weight: bold" class="price"> ₹ {{total}}.00</span>
                                   
                                            <a ui-sref="All" class="btn btn-default btn-block" id="backy" bt2 style="background:#74797c;color:#ffffff;width:90%;margin:5%" >Checkout</a>
                                       

                            </ul>
							
					</div></div>
  
  </div><!-- /.row -->

  
  <div class="mainmenu-area" style="background:#06d3c9;margin-top:2%">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button id="navi" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span style="color:#ffffff" class="glyphicon glyphicon-th-list"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse .menu--shylock">
        <ul class="nav navbar-nav">
			<li class="active "><a id="hove"  href="#/">HOME</a></li>
<!--			<li class="dropdown mennu">
				<a href="#" id="hove" class="dropdown-toggle" data-toggle="dropdown"  aria-expanded="false">MOBILE PHONES</a>				
				 <ul class="dropdown-menu" role="menu">
         <li class="dropdown-header left" style="text-align:left">blas</li>
          <li><a href="#">sub category</a></li>
          <li><a href="#">sub category</a></li>
          <li><a href="#">sub category</a></li>
          <li><a href="#">sub category</a></li>
			<li class="divider"></li>
          
			<li class="dropdown-header" style="">baldy</li>
		  <li><a href="#">sub category</a></li>
          <li><a href="#">sub category</a></li>
          <li><a href="#">sub category</a></li>
      </ul>		
			</li>
            <li class="dropdown mennu">
    			<a href="#" id="hove" class="dropdown-toggle" data-toggle="dropdown">CARS</a>				
				 <ul class="dropdown-menu" role="menu">
         <li class="dropdown-header left" style="text-align:left">blas</li>
          <li><a href="#">one</a></li>
          <li><a href="#">two</a></li>
          <li><a href="#">three</a></li>
          <li><a href="#">four</a></li>
			<li class="divider"></li>
          
			<li class="dropdown-header" style="">baldy</li>
		  <li><a href="#">blah</a></li>
          <li><a href="#">blah blah</a></li>
          <li><a href="#">blah blah blah</a></li>
      </ul>
</li>
			
            <li class="dropdown mennu"><a href="#" id="hove" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">OTHER PRODUCT</a>
			<ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
          </ul>
		</li>-->
		
		</ul>
	<ul class="nav navbar-nav navbar-right" >
        <li><a href="Logout?action=user" id="hove" ><span class="glyphicon glyphicon-log-out"></span> Log-Out</a></li>
        </ul>
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->
    </div>    
    
   
   <!-- main content area-->
        
    <div class="container-fluid"  >
        <div ui-view>
            
        </div> 
</div>
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
 </div>
   
</body>
</html>