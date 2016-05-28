<%-- 
    Document   : adminpage
    Created on : 27.05.2016, 1:02:05
    Author     : BOSS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    </head>
    <body>
        
        
        <c:url value="/mainpage" var="showMainpage"/>     
        
        <nav class="navbar navbar-default">
             <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li class="active"><a href="${showMainpage}">Назад у меню<span class="sr-only">(current)</span></a></li>        
              </ul>
            </div>
          </div>
        </nav>
              
                        
        <div class="row">
           <div class="col-md-3"></div>
           <div class="col-md-6" style="text-align: center">
               <h1>Пошук громадської організації</h1>
               <input type="text" name="search" id="search" class="form-control" placeholder="Введіть назву..." required autofocus>
               </div>
           <div class="col-md-3"></div>                
       </div>
        <div class="container">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <form class="form-horizontal" style="text-align: center">
                        <h2>Посада участників</h2>
                        <input type="text" class="form-control" placeholder="Ім'я" required autofocus>
                        <input type="text" class="form-control" placeholder="Посада" required autofocus>
                        <button type="button" class="btn btn-default">Зберегти</button>
                    </form>
                </div>
                <div class="col-md-3"></div>                
            </div>
        </div>
    </body>
</html>
