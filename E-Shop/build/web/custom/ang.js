/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



var apps=angular
                .module("app",['ui.router'
        ]).config(['$urlRouterProvider','$stateProvider',function($urlRouterProvider,$stateProvider){
                $urlRouterProvider.otherwise('/');
                $stateProvider
                        .state('home',{
                    url:'/',
                    templateUrl:'templates/mterial.html'
                })
                .state('All',{
                    url:'/All',
                    templateUrl:'templates/nav2.html'
               
            }     
                )
               .state('nav3',{
                 url:'/nav3?val',
                 templateUrl:'templates/nav3.html',
                    controller:['$scope','$http','$stateParams','filterFilter',function($scope,$http,$stateParams,filterFliter){
                var url="Showphoto";
               $http.get(url).then(function(data){
                   $scope.pro=data.data;
                   $scope.prod=filterFliter($scope.pro,{p_status:"Approved"});
                      $scope.product=filterFliter($scope.prod,{catid:$stateParams.val});
              
               });
                }]
          
                }).state('checkout',{
                    url:'/checkout',
                    templateUrl:'templates/nav4.html'
               
            }     
                );       
        }]);
           
           
           
             apps.controller("myctl2",function($scope,$http){
               var url="showcate";
               $http.get(url).then(function(data){
                   $scope.cate=data.data;
                   
               });
             
                  });
   
      
   
   
   apps.directive('tooltip', function(){
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
 
        apps.directive('pt', function(){
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
 
 
        apps.directive('bt1', function(){
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
   apps.directive('bt2', function(){
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
 
 
 apps.directive('img', function(){
    return {
        restrict: 'A',
        link: function(scope, element, attrs){
            $(element).hover(function(){
                // on mouseenter
                $(element).css({'transform': 'scale('+ $(element).attr('data-scale') +')'});

            }, function(){
                // on mouseleave
                $(element).animate({width: "100%"}, 'slow');

                
            });
        }
    };
});



