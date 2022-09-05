<%@ page import="java.util.List" %>
<%@ page import="model.Author" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 05.09.2022
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Book</title>
</head>
<body>
<%
    List<Author> authors = (List<Author>) request.getAttribute("authors");
%>
Please input Book's data:
<form action="/books/add" method="post">
    <input type="text" name="title" placeholder="please input title"/> <br>
    <input type="text" name="description" placeholder="please input description"/> <br>
    <input type="number" name="price" placeholder="please input price"/> <br>
    <select name="authorId">
        <% for (Author author : authors) { %>
<option value="<%=author.getId()%>"><%=author.getName()%></option>
        <% }%>
    </select>
    <input type="submit" value="Add">
</form>
</body>
</html>
