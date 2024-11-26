<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
<form:form action="saveproduct" modelAttribute="productobj">
Enter brand: <form:input path="brand"/> <br>
Enter model: <form:input path="model"/> <br>
Enter category: <form:input path="category"/> <br>
Enter price: <form:input path="price"/> <br>
Enter stock: <form:input path="stock"/> <br>
 <input type="submit">
</form:form>
</body>
</body>
</html> --%> 


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Product</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9; /* Light grey background for the entire page */
            margin: 0;
            padding: 0;
        }

        .form-container {
            width: 50%;
            margin: 100px auto;
            background-color: white; /* Solid white background for the form */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Add New Product</h2>
        <form:form action="saveproduct" modelAttribute="productobj">
            <label for="brand">Enter brand:</label>
            <form:input path="brand" id="brand"/> <br>
            
            <label for="model">Enter model:</label>
            <form:input path="model" id="model"/> <br>
            
            <label for="category">Enter category:</label>
            <form:input path="category" id="category"/> <br>
            
            <label for="price">Enter price:</label>
            <form:input path="price" id="price"/> <br>
            
            <label for="stock">Enter stock:</label>
            <form:input path="stock" id="stock"/> <br>
            
            <input type="submit" value="Save Product">
        </form:form>
    </div>
</body>
</html>
