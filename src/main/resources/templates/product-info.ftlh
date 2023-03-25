<!DOCTYPE html>
<html>
<head>
    <title>EMOO</title>
</head>
<body>
<h1>EMOO</h1><hr>
<h4>Detailed information about the product</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Name product: </b>${product.title}<br>
<b>Description product: </b>${product.description}<br>
<b>Price: </b>${product.price}<br>
<b>City: </b>${product.city}<br>
<b>Author: </b>${product.user.name}<br>
<hr>
</body>
</html>
