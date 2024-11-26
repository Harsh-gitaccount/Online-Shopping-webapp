<%-- <%@page import="com.jsp.shopping.dto.Merchant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% Merchant m=(Merchant) session.getAttribute("merchantinfo"); %>
<% if(m!=null){ %>
<h1> style="color:red;"> ${msg}</h1>
<h1><a href="addproduct">Add Product</a></h1>
<h1><a href="viewallproducts.jsp">View Product</a></h1>
<% }
else {%>	

<h1> <a href="merchantloginform.jsp">Please login first</a>
<%} %>
</h1>
</body>
</html> --%> 

<%@ page import="com.jsp.shopping.dto.Merchant" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Merchant Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 300px;
        }
        h1 {
            color: red;
            margin-bottom: 20px;
        }
        a {
            display: block;
            margin: 10px 0;
            text-decoration: none;
            color: #007BFF;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <% Merchant m = (Merchant) session.getAttribute("merchantinfo"); %>
        <% if (m != null) { %>
            <h1>${msg}</h1>
            <h1><a href="addproduct">Add Product</a></h1>
            <h1><a href="viewallproducts.jsp">View Product</a></h1>
        <% } else { %>
            <h1><a href="merchantloginform.jsp">Please login first</a></h1>
        <% } %>
    </div>
</body>
</html>
