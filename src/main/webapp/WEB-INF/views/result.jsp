<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>ID</td>
			<td>${product.id}</td>
		</tr>
		<tr>
			<td>Name of Product</td>
			<td>${product.productName}</td>
		</tr>
		<tr>
			<td>Price</td>
			<td>${product.price}</td>
		</tr>
		<tr>
			<td>Unit of measure</td>
			<td>${product.uom}</td>
		</tr>
		<tr>
			<td><a href="update?id=${product.id}">Update</a></td>
		</tr>
	</table>
</body>
</html>