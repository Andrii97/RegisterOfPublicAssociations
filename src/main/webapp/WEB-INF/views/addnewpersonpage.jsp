<%-- 
    Document   : addnewpersonpage
    Created on : 30.05.2016, 15:38:06
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
        <title>New person</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    </head>
    <body>
         <%@include file="headerForAdmin.jsp"%>
        <br>
        <div class="container">
            <div class="row" style="text-align: center;">
                <h1 style="text-shadow: 1px 1px 1px #000;">Додавання осіб у базу</h1>
            </div>
        </div>       
        <br>
        <div class="container">
            <form method="post" action="addperson">  
                <% String errorMessage = (String)request.getAttribute("createResult"); %>
                <%
                    if(errorMessage != null)
                {%>
                <div class="row">                    
                <div class="alert alert-warning alert-dismissible" role="alert" style="height:50%;text-align: center;">
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
                <div class="col-md-4"></div>
                <div class="col-md-4" style="text-align: center;">                    
                        <label for="inputName" class="sr-only">Ім'я участника</label>
                        <input type="text" name = "name" id="inputName" class="form-control" placeholder="Введіть ім'я участника..." c>
                </div>
                <div class="col-md-4"></div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6" >
                        <div class="form-group" style="text-align: center">
                            <label>Cерія паспорта</label>
                            <br>
                            <input type="text" name = "series" id="inputSeries" class="form-control" style="width: 10%; margin-left: 45%"c>
                        </div>
                        <br>
                        <div class="form-group" style="text-align: center" >
                            <label>Номер паспорта</label>
                            <input type="text" name = "number" id="inputNumb" class="form-control" style="width: 20%;margin-left: 40%"c>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group" style="text-align: center" >
                            <label >День народження</label> 
                            <br>
                            <input type="date" name = "HB" id="inputHB" class="form-control" style="width: 30%;margin-left: 35%"c>
                        </div>
                        <br>
                        <div class="form-group" style="text-align: center" >
                            <label>Національність</label>
                            <br>
                            <select name="nationality">
                                    <option value="Оберіть національність" selected>Оберіть національність</option>
                                    <c:forEach items="${nationalities}" var="nationality">
                                        <option>${nationality.name}</option>
                                    </c:forEach>
                                </select>     
                        </div>
                        
                    </div>
                </div>
            <div class="row" style="text-align: center;">
                <button class="btn btn-primary" type="submit" value="disable">Додати</button>       
            </div>
            </form>
        </div>
    </body>
</html>
