<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Page</title>
<style type="text/css">
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    #box {
        width: 50%;
        margin: 50px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h3 {
        color: #333;
        text-align: center;
    }
    form {
        text-align: center;
    }
    table {
        margin: 0 auto;
    }
    .label {
        font-weight: bold;
        padding-right: 10px;
        color: #333;
    }
    .input {
        padding: 8px;
        border-radius: 5px;
        border: 1px solid #ccc;
        width: 250px;
    }
    #button {
        padding: 10px 20px;
        border-radius: 5px;
        border: none;
        background-color: #ff6347; /* Red color */
        color: #fff;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    #button:hover {
        background-color: #cc4125; /* Darker red on hover */
    }
    a {
        color: #007bff; /* Blue color for links */
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<div id="box">
    <h3>Add Car Details</h3>
    <form action="add_car" method="post">
        <table>
            <tr>
                <td class="label">Name</td>
                <td><input class="input" type="text" name="name" required="required" autofocus="autofocus"></td>
            </tr>
            <tr>
                <td class="label">Brand</td>
                <td><input class="input" type="text" name="brand" required="required"></td>
            </tr>
            <tr>
                <td class="label">Price</td>
                <td><input class="input" type="text" name="price" required="required"></td>
            </tr>
        </table>
        <input id="button" type="submit" value="ADD">
    </form>
    <h3>Do you want to go to <a href="home">Home Page</a>?</h3>
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
	%>
</body>
</html>