package com.book.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.SelectionQuery;

import com.book.entity.Book;
import com.book.utility.HibernateUtil;

public class BookDao {

	public static void saveBook(Book book)
	{
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.persist(book);//insert into book values (?,?,?)
		tx.commit();
		session.close();
	}
	public static List<Book> listBooks()
	{
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		SelectionQuery<Book> query = session.createSelectionQuery("from Book",Book.class);
		List<Book> bookList = query.list();
		return bookList;
	}

}
