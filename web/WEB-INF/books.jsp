<%@ page import="java.util.List" %>
<%@ page import="model.Book" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 05.09.2022
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book page</title>
</head>
<body>
<%
    List<Book> books = (List<Book>) request.getAttribute("books");
%>
<table border="1">
    <tr>
        <th>id</th>
        <th>title</th>
        <th>description</th>
        <th>price</th>
        <th>author name</th>
        <th>action</th>
    </tr>
    <%for (Book book : books) { %>

    <tr>
        <td><%=book.getId()%>
        </td>
        <td><%=book.getTitle()%>
        </td>
        <td><%=book.getDescription()%>
        </td>
        <td><%=book.getPrice()%>
        </td>
        <td>
            <% if (book.getAuthor() != null) {%>
            <%=book.getAuthor().getName()%> <%=book.getAuthor().getSurname()%>
            <%} else { %>
            <span style="color: red">there is no author</span>
            <%}%>
        </td>

        <td>
            <a href="/books/remove?bookId=<%=book.getId()%>">Remove</a> |
            <a href="/books/edit?bookId=<%=book.getId()%>">Edit</a>
        </td>

    </tr>
    <%}%>
</table>
</body>
</html>
