<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Navigation Page</title>
<style type="text/css">
#box {
    background-color: #ffffff;
    width: 100%;
    padding: 10px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

nav {
    text-align: center;
}

nav a {
    display: inline-block;
    margin: 0 10px;
    padding: 10px 20px;
    color: #333333;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

nav a:hover {
    background-color: #f0f0f0;
}

nav a.active {
    background-color: #4CAF50;
    color: white;
}

@media screen and (max-width: 768px) {
    nav a {
        display: block;
        margin: 5px auto;
    }
}

</style>
</head>
<body>
	<div id="box" align="center">
		<nav>
			<a href="add_page">ADD</a> <a href="cars">All CARS</a> <a
				href="my_cars">MY CARS</a> <a href="sign_out">SIGN OUT</a> <a
				href="delete_user">DELETE ACCOUNT</a>
		</nav>
	</div>
</body>
</html>