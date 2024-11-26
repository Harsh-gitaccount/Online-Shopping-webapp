 <%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form action="savemerchant" modelAttribute="merchantobj">
 enter name : <form:input path="name"/><br>
 enter mobilenumber : <form:input path="mobilenumber"/><br>
 enter email : <form:input path="email"/><br>
 enter password : <form:input path="password"/><br>
 <input type="submit" >
</form:form>
</body>
</html>  --%>

 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Merchant Registration</title>
    <style>
        body {
            background-image: url('https://images.unsplash.com/photo-1556742031-c6997c6d73e8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&q=80&w=1080'); /* Business-related image */
            background-size: cover;
            font-family: Arial, sans-serif;
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        form {
            background: rgba(0, 0, 0, 0.7);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 4px;
        }
        input[type="submit"] {
            background: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background: #45a049;
        }
    </style>
    <script>
        function validateForm() {
            const name = document.querySelector('input[name="name"]').value;
            const mobile = document.querySelector('input[name="mobilenumber"]').value;
            const email = document.querySelector('input[name="email"]').value;
            const password = document.querySelector('input[name="password"]').value;

            if (!name || !mobile || !email || !password) {
                alert('Please fill all fields');
                return false;
            }
            // Additional validation can be added here
            return true;
        }
    </script>
</head>
<body>
    <form:form action="savemerchant" modelAttribute="merchantobj" onsubmit="return validateForm();">
        <label for="name">Enter Name:</label>
        <form:input path="name" /><br>
        
        <label for="mobilenumber">Enter Mobile Number:</label>
        <form:input path="mobilenumber" /><br>
        
        <label for="email">Enter Email:</label>
        <form:input path="email" /><br>
        
        <label for="password">Enter Password:</label>
        <form:input path="password" type="password" /><br>
        
        <input type="submit" value="Submit">
    </form:form>
</body>
</html>  


