<%-- 
    Document   : View.jsp
    Created on : 12 Jun, 2017, 3:12:12 PM
    Author     : Sony
--%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%   String mydata=(String)request.getAttribute("data").toString(); %>

<!DOCTYPE html>

<c:set value="<%=mydata%>" var="list"></c:set>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Page</title>
        <script src="angular/angular.min.js" type="text/javascript"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="jquery/jquery-3.1.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <style>
            .container{
            margin-top:5%;
            padding:10px 10px 10px 10px; 
            }
        </style>
    </head>
    <body class="navbar-inverse" ng-app="myapp" ng-controller="myctl">
        
        <div class="container thumbnail">
            <div class="input-group col-md-4">
            <input type="text" class="form-control" ng-model="search" placeholder="Search">
            <div class="input-group-btn"><button class="btn btn-info"><span class="glyphicon glyphicon-search"></span></button></div></div><br>
        <table class="table table-hover table-condensed table-bordered ">
            <thead><tr class="active"><th >NAME</th><th>EMAIL</th><th>PASSWORD</th><th colspan="2" class="col-md-1">Action</th></tr></thead>
            <tr class="default" ng-repeat="x in res|filter:search">
                <td>{{x.usernme}}</td>
                <td>{{x.email}}</td>
                <td>{{x.password}}</td>
                <td><a class="btn btn-danger btn-sm" href="delup?action=delete&email={{x.email}}"><span class="glyphicon glyphicon-trash">Delete</span></a></td>
            <td><a class="btn btn-success btn-sm" href="delup?action=update&email={{x.email}}"><span class="glyphicon glyphicon-pencil">Update</span></a></td>
            </tr>
        </table>
    </div>
        <h3>{{res}}</h3>
    <script>
        var app=angular.module("myapp",[]);
    app.controller('myctl', function($scope){
       $scope.res=${list}; 
    });
    </script>
    </body>
</html>
