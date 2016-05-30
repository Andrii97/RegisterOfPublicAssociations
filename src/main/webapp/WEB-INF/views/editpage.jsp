<%@ page import="com.mycompany.model.entity.*" %>
<%@ page import="com.mycompany.model.entity.Kind" %>
<%@ page import="com.mycompany.model.repository.*" %>
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

        <title>Редагування ГО</title>
    </head>
    <body style="text-align: center;">
        
        <%@include file="headerForAdmin.jsp"%>
          
        
        <div class="container">
        <div class="col-md-12">
            <div  class="page-header" style="text-align: center">
                <h1 style="text-shadow: 1px 1px 1px #000;"> Редагування організації</h1>
            </div>
        </div>
        <br>
        <br>
        <br>
        </div>
        
        
            <form method="post" action="editpage">
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
                    <h4 style="font-weight: bold;">Параметри імен</h4>
                    <div class="col-md-6" style="text-align: center">
                        <label>Повна назва: </label>
                        <br>
                        <input class="form-control" value="${choosenassociation.fullName}" name="fullname" type="text" style="width: 100%;"/>
                    </div>
                    <div>
                        <input name="realname" value="${choosenassociation.fullName}" hidden="">
                    </div>
                    <div class="col-md-3" style="text-align: center">
                        <label>Скорочена назва: </label>
                        <br>
                        <input type="text" class="form-control" value="${choosenassociation.shortName}" name="shortname" style="width: 100%">
                    </div>
                    <div class="col-md-3" style="text-align: center">
                        <label>Назва іноземною мовою: </label>
                        <input type="text" class="form-control" value="${choosenassociation.foreignLanguageName}" name="foreignname" style="width: 100%">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6" class="form-group">
                        <div class="form-group">
                             <br>
                            <label>Організаційно правова форма:</label>                           
                            <select name="FormOfIncorporation">
                                <option value="Не встановлено">Не встановлено</option>
                                <c:forEach items="${formOfIncorporations}" var="formOfIncorporation">
                                    <option 
                                        <c:if test = "${formOfIncorporation.id == choosenassociation.formOfIncorporation.id}"> 
                                            selected  
                                        </c:if>  
                                            >${formOfIncorporation.name}
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                        <%--<div class="form-group">
                            <label>Вид організації: </label>
                            <select name="kind" value>
                                <option value="Не встановлено" selected>Не встановлено</option>
                                <c:forEach items="${kinds}" var ="kind">
                                    <option>${kind.name}</option>
                                </c:forEach>
                            </select>
                        </div>--%>
                        <div class="form-group">
                            <label>Мета громадської організації: </label>
                            <br>
                            <input type="text" class="form-control" value="${choosenassociation.objective}" name="objective">
                        </div>     
                </div>
                <div class="col-md-6" class="form-group">
                    <div class="form-group">
                        <label>Адреса: </label>
                        <input class="form-control" value="${choosenassociation.address}" type="text" name="address">
                    </div>
                    <p style="font-weight: bold;">Рівні місцерозташування</p>
                    <div class="form-group" class="row" style="text-align: center">
                        <input placeholder="Перший рівень" class="form-control" value="${choosenassociation.firstLevelOfLocation}" style="width: 30%;margin-left: 35%;" type="number" name="firstlevel" onBlur="if(this.value=='' || this.value < 0)this.value='0'">
                        <input placeholder="Другий рівень" class="form-control" value="${choosenassociation.secondLevelOfLocation}" style="width: 30%;margin-left: 35%;" type="number" name="secondlevel" onBlur="if(this.value=='' || this.value < 0)this.value='0'">
                        <input placeholder="Третій рівень" class="form-control" value="${choosenassociation.thirdLevelOfLocation}" style="width: 30%;margin-left: 35%;" type="number" name="thirdlevel" onBlur="if(this.value=='' || this.value < 0)this.value='0'">            
                        <input placeholder="Четвертий рівень" class="form-control" value="${choosenassociation.fourthLevelOfLocation}" style="width: 30%;margin-left: 35%;" type="number" name="fourthlevel" onBlur="if(this.value=='' || this.value < 0)this.value='0'">
                    </div>
                    <div class="form-group" style="text-align: center">
                        <label>Стан: </label>
                        <div class="form-group" class="row" style="text-align: center">
                            <select name="state">
                                <option value="Не встановлено">Не встановлено</option>
                                <option value="Зареєстровано"
                                        <c:if test = "${'Зареєстровано' == choosenassociation.state}"> 
                                            selected  
                                        </c:if>  
                                            >Зареєстровано</option>
                                <option value="Незареєстровано"
                                    <c:if test = "${'Незареєстровано' == choosenassociation.state}"> 
                                            selected  
                                    </c:if> 
                                            >Незареєстровано</option>
                            </select>
                        </div>
                    </div>
                </div> 
                <%--<div class="row">
                    <div class="col-md-6">
                        <label>Статус: </label>
                        <select name="statuse">
                                <option value="Не встановлено" selected>Не встановлено</option>
                                <c:forEach items="${statuses}" var ="statuse">
                                    <option>${statuse.name}</option>
                                </c:forEach>
                        </select>
                    </div>
                </div>--%>
                <div class="row">                
                    <button  class="btn btn-primary" type="reset" style="position:relative;float:left;">Скинути</button>
                    <button class="btn btn-primary" type="submit" value="disable" style="position:relative;float:right;">Підтвердити</button>                 
                </div>                
                </div>
                
            </form>
        </div>
    </body>
</html>
