<%-- 
    Document   : homepage
    Created on : 24 Jul, 2017, 11:09:59 AM
    Author     : Sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>home page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Open+Sans|Open+Sans+Condensed:300|Oswald" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>

  <style>
.grid figure {
	position: relative;
	overflow: hidden;
	cursor: pointer;
	background:#2d2e30;
}

figure.effect-julia img {
       -webkit-transition: opacity 1s, -webkit-transform 1s;
	transition: opacity 1s, transform 1s;
	
}
figure.effect-julia:hover img {
	opacity: 0.4;
	-webkit-transform: scale3d(1.1,1.1,1);

}

.grid figure figcaption {
    margin-top:70%;
        -webkit-backface-visibility: hidden;
	backface-visibility: hidden;
}

.grid figure figcaption{
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

figure.effect-julia .btn-group {
	display: inline-block;
	-webkit-transition: opacity 0.35s, -webkit-transform 0.35s;
	transform: translate3d(0,300px,0);
}

figure.effect-julia:hover .btn-group {
        -webkit-transform: translate3d(0,0,0);
        transform: translate3d(0,0,0);
}

</style>
  </head>
<body>
<div class="container">
  <div class="row" ng-controller="oneCtrl"ng-app="app">
  
      <div  class="col-xs-12 col-md-3 col-sm-6" ng-init="count=true" ng-repeat="i in product|limitTo:30" >
      <div >
        <a  href="#" class="btn" target="_self">
          <div class="grid">
	<figure class="effect-julia">
            <img img src="data:image/png;base64,{{i.p_photo}}" alt="Nature" height="320" width="220">
          <figcaption>
            <div  class="btn-group">
                <button bt1 type="button" class="btn " style="width:50%;background-color:#c4c4c4;color:#ffffff">Buy Now</button>
                <button bt2 type="button" class="btn "  style="width:50%;background-color:#74797c;color:#ffffff">Add to cart</button>
            </div>
          </figcaption>
        </figure>
              </div>
          <div class="caption">
          <p pt style="margin-top:10px;width:5%;font-weight:bold; color:#60656d;font-size:20px; font-family: 'Open Sans Condensed', sans-serif;" tooltip data-toggle="tooltip"  data-placement="top" title="{{i.p_description}}">{{ i.p_name | limitTo: 30 }}{{i.p_name.length > 30 ? '...' : ''}}</p>
          </div> 
		  </a>
          <div  style="color:#07d1ff;font-weight:600;margin-left:5% ;font-size:18px;text-align:left;font-family: 'Roboto', sans-serif">{{i.p_price|currency:"₹ ":0}}</div>
	</div>
    </div>
</div>
</div>
    <br><br>
<script>
        var app=angular.module("app",[]);
        app.controller("oneCtrl",function($scope,$http){
               var url="Showphoto";
               $http.get(url).then(function(data){
                   $scope.product=data.data;
               });
                
            });
            
        app.directive('tooltip', function(){
        return {
        restrict: 'A',
        link: function(scope, element, attrs){
            $(element).hover(function(){
                // on mouseenter
                $(element).tooltip('show');
            }, function(){
                // on mouseleave
                $(element).tooltip('hide');
            });
        }
    };
});
 
        app.directive('pt', function(){
        return {
        restrict: 'A',
        link: function(scope, element, attrs){
            $(element).hover(function(){
                // on mouseenter
                $(element).css('color',"#07d1ff");
            }, function(){
                // on mouseleave
                $(element).css('color',"#60656d");
            });
        }
    };
});
 
 
        app.directive('bt1', function(){
        return {
        restrict: 'A',
        link: function(scope, element, attrs){
            $(element).hover(function(){
                // on mouseenter
                $(element).css('background',"#18ccb4");
            }, function(){
                // on mouseleave
                $(element).css('background',"#c4c4c4");
            });
        }
    };
});
   app.directive('bt2', function(){
    return {
        restrict: 'A',
        link: function(scope, element, attrs){
            $(element).hover(function(){
                // on mouseenter
                $(element).css('background',"#014c42");
            }, function(){
                // on mouseleave
                $(element).css('background',"#74797c");
            });
        }
    };
});
 
 
 app.directive('img', function(){
    return {
        restrict: 'A',
        link: function(scope, element, attrs){
            $(element).hover(function(){
                // on mouseenter
                $(element).css({'transform': 'scale('+ $(element).attr('data-scale') +')'});

            }, function(){
                // on mouseleave
                $(element).animate({width: "220px"}, 'slow');

                
            });
        }
    };
});
</script>
           
</body>
</html>


