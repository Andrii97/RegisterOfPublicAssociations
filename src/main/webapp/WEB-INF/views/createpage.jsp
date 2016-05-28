<%@ page import="com.mycompany.model.entity.Kind" %>
<%@ page import="java.util.List" %>
<%-- 
    Document   : createpage
    Created on : 26.05.2016, 16:21:13
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
        <h2>${name}</h2>
        <h2>${kinds[0].name}</h2>
        <div class="container">
            <%@include file="header1.jsp"%>
            <br>
            <br>
            <br>
        </div>
    <h1>Створити організацію</h1>        
    <fieldset>
        <form method="post" action="addrecord">
            <div>
                <label>Повна назва: </label>
                    <input path="Name" name="fullname" type="text" id="name"/>
            </div>
            <div>
                <label>Скорочена назва: </label>
                <input type="text" name="shortname">
            </div>
            <div>
                <label>Назва іноземною мовою: </label>
                <input type="text" name="foreignname">
            </div>
            <div>
                <label>Організаційно правова форма: </label>
                <select name="formOfIncorporation">
                    <option value="FormOfIncorporation 0" selected>Не встановлено</option>
                    <option value="Громадська організація" selected>Громадська організація</option>
                    <option value="Громадська спілка" selected>Громадська спілка</option>
                </select>
            </div>
            <div>
                <label>Вид організації: </label>
                <select name="kind">
                    <option value="Kind 0" selected>Не встановлено</option>
                    <option value="Kind 1" selected>Освітня або культурно-виховна</option>
                    <option value="Kind 2" selected>Правозахисна</option>
                    <option value="Kind 3" selected>Інша</option>
                </select>
            </div>
            <div>
                <label>Ціль громадської організації: </label>
                <input type="text" name="objective">
            </div>
            <div>
                <label>Статус: </label>
                <select name="statuse">
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
                <input type="text" name="address">
            </div>
            <div>
                <label>Перший рівень місцезнаходження: </label>
                <input type="text" name="firstlevel">
            </div>
            <div>
                <label>Другий рівень місцезнаходження: </label>
                <input type="text" name="secondlevel">
            </div>
            <div>
                <label>Третій рівень місцезнаходження: </label>
                <input type="text" name="thirdlevel">
            </div>
            <div>
                <label>Четвертий рівень місцезнаходження: </label>
                <input type="text" name="fourthlevel">
            </div>
            <div align="right">
                <button class="btn btn-primary" type="submit">
                    Створити
                </button>
            </div>
        </form>
    </fieldset>
    </div>
    </body>
</html>
