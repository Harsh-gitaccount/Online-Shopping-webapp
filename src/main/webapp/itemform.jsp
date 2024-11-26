<%-- <%@page import="com.jsp.shopping.dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% Product p=(Product)request.getAttribute("prodobj"); %>
<form action="additemtocart">
 <input type="hidden" name="id" value=<%= p.getId() %> readonly="true"> <br>
Brand : <input type="text" name="brand" value=<%= p.getBrand()%> readonly="true"> <br>
Model : <input type="text" name="model" value=<%= p.getModel()%> readonly="true"> <br>
Category : <input type="text" name="category" value=<%= p.getCategory()%> readonly="true"> <br>
Price : <input type="number" name="price" value=<%= p.getPrice()%> readonly="true"> <br>
Quantity : <input type"number" name="quantity"> <br>
<input type="submit" value="Add To Cart">
</form>
</body>
</html> --%>

<%@page import="com.jsp.shopping.dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Details</title>
    <style>
        body {
            background-image: url('https://images.pexels.com/photos/1021040/pexels-photo-1021040.jpeg');
            background-size: cover;
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .overlay {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white */
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            width: 100%;
        }
        h1 {
            font-size: 2em;
            margin-bottom: 20px;
            color: #333; /* Darker text color for contrast */
        }
        label {
            font-size: 1.2em;
            color: #555;
            display: block;
            margin: 10px 0 5px;
        }
        input[type="text"],
        input[type="number"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            padding: 10px 15px;
            font-size: 1.2em;
            color: white;
            background-color: #007BFF;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="overlay">
        <% 
        Product p = (Product) request.getAttribute("prodobj"); 
        if (p == null) {
            out.println("<h2>Product not found!</h2>");
            return; // Exit if product is not found
        }
        %>
        <form action="additemtocart" method="post">
            <input type="hidden" name="id" value="<%= p.getId() %>" readonly="true"> 
            <label>Brand:</label>
            <input type="text" name="brand" value="<%= p.getBrand() %>" readonly="true"> 
            <label>Model:</label>
            <input type="text" name="model" value="<%= p.getModel() %>" readonly="true"> 
            <label>Category:</label>
            <input type="text" name="category" value="<%= p.getCategory() %>" readonly="true"> 
            <label>Price:</label>
            <input type="number" name="price" value="<%= p.getPrice() %>" readonly="true"> 
            <label>Quantity:</label>
            <input type="number" name="quantity"> 
            <input type="submit" value="Add To Cart">
        </form>
    </div>
</body>
</html>
