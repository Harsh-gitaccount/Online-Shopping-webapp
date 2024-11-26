 <%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome To Merchant Portal</h1>
<h1>${message}</h1>
<h1><a href="addmerchant">Register</a></h1> <br>
<h1><a href="merchantloginform.jsp">Login</a></h1> <br>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Merchant Portal</title>
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
        <h1>Welcome To Merchant Portal</h1>
        <h2>${message}</h2>
        <h1>
            <a href="addmerchant">
                <img src="https://img.icons8.com/ios-filled/50/ffffff/add-shopping-cart.png" class="icon" alt="Register Icon"/>
                Register
            </a>
        </h1>
        <h1>
            <a href="merchantloginform.jsp">
                <img src="https://img.icons8.com/ios-filled/50/ffffff/login-rounded-right.png" class="icon" alt="Login Icon"/>
                Login
            </a>
        </h1>
    </div>
</body>
</html>
