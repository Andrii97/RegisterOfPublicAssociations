<!--
  Created by IntelliJ IDEA.
  User: talizorah
  Date: 16.18.4
  Time: 18:17
  To change this template use File | Settings | File Templates.
-->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel='stylesheet' href='/webjars/bootstrap/3.1.0/css/bootstrap.min.css'>
    <link rel="stylesheet" href="/resources/css/navbar.css">
    <title>Title</title>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

</head>
<body>    

    <%@include file="header.jsp"%>

    
    <div class="container">
        <div class="col-md-12">
            <div  class="page-header" style="text-align: center">
                <h1 style="text-shadow: 1px 1px 1px #000;"> Реєстр громадських об'єднань України</h1>
            </div>
        </div>
        <br>
        <br>
        <br>
    </div>
        
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <form method="post" action="mainpage">
                    <div class="form-group" style="text-align: center" >
                        <label>Назва громадського об'єднання</label><br>
                        <input class="form-control" name="FullName" type="text" style="width: 100%" autofocus>
                    </div>
                    <div class="row">
                        <div class="col-md-6" style="text-align: center">
                            <div class="form-group">
                                <label>Дата реєстрації</label><br>
                                <input type="date">
                            </div>
                        </div>
                        <div class="col-md-6" style="text-align: center">
                            <p style="font-weight: bold;">Місцезнаходження</p>
                            <div class="form-group">
                                <label>Рівень 1:</label>
                                <select name="FirstLevelOfLocation">
                                    <option value="FirstLevelOfLocation 0" selected>не встановлено</option>
                                    <c:forEach items="${firstLevelOfLocations}" var="firstLevelOfLocation">
                                        <option>${firstLevelOfLocation.name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Рівень 2:</label>
                                <select name="SecondLevelOfLocation">
                                    <option value="SecondLevelOfLocation 0" selected>не встановлено</option>
                                    <c:forEach items="${secondLevelOfLocations}" var="secondLevelOfLocation">
                                        <option>${secondLevelOfLocation.name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Рівень 3:</label>
                                <select name="ThirdLevelOfLocation">
                                    <option value="ThirdLevelOfLocation 0" selected>не встановлено</option>
                                    <c:forEach items="${thirdLevelOfLocations}" var="thirdLevelOfLocation">
                                        <option>${thirdLevelOfLocation.name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="text-align: center">
                        <p style="font-weight: bold;">Додаткові параметри пошуку</p>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Статус:</label>
                                <br>
                                <select name="Status">
                                    <option value="Status 0" selected>не встановлено</option>
                                    <c:forEach items="${statuses}" var="status">
                                        <option>${status.name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Спрямованість:</label>
                                <select name="Kind" >
                                    <option value="Kind 0" selected>не встановлено</option>
                                    <c:forEach items="${kinds}" var="kind">
                                        <option>${kind.name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Вид:</label>
                                <br>
                                <select name="FormOfIncorporation">
                                    <option value="FormOfIncorporation 0" selected>не встановлено</option>
                                    <c:forEach items="${formOfIncorporations}" var="formOfIncorporation">
                                        <option>${formOfIncorporation.name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">                        
                        <button type="reset" class="btn btn-primary">Скинути</button>
                        <button class="btn btn-primary" type="submit" style="position:relative;float:right;">Пошук</button>
                    </div>
                </form>
            </div>
            <div class="col-md-2"></div>
            
        </div>
                
    </div>
    
            
    <div class="container">
        <table style="margin-top: 30px" class = "table table-bordered table-hover table-condensed">
            <thead>
                <tr>
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
            
    


</body>
</html>
