<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up Page</title>
<style type="text/css">
#box {
    background-color: #ffffff;
    width: 300px;
    margin: 50px auto;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

#head {
    color: #333333;
    text-align: center;
}

label {
    display: block;
    margin-bottom: 5px;
    color: #333333;
}

.input {
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

h3 {
    margin-top: 20px;
    text-align: center;
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
	<div id="box" align="center">
		<h3 id="head">Sign Up</h3>
		<form action="add_user" method="post">
			<table>
				<tr>
					<td class="label">Email</td>
					<td><input class="input" type="text" name="email"
						required="required" autofocus="autofocus"></td>
				</tr>
				<tr>
					<td class="label">Password</td>
					<td><input class="input" type="text" name="password"
						required="required"></td>
				</tr>
			</table>
			<input id="button" type="submit" value="Sign Up">
		</form>
		<h3>
			Do you want to <a href="sign_in">Sign in</a> ?
		</h3>
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