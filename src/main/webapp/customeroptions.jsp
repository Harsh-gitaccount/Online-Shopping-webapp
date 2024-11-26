<%-- <%@page import="com.jsp.shopping.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Customer c = (Customer) session.getAttribute("customerinfo");
	%>
	<%
	if (c != null) {
	%>
	<h1 style="color:green;">${msgg}</h1>
	<h1>
		<a href="displayproducts">Display All Product</a>
	</h1>
	<h1>
		<a href="readbrandfromcustomer.jsp">Display Product By Brand</a>
	</h1>
	<%
	} else {
	%>
	<h1>
		<a href="customerloginform.jsp">Login Here First</a>
	</h1>
	<%
	}
	%>
</body>
</html> --%>


<%@page import="com.jsp.shopping.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Dashboard</title>
    <style>
        body {
            background-image: url('https://images.pexels.com/photos/3184298/pexels-photo-3184298.jpeg'); /* Background image */
            background-size: cover;
            font-family: Arial, sans-serif;
            color: #333;
            margin: 0;
            padding: 20px;
            text-align: center;
        }
        h1 {
            color: #fff; /* White text for headers */
        }
        a {
            text-decoration: none;
            color: #4CAF50; /* Link color */
            padding: 10px 15px;
            border: 2px solid #4CAF50;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }
        a:hover {
            background-color: #4CAF50; /* Change background on hover */
            color: white; /* Change text color on hover */
        }
    </style>
</head>
<body>
    <%
    Customer c = (Customer) session.getAttribute("customerinfo");
    if (c != null) {
    %>
        <h1 style="color: green;">Welcome, <%= c.getName() %>!</h1> <!-- Display customer's name -->
        <h1><a href="displayproducts">Display All Products</a></h1>
        <h1><a href="readbrandfromcustomer.jsp">Display Product By Brand</a></h1>
    <%
    } else {
    %>
        <h1><a href="customerloginform.jsp">Login Here First</a></h1>
    <%
    }
    %>
</body>
</html>
