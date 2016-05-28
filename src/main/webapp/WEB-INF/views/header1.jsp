<%-- 
    Document   : header1
    Created on : 26.05.2016, 17:54:14
    Author     : redin
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <link rel='stylesheet' href='/webjars/bootstrap/3.1.0/css/bootstrap.min.css'>
        <link rel="stylesheet" href="/resources/css/navbar.css">
        <link rel="stylesheet" href="/resources/methodView.css">
        <title>Title</title>
    </head>
    <body>
        <c:url value="/login" var="logout" />
        <c:url value="/mainpage" var="showMainpage" />
        <c:url value="/createpage" var="showCreatepage"/>
        <c:url value="/editpage" var="showEditpage"/>
        <ul>
            <li><a href="${showMainpage}">Головна</a></li>
            <li><a href="${showCreatepage}">Створення</a></li>
            <li><a href="${showEditpage}">Редагування</a></li>
            <li style="float:right"><a href="${logout}">Вихід з системи</a></li>
        </ul>
    </body>
</html>
