<%-- <%@page import="com.jsp.shopping.dto.Item"%>
<%@page import="com.jsp.shoppingcart.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Item> items = (List<Item>) request.getAttribute("itemlist");
	double totalprice=(double)request.getAttribute("totalprice");
	%>
	
	<table cellPadding="2px" border="1">
		<th>Brand</th>
		<th>Model</th>
		<th>Category</th>
		<th>Price</th>
		<th>Quantity</th>
		
		<%
		for(Item i:items){
		%>
<tr>
			<td><%=i.getBrand() %></td>
			<td><%=i.getModel() %></td>
			<td><%=i.getCategory() %></td>
			<td><%=i.getPrice() %></td>
			<td><%=i.getQuantity() %></td>
		</tr>
		<%} %>
	</table>
	<h2>Total Price : <%= totalprice %></h2>
	<br>
	<a href="addorder">Buy Now</a>
</body>
</html> --%>

<%@page import="com.jsp.shopping.dto.Item"%>
<%@page import="com.jsp.shoppingcart.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shopping Cart</title>
    <style>
        body {
            background-image: url('https://images.pexels.com/photos/3184418/pexels-photo-3184418.jpeg'); /* Background image */
            background-size: cover;
            font-family: Arial, sans-serif;
            color: #333;
            margin: 0;
            padding: 20px;
            text-align: center;
        }
        table {
            margin: 0 auto; /* Center the table */
            border-collapse: collapse;
            width: 80%; /* Make the table wider */
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background for the table */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2); /* Shadow effect */
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px; /* Padding inside table cells */
            text-align: left;
        }
        th {
            background-color: #4CAF50; /* Header background color */
            color: white; /* Header text color */
        }
        tr:hover {
            background-color: #f5f5f5; /* Change background color on hover */
        }
        h2 {
            color: #fff; /* Total price text color */
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
    List<Item> items = (List<Item>) request.getAttribute("itemlist");
    Double totalPriceObj = (Double) request.getAttribute("totalprice"); // Use Double wrapper class
    double totalprice = (totalPriceObj != null) ? totalPriceObj : 0.0; // Fallback to 0 if null
    %>

    <h1 style="color: #fff;">Your Shopping Cart</h1>
    <table cellpadding="10">
        <thead>
            <tr>
                <th>Brand</th>
                <th>Model</th>
                <th>Category</th>
                <th>Price</th>
                <th>Quantity</th>
            </tr>
        </thead>
        <tbody>
            <%
            if (items != null) {
                for (Item i : items) {
            %>
            <tr>
                <td><%= i.getBrand() %></td>
                <td><%= i.getModel() %></td>
                <td><%= i.getCategory() %></td>
                <td><%= i.getPrice() %></td>
                <td><%= i.getQuantity() %></td>
            </tr>
            <%
                }
            } else {
            %>
            <tr>
                <td colspan="5">No items in cart.</td>
            </tr>
            <%
            }
            %>
        </tbody>
    </table>
    <h2>Total Price: $<%= totalprice %></h2>
    <br>
    <a href="addorder">Buy Now</a>
</body>
</html>
