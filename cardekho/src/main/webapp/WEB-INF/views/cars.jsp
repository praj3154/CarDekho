<%@page import="com.jspiders.springmvc.dto.CarDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Cars Page</title>
<style type="text/css">
body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    margin: 0;
    padding: 0;
}

#box {
    background-color: #ffffff;
    width: 300px;
    margin: 50px auto;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
    display: block;
    margin-bottom: 5px;
    color: #333333;
}

input[type="text"] {
    width: calc(100% - 10px);
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #cccccc;
    border-radius: 5px;
}

#button {
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    border: none;
    color: white;
    border-radius: 5px;
    cursor: pointer;
}

#button:hover {
    background-color: #45a049;
}

#message {
    color: #FF0000;
    text-align: center;
    margin-top: 10px;
}

#table {
    border-collapse: collapse;
    width: 80%;
    margin: 20px auto;
}

.head {
    background-color: #333333;
    color: #ffffff;
    padding: 10px;
}

.data {
    border: 1px solid #cccccc;
    padding: 8px;
}

.data:nth-child(even) {
    background-color: #f2f2f2;
}

a {
    color: #007bff;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

</style>
</head>
<body>
	<div id="box">
		<form action="search" method="post">
			<label>Low price</label> <input type="text" name="low"
				required="required"> <label>High price</label> <input
				type="text" name="high" required="required"> <input
				id="button" type="submit" value="SEARCH">
		</form>
	</div>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h3 id="message"><%=message%></h3>
	</div>
	<%
	}
	@SuppressWarnings("unchecked")
	List<CarDTO> cars = (List<CarDTO>) request.getAttribute("cars");
	if (cars != null) {
	%>
	<div align="center">
		<table id="table">
			<tr>
				<td class="head">Id</td>
				<td class="head">Name</td>
				<td class="head">Brand</td>
				<td class="head">Price</td>
			</tr>
			<%
			for (CarDTO car : cars) {
			%>
			<tr>
				<td class="data"><%=car.getId()%></td>
				<td class="data"><%=car.getName()%></td>
				<td class="data"><%=car.getBrand()%></td>
				<td class="data"><%=car.getPrice()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<%
	}
	%>
	<div align="center">
		<h3>
			Do you want to go to <a href="home">Home Page</a> ?
		</h3>
	</div>
</body>
</html>