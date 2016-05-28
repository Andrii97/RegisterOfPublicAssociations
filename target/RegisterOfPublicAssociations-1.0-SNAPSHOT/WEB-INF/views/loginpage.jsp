<!--
  Created by IntelliJ IDEA.
  User: talizorah
  Date: 16.18.4
  Time: 23:58
  To change this template use File | Settings | File Templates.
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Вхід в систему</title>
    <link rel="stylesheet" href="/resources/login/css/style.css" media="screen" type="text/css" />
    <script src="/resources/css/jquery-1.12.3.min.js"></script>
    <script src="/resources/sortFunc.js"></script>
    <script src="/resources/sort.js"></script>
    <link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.css">
    <script src="/resources/bootstrap/js/bootstrap.js"></script>
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

   </head>
<body>
<c:url value="/mainpage" var="showMainpage"/>

<%@include file="header.jsp"%>


<div id="login-form">
    <fieldset>
        <spring:url value="/login" var="loginUrl" />
        <div class="container" id="signIn">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                <form:form role="form" class="form-signin" action="${loginUrl}" method="post">
                    <h2 class="form-signin-heading" style="text-shadow: 1px 1px 1px #000;">Вхід в систему</h2>
                    <label for="inputLogin" class="sr-only">Логін</label>
                    <input type="text" name="login" id="inputLogin" class="form-control" placeholder="Введіть логін..." c>
                    <label for="inputPassword" class="sr-only">Пароль</label>
                    <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Введіть пароль..." required>
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Вхід</button>
                </form:form>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
    </fieldset>
</div>
        
<script>
    $( document ).ready(function() {
        $("#loginButton").click(function () {
            $("#loginInput").reset();
            $("#passwordInput").reset();
        })
    });
</script>

</body>
</html>