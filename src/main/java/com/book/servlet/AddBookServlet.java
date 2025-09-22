package com.book.servlet;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.book.entity.Book;
import com.book.utility.HibernateUtil;

@WebServlet("/AddBookServlet")
public class AddBookServlet extends HttpServlet {




	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
	            int id = Integer.parseInt(request.getParameter("bookId"));
	            String name = request.getParameter("bookName");
	            double price = Double.parseDouble(request.getParameter("bookPrice"));

	            // Hibernate save
	            SessionFactory factory = HibernateUtil.getSessionFactory();
	            Session session = factory.openSession();
	            Transaction tx = session.beginTransaction();

	            Book book = new Book();
	            book.setBookId(id);
	            book.setBookName(name);
	            book.setBookPrice((int) price);

	            session.save(book);
	            tx.commit();
	            session.close();

	            // Redirect to confirmation page
	            response.sendRedirect("success.jsp");

	        } catch (Exception e) {
	            e.printStackTrace();
	            response.getWriter().println("Error: " + e.getMessage());
	        }
	    }
	}


