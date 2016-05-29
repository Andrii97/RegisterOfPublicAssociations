<%@ page import="com.mycompany.model.entity.Kind" %>
<%@ page import="java.util.List" %>
<%-- 
    Document   : createpage
    Created on : 26.05.2016, 16:21:13
    Author     : redin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href='/webjars/bootstrap/3.1.0/css/bootstrap.min.css'>
        <link rel="stylesheet" href="/resources/css/navbar.css">
        
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

        <title>Редагування ГО</title>
    </head>
    <body style="text-align: center;">
        
        <%@include file="header.jsp"%>
          
        
        <div class="container">
        <div class="col-md-12">
            <div  class="page-header" style="text-align: center">
                <h1 style="text-shadow: 1px 1px 1px #000;"> Введіть ім'я організації</h1>
            </div>
        </div>
        <br>
        <br>
        <br>
        </div>
        
        
            <form method="post" action="findname">
                <% String errorMessage = (String)request.getAttribute("createResult"); %>
                <%
                    if(errorMessage != null)
                {%>
                <div class="row">                    
                <div class="alert alert-warning alert-dismissible" role="alert" style="height:50%;">
                    <h4 class="alert-link">
                        <%=errorMessage%>
                    </h4>
                </div>
                </div>
                <% } %>
                
                <div class="container">           
                <div class="form-group" class="row" style="width: 100%">  
                    <div class="col-md-6" style="text-align: center">
                        <input class="form-control" name="editname" type="text" style="width: 100%;"/>
                    </div>
                <div class="row">         
                    <button class="btn btn-primary" type="submit" value="disable" style="position:relative;float:center;">Знайти</button>                 
                </div>                
                </div>
                
            </form>
        </div>
    </body>
</html>
