<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<form:form method="post" commandName="product">
		<table>
			<form:hidden path="id" />
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
				<td><input type="submit" value="Add product"></td>
				<td><input type="reset" value="reset"></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
