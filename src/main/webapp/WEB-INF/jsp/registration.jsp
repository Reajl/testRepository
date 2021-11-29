<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
    <title>Registration</title>
</head>

<body>
<div>
    <form:form method="POST" modelAttribute="userForm">
        <div class="form-group-registration">
        <h2>Регистрация</h2>
        <div class="registration-block">
        <div>
            <form:input type="text" path="username" placeholder="Логин"
                        autofocus="true"></form:input>
            <form:errors path="username"></form:errors>
            <div class = "error"> ${usernameError}</div>
        </div>
        <div>
            <form:input type="password" path="password" placeholder="Пароль"></form:input>
            <div class = "error">   ${passwordError}</div>
        </div>
        <div>
            <form:input type="password" path="passwordConfirm"
                        placeholder="Подтвердите пароль"></form:input>
            <form:errors path="password"></form:errors>
            <div class = "error">   ${passwordConfirmError}</div>
        </div>
        <button type="submit">Зарегистрироваться</button>

    </form:form>
            <p class="message">Уже зарегистрированы?<a href="/login">Авторизируйтесь</a></p>
        </div>
        </div>
</div>
</body>
</html>