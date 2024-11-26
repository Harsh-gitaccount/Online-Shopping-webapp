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
<h1>Welcome to customer portal</h1>
<h2>${message}</h2>
<a href="addcustomer">Register Customer</a><br>
<a href="customerloginform.jsp">Customer Login</a>
</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Portal</title>
    <style>
        body {
            background-image: url('https://images.pexels.com/photos/1624478/pexels-photo-1624478.jpeg');
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
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white */
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            width: 100%;
        }
        h1 {
            font-size: 2.5em;
            margin-bottom: 20px;
            color: #333; /* Darker text color for contrast */
        }
        a {
            display: inline-block;
            margin: 10px;
            padding: 15px 25px;
            text-decoration: none;
            font-size: 1.2em;
            color: white;
            background-color: rgba(0, 0, 0, 0.7);
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        a:hover {
            background-color: rgba(0, 0, 0, 0.9);
        }
        .icon {
            width: 30px;
            vertical-align: middle;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="overlay">
        <h1>Welcome to Customer Portal</h1>
        <h2>${message}</h2>
        <h1>
            <a href="addcustomer">
                <img src="https://img.icons8.com/ios-filled/50/ffffff/add-user-group-man-man.png" class="icon" alt="Register Customer Icon"/>
                Register Customer
            </a>
        </h1>
        <h1>
            <a href="customerloginform.jsp">
                <img src="https://img.icons8.com/ios-filled/50/ffffff/login-rounded-right.png" class="icon" alt="Customer Login Icon"/>
                Customer Login
            </a>
        </h1>
    </div>
</body>
</html>
