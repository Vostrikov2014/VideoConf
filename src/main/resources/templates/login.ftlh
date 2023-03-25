<!DOCTYPE html>
<html>
<head>
    <title>EMOO</title>
</head>
<body>
<h1>EMOO</h1><hr>
<h4>Authorisation</h4>
<form action="/login" method="post">
    email: <input type="email" name="username"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Вход"/>
</form>
<a href="/registration">Registration</a>
</body>
</html>
