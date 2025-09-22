<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Book Management System</title>
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>
	</head>
	<body>
		<%@page import="java.util.*,com.book.dao.*,com.book.entity.*" %>
		<%
			List<Book> bookList = BookDao.listBooks();
		%>
		<div class="container mt-3">
			<table class="table table-bordered table-hover">
				<thead class="table-success">
					<tr>
						<th>Book Id</th>
						<th>Book Name</th>
						<th>Book Price</th>
					</tr>
				</thead>
				<tbody>
					<%
						for(Book b : bookList)
							out.println("<tr><td>"+b.getBookId()+"</td><td>"+b.getBookName()+"</td><td>"+b.getBookPrice()+"</td></tr>");
					%>
				</tbody>
			</table>
			<ul class="nav">
				<li class="nav-item">
					<a class="nav-link" href="addBook.jsp">Add New Book</a>
				</li>
			</ul>
		</div>
	</body>
</html>