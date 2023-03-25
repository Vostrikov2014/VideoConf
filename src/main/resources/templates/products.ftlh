<!DOCTYPE html>
<html>
<head>
    <title> Video Conf</title>
</head>
<body>
<h1>EMOO</h1><hr>
<#if user.email??>
    <h3>User name: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Logout"/>
    </form>
<#else>
    <a href="/login">Login</a></h1>
</#if>
<hr>
<h4>Russian product</h4>
<form action="/" method="get">
    Find by product name: <input type="text" name="title"><br>
    <input type="submit" value="Find"/>
</form>
<#list products as product>
    <div>
        <!--на самом деле product.getTitle()-->
        <p><b></b>${product.title}</b> ${product.price} | <a href="/product/${product.id}">More...</a> </p>
    </div>
<#else>
    <h3>Not product</h3>
</#list>
<#if user.email??>
    <hr>
    <h3>Create new product</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Name product: <input type="text" name="title"/><br><br>
        Description product: <input type="text" name="description"/><br><br>
        Price: <input type="text" name="price"/><br><br>
        City: <input type="text" name="city"/><br><br>
        Author: <input type="text" name="author"/><br><br>
        First photo: <input type="file" name="file1"/><br><br>
        Second photo: <input type="file" name="file2"/><br><br>
        Third photo: <input type="file" name="file3"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Add product"/>
    </form>
</#if>
</body>
</html>
