<%--  <%@page import="com.jsp.shopping.dto.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.shopping.dto.Merchant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% Merchant merchant=(Merchant)session.getAttribute("merchantinfo") ;
List<Product> products=merchant.getProducts();
%>
<table cellpadding="20px" border="1" >
<th>id</th>
<th>brand</th>
<th>model</th>
<th>category</th>
<th>price</th>
<th>stock</th>
<th>update</th>
<th>delete</th>
<%
for(Product p: products){
%>
<tr>
<td> <%= p.getId() %></td>
<td> <%= p.getBrand() %></td>
<td> <%= p.getModel() %></td>
<td> <%= p.getCategory() %></td>
<td> <%= p.getPrice() %></td>
<td> <%= p.getStock() %></td>
<td><a href="updateproduct">update</a></td>
<td><a href="deleteproduct?id=<%=p.getId()%>">delete</a></td>

</tr>
<% } %>
</table>
</body>
</html>  --%>

<%@page import="com.jsp.shopping.dto.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.shopping.dto.Merchant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://cdn.pixabay.com/photo/2016/11/19/14/00/shopping-cart-1834599_1280.jpg'); /* Relevant shopping cart image */
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
        }

        table {
            width: 80%;
            margin: 50px auto;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.9); /* Adding some transparency */
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
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        a {
            text-decoration: none;
            color: #4CAF50;
            font-weight: bold;
        }

        a:hover {
            color: #ff5722;
        }

        h1 {
            text-align: center;
            color: #fff;
            padding: 20px;
        }
    </style>
    <script>
        function confirmDelete(productId) {
            if (confirm("Are you sure you want to delete this product?")) {
                window.location.href = "deleteproduct?id=" + productId;
            }
        }
    </script>
</head>
<body>
    <h1>Manage Your Products</h1>
    
    <% Merchant merchant = (Merchant)session.getAttribute("merchantinfo");
       List<Product> products = merchant.getProducts();
    %>
    
    <table cellpadding="20px" border="1">
        <thead>
            <tr>
                <th>Id</th>
                <th>Brand</th>
                <th>Model</th>
                <th>Category</th>
                <th>Price</th>
                <th>Stock</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <% for (Product p : products) { %>
            <tr>
                <td><%= p.getId() %></td>
                <td><%= p.getBrand() %></td>
                <td><%= p.getModel() %></td>
                <td><%= p.getCategory() %></td>
                <td><%= p.getPrice() %></td>
                <td><%= p.getStock() %></td>
                <td><a href="updateproduct">Update</a></td>
                <td><a href="javascript:confirmDelete(<%= p.getId() %>)">Delete</a></td>
            </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>
