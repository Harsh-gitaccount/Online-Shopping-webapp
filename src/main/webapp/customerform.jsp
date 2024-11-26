<%--  <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Register Here</h1>
	<form:form action="savecustomer" modelAttribute="customerob">
 enter name : <form:input path="name" />
		<br>
 enter address : <form:input path="address" />
		<br>
 enter mobilenumber : 
			<form:input path="mobilenumber" />

		<br>
 enter email : <form:input path="email" />
		<br>
 enter password : <form:input path="password" />
		<br>
		<input type="submit">
	</form:form>
</body>
</html>   --%>




<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Registration</title>
    <style>
        body {
            background-image: url('https://cdn.pixabay.com/photo/2016/11/29/02/12/landscape-1867286_1280.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: Arial, sans-serif;
        }
        .form-container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            width: 300px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        input[type="text"], input[type="email"], input[type="password"] {
            padding: 10px;
            margin: 10px 0;
            width: 100%;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            padding: 10px;
            background-color: #4CAF50;
            border: none;
            color: white;
            cursor: pointer;
            border-radius: 5px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        h1 {
            color: #333;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Register Here</h1>
        <form:form action="savecustomer" modelAttribute="customerob">
            Enter Name: <form:input path="name" /><br>
            Enter Address: <form:input path="address" /><br>
            Enter Mobile Number: <form:input path="mobilenumber" /><br>
            Enter Email: <form:input path="email" /><br>
            Enter Password: <form:input path="password" /><br>
            <input type="submit" value="Register">
        </form:form>
    </div>
</body>
</html>
