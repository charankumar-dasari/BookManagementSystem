<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Added</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
            text-align: center;
            margin-top: 100px;
        }
        .container {
            background: #fff;
            padding: 20px 40px;
            border-radius: 10px;
            display: inline-block;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }
        h2 { color: green; }
        a, button {
            margin-top: 20px;
            display: inline-block;
            padding: 10px 20px;
            background: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        a:hover, button:hover { background: #0056b3; }
    </style>
</head>
<body>
    <div class="container">
        <h2>✅ Book added successfully!</h2>
        <p>Would you like to view all books?</p>
        <a href="DisplayBooks.jsp">📖 Display Books</a>
         <a href="addBook.jsp">📖 Add Books</a>
        
    </div>
</body>
</html>
