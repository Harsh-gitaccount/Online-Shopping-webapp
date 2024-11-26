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
<h1>Welcome To MainMenu</h1>
<h2>${message}</h2>
<a href="menu.jsp">Merchant</a>
<a href="CustomerMenu.jsp">Customer</a>
</body>
</html> --%>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main Menu</title>
    
    <!-- External Fonts and Icons (Optional) -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
         body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            background: linear-gradient(135deg, rgba(52, 152, 219, 0.8), rgba(46, 204, 113, 0.8)), url('https://via.placeholder.com/1920x1080') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
        }

        /* Semi-transparent background for content container */
        .container {
            max-width: 800px;
            margin: 100px auto;
            padding: 40px;
            text-align: center;
            background-color: rgba(255, 255, 255, 0.85);
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 3rem;
            color: #2c3e50;
        }

        h2 {
            font-size: 2rem;
            color: #16a085;
            margin-bottom: 40px;
        }

        .menu {
            display: flex;
            justify-content: center;
            gap: 30px;
            margin-top: 20px;
        }

        .menu a {
            text-decoration: none;
            font-size: 1.2rem;
            padding: 12px 25px;
            background-color: #3498db;
            color: white;
            border-radius: 4px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .menu a:hover {
            background-color: #2980b9;
            transform: translateY(-3px);
        }

        .menu a:active {
            background-color: #1e6091;
        }

        /* Media Queries for Responsiveness */
        @media (max-width: 768px) {
            h1 {
                font-size: 2rem;
            }

            h2 {
                font-size: 1.5rem;
            }

            .menu {
                flex-direction: column;
                gap: 15px;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Welcome To Main Menu</h1>
    <h2>${message}</h2>
    
    <div class="menu">
        <a href="menu.jsp">Merchant</a>
        <a href="CustomerMenu.jsp">Customer</a>
    </div>
</div>

<!-- Optional JS Interactivity (For Button Click Effects or Animations) -->
<script>
    document.querySelectorAll('.menu a').forEach(link => {
        link.addEventListener('click', (e) => {
            e.preventDefault();
            alert('Navigating to: ' + link.textContent);
            setTimeout(() => {
                window.location.href = link.href;
            }, 500); // Delay to simulate effect
        });
    });
</script>

</body>
</html>
