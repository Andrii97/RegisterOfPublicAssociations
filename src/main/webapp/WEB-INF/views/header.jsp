<!--
  Created by IntelliJ IDEA.
  User: talizorah
  Date: 16.26.4
  Time: 20:57
  To change this template use File | Settings | File Templates.
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <link rel='stylesheet' href='/webjars/bootstrap/3.1.0/css/bootstrap.min.css'>
        <link rel="stylesheet" href="/resources/css/navbar.css">
        <link rel="stylesheet" href="/resources/methodView.css">
        <title>Title</title>
    </head>
    <body>
        <c:url value="/login" var="login" />
        <c:url value="/mainpage" var="showMainpage"/>
        <c:url value="/createpage" var="showCreatepage"/>
        <c:url value="/editpage" var="showEditpage"/>
        <ul>
            <li><a href="${showMainpage}">Головна</a></li>
            <li><a href="${showCreatepage}">Створення</a></li>
            <li><a href="${showEditpage}">Редагування</a></li>
            <li style="float:right"><a href="${login}">Вхід в систему</a></li>
        </ul>
    </body>
</html>
