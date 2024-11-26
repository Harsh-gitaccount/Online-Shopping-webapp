<%-- <%@page import="com.jsp.shopping.dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Product> prod = (List<Product>) request.getAttribute("productlist");
	%>
	<h1><a href="fetchitemsfromcart">View Cart</a></h1>
	<table cellpadding="20px" border="1">
		<tr>
			<th>Brand</th>
			<th>Category</th>
			<th>Model</th>
			<th>Price</th>
			<th>Add To Cart</th>
		</tr>
		<%
		for (Product p : prod) {
		%>
		<tr>
			<td><%=p.getBrand()%></td>
			<td><%=p.getCategory()%></td>
			<td><%=p.getModel()%></td>
			<td><%=p.getPrice()%></td>
			<td><a href="additem?id=<%=p.getId()%>">Add</a></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>  --%>



<%@page import="com.jsp.shopping.dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-top: 20px;
        }

        a {
            text-decoration: none;
            color: white;
            background-color: #4CAF50;
            padding: 10px 20px;
            border-radius: 5px;
            display: inline-block;
        }

        a:hover {
            background-color: #45a049;
        }

        .container {
            width: 80%;
            margin: 50px auto;
            background-color: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 15px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        td {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .add-to-cart {
            text-decoration: none;
            color: white;
            background-color: #2196F3;
            padding: 8px 15px;
            border-radius: 5px;
        }

        .add-to-cart:hover {
            background-color: #0b7dda;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1><a href="fetchitemsfromcart">View Cart</a></h1>
        <%
        List<Product> prod = (List<Product>) request.getAttribute("productlist");
        %>
        <table>
            <thead>
                <tr>
                    <th>Brand</th>
                    <th>Category</th>
                    <th>Model</th>
                    <th>Price</th>
                    <th>Add To Cart</th>
                </tr>
            </thead>
            <tbody>
                <%
                for (Product p : prod) {
                %>
                <tr>
                    <td><%=p.getBrand()%></td>
                    <td><%=p.getCategory()%></td>
                    <td><%=p.getModel()%></td>
                    <td><%=p.getPrice()%></td>
                    <td><a class="add-to-cart" href="additem?id=<%=p.getId()%>">Add</a></td>
                </tr>
                <%
                }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>


