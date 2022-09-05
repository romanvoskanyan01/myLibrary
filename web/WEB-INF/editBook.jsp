<%@ page import="java.util.List" %>
<%@ page import="model.Author" %>
<%@ page import="model.Book" %><%--
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
    Book book = (Book) request.getAttribute("book");
    List<Author> authors = (List<Author>) request.getAttribute("authors");
%>
Please update Book's data:
<form action="/books/edit" method="post">
    <input type="hidden" name="bookId" value="<%=book.getId()%>">
    <input type="text" name="title" value="<%=book.getTitle()%>"/> <br>
    <input type="text" name="description" value="<%=book.getDescription()%>"/> <br>
    <input type="number" name="price" value="<%=book.getPrice()%>"/> <br>
    <select name="authorId">
        <% for (Author author : authors) {
            if (author.equals(book.getAuthor())) {
        %>
        <option selected value="<%=author.getId()%>"><%=author.getName()%>
        </option>
        <% } else {%>
        <option value="<%=author.getId()%>"><%=author.getName()%>
                <%}
        }%>
    </select>
    <input type="submit" value="Update">
</form>
</body>
</html>