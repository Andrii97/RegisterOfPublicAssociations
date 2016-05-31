<%@ page import="com.mycompany.model.entity.Kind" %>
<%@ page import="java.util.List" %>
<%-- 
    Document   : createpage
    Created on : 26.05.2016, 16:21:13
    Author     : redin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href='/webjars/bootstrap/3.1.0/css/bootstrap.min.css'>
        <link rel="stylesheet" href="/resources/css/navbar.css">
        
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

        <title>Створення ГО</title>
    </head>
    <body style="text-align: center;">
        
        <%@include file="headerForAdmin.jsp"%>
          
        
        <div class="container">
        <div class="col-md-12">
            <div  class="page-header" style="text-align: center">
                <h1 style="text-shadow: 1px 1px 1px #000;"> Створення організації</h1>
            </div>
        </div>
        <br>
        <br>
        <br>
        </div>
        
        
            <form method="post" action="createpage">
                <% String errorMessage = (String)request.getAttribute("createResult"); %>
                <%
                    if(errorMessage != null)
                {%>
                <div class="row">                    
                <div class="alert alert-warning alert-dismissible" role="alert" style="height:50%;">
                    <h4 class="alert-link" style="text-align: center">
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
                <div class="container">
                <div class="form-group row">
                    <p style="position:relative;float:left;font-weight:bold;"><span style="color:red;">*</span> - обов'язкові поля</p>
                </div>
                <div class="form-group" class="row" style="width: 100%">    
                    <h4 style="font-weight: bold;">Параметри імен</h4>
                    <div class="col-md-6" style="text-align: center">
                        <label>Повна назва<span style="color:red;">*</span>: </label>
                        <br>
                        <input class="form-control" name="fullname" type="text" style="width: 100%;"/>
                    </div>
                    <div class="col-md-3" style="text-align: center">
                        <label>Скорочена назва: </label>
                        <br>
                        <input type="text" class="form-control" name="shortname" style="width: 100%">
                    </div>
                    <div class="col-md-3" style="text-align: center">
                        <label>Назва іноземною мовою: </label>
                        <input type="text" class="form-control" name="foreignname" style="width: 100%">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6" class="form-group">
                        <div class="form-group">
                             <br>
                            <label>Організаційно правова форма<span style="color:red;">*</span>:</label>                           
                            <select name="FormOfIncorporation">
                                <option value="Не встановлено" selected>Не встановлено</option>
                                <c:forEach items="${formOfIncorporations}" var="formOfIncorporation">
                                    <option>${formOfIncorporation.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Вид організації: </label>
                            <select name="kind">
                                <option value="Не встановлено" selected>Не встановлено</option>
                                <c:forEach items="${kinds}" var="kind">
                                    <option>${kind.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Мета громадської організації: </label>
                            <br>
                            <input type="text" class="form-control" name="objective">
                        </div>      
                </div>
                <div class="col-md-6" class="form-group">
                    <div class="form-group">
                        <label>Адреса: </label>
                        <input class="form-control" type="text" name="address">
                    </div>
                    <p style="font-weight: bold;">Рівні місцерозташування<span style="color:red;">*</span></p>
                    <div class="form-group" class="row" style="text-align: center">
                        <input placeholder="Перший рівень" class="form-control" style="width: 30%;margin-left: 35%;" type="number" name="firstlevel" onBlur="if(this.value=='' || this.value < 0)this.value='0'">
                        <input placeholder="Другий рівень" class="form-control" style="width: 30%;margin-left: 35%;" type="number" name="secondlevel" onBlur="if(this.value=='' || this.value < 0)this.value='0'">
                        <input placeholder="Третій рівень" class="form-control" style="width: 30%;margin-left: 35%;" type="number" name="thirdlevel" onBlur="if(this.value=='' || this.value < 0)this.value='0'">            
                        <input placeholder="Четвертий рівень" class="form-control" style="width: 30%;margin-left: 35%;" type="number" name="fourthlevel" onBlur="if(this.value=='' || this.value < 0)this.value='0'">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <label>Статус: </label>
                        <select name="statuse">
                            <option value="Не встановлено" selected>Не встановлено</option>
                            <c:forEach items="${statuses}" var="statuse">
                                <option>${statuse.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label>Стан<span style="color:red;">*</span>: </label>
                        <select name="state">
                            <option value="Не встановлено" selected>Не встановлено</option>
                            <option value="Зареєстровано">Зареєстровано</option>
                            <option value="Незареєстровано">Незареєстровано</option>
                        </select>
                    </div>
                </div>
                <div class="row">                
                    <button  class="btn btn-primary" type="reset" style="position:relative;float:left;">Скинути</button>
                    <button class="btn btn-primary" type="submit" value="disable" style="position:relative;float:right;">Створити</button>                 
                </div>                
                </div>
                
            </form>
        </div>
    </body>
</html>
