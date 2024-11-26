<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="displayproductsbybrand">
Enter brand : <input type="text" name="brand">
   <input type="submit" value="search">
 </form>
</body>
</html> --%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Brand Search</title>
    <style>
        body {
            background-image: url('https://cdn.pixabay.com/photo/2016/11/29/02/12/landscape-1867286_1280.jpg');
            background-color: #f0f0f0; /* Fallback background color */
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
            background-color: rgba(0, 0, 0, 0.75);
            padding: 20px;
            border-radius: 10px;
            width: 300px;
            text-align: center;
            color: white;
        }
        input[type="text"], input[type="submit"] {
            padding: 10px;
            margin: 10px 0;
            width: 100%;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            border: none;
            color: white;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Search by Brand</h1>
        <form action="displayproductsbybrand">
            <label for="brand">Enter Brand:</label><br>
            <input type="text" name="brand" id="brand" required><br>
            <input type="submit" value="Search">
        </form>
    </div>
</body>
</html>
