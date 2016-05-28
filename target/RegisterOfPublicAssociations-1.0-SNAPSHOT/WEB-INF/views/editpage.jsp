<%-- 
    Document   : editpage
    Created on : 26.05.2016, 17:27:08
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
        <link rel="stylesheet" href="/resources/methodView.css">
        <title>Title</title>
        <title>JSP Page</title>
    </head>    
    <body>
        <div class="container">
            <%@include file="header1.jsp"%>
            <br>
            <br>
            <br>
        </div>
    <h1>Редагувати організацію</h1>        
    <fieldset>
        <spring:url value="/login" var="loginUrl" />
        <form:form role="form" action="${loginUrl}" method="post">
            <div>
                <label>Повна назва: </label>
                <input type="text" name="fullname">
            </div>
            <div>
                <label>Скорочена назва: </label>
                <input type="text" name="shortname">
            </div>
            <div>
                <label>Назва іноземною мовою: </label>
                <input type="text" name="shortname">
            </div>
            <div>
                <label>Організаційно правова форма: </label>
                <select name="">
                    <option value="FormOfIncorporation 0" selected>Не встановлено</option>
                    <option value="FormOfIncorporation 1" selected>Громадська організація</option>
                    <option value="FormOfIncorporation 2" selected>Громадська спілка</option>
                </select>
            </div>
            <div>
                <label>Вид організації: </label>
                <select name="">
                    <option value="Kind 0" selected>Не встановлено</option>
                    <option value="Kind 1" selected>Освітня або культурно-виховна</option>
                    <option value="Kind 2" selected>Правозахисна</option>
                    <option value="Kind 3" selected>Інша</option>
                </select>
            </div>
            <div>
                <label>Ціль громадської організації: </label>
                <input type="text" name="shortname">
            </div>
            <div>
                <label>Статус: </label>
                <input type="text" name="shortname">
                <select name="">
                    <option value="Statuse 0" selected>Не встановлено</option>
                    <option value="Statuse 1" selected>Всеукраїнський</option>
                    <option value="Statuse 2" selected>Міжнародний</option>
                    <option value="Statuse 3" selected>Місцевий</option>
                    <option value="Statuse 4" selected>Обласний</option>
                    <option value="Statuse 5" selected>Первинний</option>
                    <option value="Statuse 6" selected>Регіональний</option>
                    <option value="Statuse 7" selected>Республіканський</option>
                </select>
            </div>
            <div>
                <label>Адреса: </label>
                <input type="text" name="shortname">
            </div>
            <div>
                <label>Назва іноземною мовою: </label>
                <input type="text" name="shortname">
            </div>
            <div>
                <label>Перший рівень місцезнаходження: </label>
                <input type="text" name="shortname">
            </div>
            <div>
                <label>Другий рівень місцезнаходження: </label>
                <input type="text" name="shortname">
            </div>
            <div>
                <label>Третій рівень місцезнаходження: </label>
                <input type="text" name="shortname">
            </div>
            <div>
                <label>Четвертий рівень місцезнаходження: </label>
                <input type="text" name="shortname">
            </div>
            <div>
                <label>Припинення діяльності: </label>
                <input type="text" name="shortname">
            </div>
        </form:form>
    </fieldset>
    </body>
</html>
