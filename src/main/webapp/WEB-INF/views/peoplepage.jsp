<%-- 
    Document   : peoplepage
    Created on : 30.05.2016, 1:01:35
    Author     : BOSS
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <%@include file="headerForAdmin.jsp"%>     
        
               
        <div class="container">
            <div class="row" style="text-align: center;">
                <h1 style="text-shadow: 1px 1px 1px #000;">Додавання людей з посадами у ГО</h1>
            </div>
        </div>       
        <br>
        <div class="container">           
            <form method="post" action="addpeople">
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
                <% String successMessage = (String)request.getAttribute("successResult"); %>
                <%
                    if(successMessage != null)
                {%>
                <div class="row">                    
                <div class="alert alert-success alert-dismissible" role="alert" style="height:50%;">
                    <h4 class="alert-link" style="text-align: center">
                        <%=successMessage%>
                    </h4>
                </div>
                </div>
                <% } %>
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8">
                            <div class="form-group" style="text-align: center;">
                                <label>Громадські організації</label><br>
                                <select name="PublicAssociation">
                                    <option value="Оберіть ГО" selected>Оберіть ГО</option>
                                    <c:forEach items="${publicAssociations}" var="publicAssociation">
                                        <option>${publicAssociation.fullName}</option>
                                    </c:forEach>
                                </select>                          
                            </div>
                    </div>            
                    <div class="col-md-2"></div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group" style="text-align: center;">
                            <label>Особи</label><br>
                            <select name="Person">
                                <option value="Оберіть особу" selected>Оберіть особу</option>
                                <c:forEach items="${persons}" var="person">
                                    <option>${person.name}</option>
                                </c:forEach>
                            </select>                          
                        </div>
                    </div>
                    <div class="col-md-6">
                            <div class="form-group" style="text-align: center;">
                                <label>Посади</label><br>
                                <select name="Post">
                                    <option value="Оберіть посаду" selected>Оберіть посаду</option>
                                    <c:forEach items="${posts}" var="post">
                                        <option>${post.name}</option>
                                    </c:forEach>
                                </select>                          
                            </div>
                    </div>            
                </div>
                <div class="row" style="text-align: center">
                    <button class="btn btn-primary" type="submit" value="disable">Створити</button>
                </div>
            </form>
        </div>
    </body>
</html>
