<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
      integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
<!DOCTYPE HTML>
<html>
<head>
    <title>Main</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
</head>
<body>
<div>
    <div class="form-group-index">
        <sec:authorize access="!isAuthenticated()">
            <h2 class="message-access">Получите доступ к сайту</h2>
        </sec:authorize>
        <h2>${pageContext.request.userPrincipal.name}</h2>
        <div class="index-block">
            <sec:authorize access="!isAuthenticated()">
                <div>
                    <form action="${pageContext.request.contextPath}/login" method="get">
                        <button type="submit">Авторизация</button>
                    </form>
                </div>
                <div>
                    <form action="${pageContext.request.contextPath}/registration" method="get">
                        <button type="submit">Регистрация</button>
                    </form>
                </div>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
                <div>
                    <form action="${pageContext.request.contextPath}/news" method="get">
                        <input type="hidden" name="userId" value="${userID}"/>
                        <button type="submit">Новости</button>
                    </form>
                </div>
                <sec:authorize access="hasRole('ADMIN')">
                    <div>
                        <form action="${pageContext.request.contextPath}/admin" method="get">
                            <input type="hidden" name="userId" value="${userID}"/>
                            <button type="submit">Панель администратора</button>
                        </form>
                    </div>
                    <p class="message"><a href="/logout">Logout</a></p>
                </sec:authorize>
            </sec:authorize>
        </div>
    </div>
</div>
</body>
</html>