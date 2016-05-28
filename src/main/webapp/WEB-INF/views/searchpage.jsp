<%-- 
    Document   : searchpage
    Created on : 25.05.2016, 13:25:26
    Author     : Andrii
--%>

<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%! int fontSize; %> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Пошук</title>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <h1>Hello World!</h1>
        <h2>${name}</h2>
        <h2>${kinds[0].name}</h2>
        <%for ( fontSize = 1; fontSize <= 3; fontSize++){ %>
            <font color="green" size="<%= fontSize %>">
                JSP Tutorial
            </font><br />
        <%}%>
        <p>
            Today's date: <%= (new java.util.Date()).toLocaleString()%>
        </p>
        <!--spring:url value="/search" var="searchUrl"/-->
        <!--form:form role="form" action="${searchUrl}" method="post">
            <input type="submit" id="searchButton" value="Вхід"-->
        <form method="post" action="search/show">
            <div>
                <label>Назва громадського об'єднання</label><br>
                <input name="FullName" type="text">
                <!--input type="button">
                <input type="checkbox">
                <input type="color">
                <input type="date">
                <input type="datetime">
                <input type="datetime-local">
                <input type="email">
                <input type="file">
                <input type="hidden">
                <input type="image">
                <input type="month">
                <input type="number">
                <input type="password">
                <input type="radio">
                <input type="range">
                <input type="reset">
                <input type="search">
                <input type="tel">
                <input type="time">
                <input type="url">
                <input type="week"-->
            </div>
            <div>
                <label>Дата реєстрації</label><br>
                <input type="date">
            </div>>
            <div>
                <label>Рівень 1:</label>
                <select name="FirstLevelOfLocation">
                    <option value="FirstLevelOfLocation 0" selected>не встановлено</option>
                    <c:forEach items="${firstLevelOfLocations}" var="firstLevelOfLocation">
                        <option>${firstLevelOfLocation.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div>
                <label>Рівень 2:</label>
                <select name="SecondLevelOfLocation">
                    <option value="SecondLevelOfLocation 0" selected>не встановлено</option>
                    <c:forEach items="${secondLevelOfLocations}" var="secondLevelOfLocation">
                        <option>${secondLevelOfLocation.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div>
                <label>Рівень 3:</label>
                <select name="ThirdLevelOfLocation">
                    <option value="ThirdLevelOfLocation 0" selected>не встановлено</option>
                    <c:forEach items="${thirdLevelOfLocations}" var="thirdLevelOfLocation">
                        <option>${thirdLevelOfLocation.name}</option>
                    </c:forEach>
                </select>
            </div>
            
            <div>
                <label>Статус:</label>
                <select name="Status">
                    <option value="Status 0" selected>не встановлено</option>
                    <c:forEach items="${statuses}" var="status">
                        <option>${status.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div>
                <label>Спрямованість:</label>
                <select name="Kind">
                    <option value="Kind 0" selected>не встановлено</option>
                    <c:forEach items="${kinds}" var="kind">
                        <option>${kind.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div>
                <label>Вид:</label>
                <select name="FormOfIncorporation">
                    <option value="FormOfIncorporation 0" selected>не встановлено</option>
                    <c:forEach items="${formOfIncorporations}" var="formOfIncorporation">
                        <option>${formOfIncorporation.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="container">
                <table style="margin-top: 30px" class = "table">
                    <thead>
                        <tr>
                            <th width="26px"></th>
                            <th width="26px"></th>
                            <th width="120px">Реєстраційний номер запису в Єдиному реєстрі</th>
                            <th width="200px">Стан</th>
                            <th>Повне найменування (Скорочене найменування)</th>
                            <th width="350px">Номер та дата видачі свідоцтва / дубліката свідоцтва</th>
                            <th width="120px">Дата реєстрації</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${publicAssociations}" var="publicAssociation">
                            <tr>
                                <td width="26px">
                                    <img src="D:/expand.png" title="Розгорнути" class="expand" data-href="/home/searchdetail/6LvWpFf3LvsfoyEkE_v9YA==" />
                                </td>
                                <td width="26px">
                                </td>
                                <td><c:out value="${publicAssociation.id}"/></td>
                                <td><c:out value="${publicAssociation.state}"/></td>
                                <td><c:out value="${publicAssociation.fullName}(${publicAssociation.shortName})"/></td>
                                <td><!--c:out value="${publicAssociation.certificate.dateOfIssuingCertificate}; ${publicAssociation.certificate.id}"/--></td>
                                <td><c:out value="${publicAssociation.dateOfRegistration}"/></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div align="right">
                <button class="btn btn-primary" type="submit">
                    Створити
                </button>
            </div>
        </form>
    </body>
</html>
