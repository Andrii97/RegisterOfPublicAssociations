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
<<<<<<< HEAD
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
=======
        
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

        <title>Створення ГО</title>
    </head>
    <body style="text-align: center;">
        
        <%@include file="header.jsp"%>
          
        
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
        
        
            <form method="post" action="addrecord">
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
                <div class="form-group row">
                    <p style="position:relative;float:left;font-weight:bold;"><span style="color:red;">*</span> - обов'язкові поля</p>
                </div>                
                <div class="form-group" class="row" style="width: 100%">    
                    <h4 style="font-weight: bold;">Параметри імен</h4>
                    <div class="col-md-6" style="text-align: center">
                        <label>Повна назва<span style="color:red;">*</span>: </label>
                        <br>
                        <input path="Name" class="form-control" name="fullname" type="text" id="name" style="width: 100%;"/>
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
                                <option value="" selected>Не встановлено</option>
                                <option value="Kind 1">Освітня або культурно-виховна</option>
                                <option value="Kind 2">Правозахисна</option>
                                <option value="Kind 3">Інша</option>
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
                        <input placeholder="Перший рівень" class="form-control" style="width: 30%;margin-left: 35%;" type="number" name="firstlevel"  onBlur="if(this.value=='')this.value='0'">
                        <input placeholder="Другий рівень" class="form-control" style="width: 30%;margin-left: 35%;" type="number" name="secondlevel" onBlur="if(this.value=='')this.value='0'">
                        <input placeholder="Третій рівень" class="form-control" style="width: 30%;margin-left: 35%;" type="number" name="thirdlevel" onBlur="if(this.value=='')this.value='0'">            
                        <input placeholder="Четвертий рівень" class="form-control" style="width: 30%;margin-left: 35%;" type="number" name="fourthlevel" onBlur="if(this.value=='')this.value='0'">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <label>Статус: </label>
                        <select name="statuse">
                            <option value="Statuse 0" selected>Не встановлено</option>
                            <option value="Statuse 1">Всеукраїнський</option>
                            <option value="Statuse 2">Міжнародний</option>
                            <option value="Statuse 3">Місцевий</option>
                            <option value="Statuse 4">Обласний</option>
                            <option value="Statuse 5">Первинний</option>
                            <option value="Statuse 6">Регіональний</option>
                            <option value="Statuse 7">Республіканський</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label>Стан<span style="color:red;">*</span>: </label>
                        <select name="state">
                            <option value="Statuse 0" selected>Не встановлено</option>
                            <option value="Зареєстровано">Зареєстровано</option>
                            <option value="Не зареєстровано">Незареєстровано</option>
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
>>>>>>> AndriiRepository/master
    </body>
</html>
