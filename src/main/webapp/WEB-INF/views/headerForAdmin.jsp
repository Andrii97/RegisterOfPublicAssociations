<%-- 
    Document   : headerForAdmin
    Created on : 30.05.2016, 1:05:22
    Author     : BOSS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </head>
    <body>         
        
        <c:url value="/mainpage" var="showMainpage"/>   
        <c:url value="/admin/addpeople" var="addPeople"/>    
        <c:url value="/admin/addsymbolic" var="addSymbolic"/>    
        
        <nav class="navbar navbar-default" style="background: linear-gradient(180deg, #193d5b,#fcf8e3);">
             <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li><a href="${showMainpage}" style="color: #fcf8e3;text-shadow: 1px 1px 1px #000;">Назад у меню<span class="sr-only">(current)</span></a></li>        
              </ul>
              <ul class="nav navbar-nav navbar-right">
                <li><a href="${addPeople}" style="color: #fcf8e3;text-shadow: 1px 1px 1px #000;">Додавання людей і посад</a></li>
                <li><a href="${addSymbolic}" style="color: #fcf8e3;text-shadow: 1px 1px 1px #000;">Додавання символіки</a></li>                
              </ul>
            </div>
          </div>
        </nav>
    </body>
</html>
