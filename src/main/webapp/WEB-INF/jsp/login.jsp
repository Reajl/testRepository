<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
    <title>Log in with your account</title>
</head>
<body>
<sec:authorize access="isAuthenticated()">
    <% response.sendRedirect("/"); %>
</sec:authorize>
<div class="form-group-login">
    <form method="POST" action="/login">
        <h2>Войдите в свою учетную запись</h2>
        <div class="login-block">
            <div class="username">
                <label for="username">Логин</label>
                <input name="username" type="text" placeholder="Введите ваш лоигн" id="username"
                       autofocus="true" required/>
            </div>
            <div class="password">
                <label for="password">Пароль</label>
                <input name="password" type="password" placeholder="Введите ваш пароль" id="password" required/>
            </div>
            <div  <c:if test="${not empty error}">>
                <div class="error">${error}</div>
            </c:if>
            </div>
            <button type="submit">Войти</button>
            <p class="message">Не зарегистрированы?<a href="/registration">Регистрация</a></p>
        </div>
    </form>
</div>
</body>
</html>