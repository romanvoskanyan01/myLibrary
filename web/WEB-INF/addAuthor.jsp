<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 04.09.2022
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Author</title>
</head>
<body>
Please input author's data:
<form action="/authors/add" method="post">
    <input type="text" name="name" placeholder="please input name"/> <br>
    <input type="text" name="surname" placeholder="please input surname"/> <br>
    <input type="text" name="email" placeholder="please input email"/> <br>
    <input type="number" name="age" placeholder="please input age"/> <br>
    <input type="submit" value="Add">

</form>
</body>
</html>
