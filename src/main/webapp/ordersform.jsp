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
<form:form action="saveorder" modelAttribute="ordersobj">
Enter name : <form:input path="name"/>
Enter address : <form:input path="address"/>
Enter MobileNumber : <form:input path="mobilenumber"/>
<input type="submit">
</form:form>
</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Place Order</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .form-container {
            width: 50%;
            margin: 100px auto;
            background-color: white;
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
            color: #333;
        }

        input[type="text"], input[type="tel"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
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

        .form-group {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Place Your Order</h2>
        <form:form action="saveorder" modelAttribute="ordersobj">
            <div class="form-group">
                <label for="name">Enter Name:</label>
                <form:input path="name" id="name" type="text" />
            </div>
            
            <div class="form-group">
                <label for="address">Enter Address:</label>
                <form:input path="address" id="address" type="text" />
            </div>
            
            <div class="form-group">
                <label for="mobilenumber">Enter Mobile Number:</label>
                <form:input path="mobilenumber" id="mobilenumber" type="tel" />
            </div>

            <input type="submit" value="Place Order">
        </form:form>
    </div>
</body>
</html>
