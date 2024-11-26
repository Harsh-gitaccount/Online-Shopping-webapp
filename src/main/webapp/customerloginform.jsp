<%--  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style=color:red> ${msg}</h1>

<form action="customerlogin" method="post">
enter email :  <input type="email" name="email"> <br>
enter password : <input type="password" name="password"> <br>
<input type="submit" value="login">

</form>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Login</title>
    <style>
        body {
            background-image: url('https://images.pexels.com/photos/3184295/pexels-photo-3184295.jpeg'); /* Background image */
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
            max-width: 400px;
            width: 100%;
        }
        h1 {
            font-size: 2.5em;
            color: red; /* Red color for the message */
            margin-bottom: 20px;
        }
        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="overlay">
        <h1>Welcome</h1> <!-- Displaying message -->
        <form action="customerlogin" method="post">
            Enter Email: <input type="email" name="email" required> <br>
            Enter Password: <input type="password" name="password" required> <br>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>


