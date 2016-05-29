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
        <c:url value="/createpage" var="showCreatepage" />
        <c:url value="/findpage" var="showFindpage" />
        <c:url value="/mainpage" var="showMainpage"/>                
        <nav class="navbar navbar-default" style="background: linear-gradient(180deg, #193d5b,#fcf8e3);">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
             <ul class="nav navbar-nav">
                <li  ><a href="${showMainpage}" style="color: #fcf8e3;text-shadow: 1px 1px 1px #000;">Головна<span class="sr-only">(current)</span></a></li>
                <li><a href="${showCreatepage}" style="color: #fcf8e3;text-shadow: 1px 1px 1px #000;">Створити ГО</a></li>
                <li><a href="${showFindpage}" style="color: #fcf8e3;text-shadow: 1px 1px 1px #000;">Редагувати ГО</a></li>
                <li style="float:right"><a href="${login}" style="color: #fcf8e3;text-shadow: 1px 1px 1px #000;">Вхід в систему</a></li>              
             </ul>
           </div>
         </div>
        </nav>
    </body>
</html>
