package servlet;

import manager.AuthorManager;
import manager.BookManager;
import model.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/books/edit")
public class BookEditServlet extends HttpServlet {
   private BookManager bookManager = new BookManager();
    private AuthorManager authorManager = new AuthorManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int bookId = Integer.parseInt(req.getParameter("bookId"));
        Book book = bookManager.getById(bookId);
        req.setAttribute("authors",authorManager.getAll());
        req.setAttribute("book", book);
        req.getRequestDispatcher("/WEB-INF/editBook.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
int bookId = Integer.parseInt(req.getParameter("bookId"));
        String title = req.getParameter("title");
        String description = req.getParameter("description");
        double price = Double.parseDouble(req.getParameter("price"));
        int authorId = Integer.parseInt(req.getParameter("authorId"));
        Book book = Book.builder()
                .id(bookId)
                .title(title)
                .description(description)
                .price(price)
                .author(authorManager.getById(authorId))
                .build();
        bookManager.edit(book);
        resp.sendRedirect("/books");
    }
}
