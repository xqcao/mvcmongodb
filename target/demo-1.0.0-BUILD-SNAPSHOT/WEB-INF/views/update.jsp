<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form method="post" commandName="product">
		<table>
			<tr>
				<td>Enter the name of the product</td>
				<td><form:input path="productName" /></td>
			</tr>
			<tr>
				<td>Enter the price</td>
				<td><form:input path="price" /></td>
			</tr>
			<tr>
				<td>Enter the unit of Measure</td>
				<td><form:input path="uom" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Update product"></td>
				<td><input type="reset" value="reset"></td>
			</tr>
		</table>
	</form:form>
</body>
</html>