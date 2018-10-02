<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<b>Product Details:</b><br>
		<div class="panel-info">
			<div class="panel panel-heading">${productObj.productname }</div>
			<div class="panel panel-body">
			<table>
			<tr><td><img src="<c:url value='/resources/images/${productObj.id }.png'></c:url>" height="500px" width="650px"></td>
			<tr><td><b>Product Name:</b>${productObj.productname }</td></tr>
			<tr><td><b>Product Desc:</b>${productObj.productdesc }</td></tr>
			<tr><td><b>Price:</b>${productObj.price }</td></tr>
			<tr><td><b>Quantity:</b>${productObj.quantity }</td></tr>
			<tr><td><b>Category:</b>${productObj.category.categoryname }</td></tr>
			</table>
			<c:if test="${productObj.quantity==0 }">
<button class="btn btn-primary btn-lg" disabled>Out Of Stock</button>
</c:if>
			<security:authorize access="hasRole('ROLE_USER')">
			<b>Enter Quantity:</b> <input type="number" min="1" max="${productObj.quantity }" name="requestedQuantity">>
			<button class="btn btn-primary btn-lg" type="submit"><span class="glyphicon glyphicon-shopping-cart" ></span>Add To Cart</button>
			<button class="btn btn-info btn-lg"><span><b>Buy Now</b></span></button>
			</security:authorize>
			<a href="<c:url value='/all/getallproducts'></c:url>"><button class="btn btn-default btn-lg"><span>back</span></button></a>
			</div>
		</div>
	</div>
	
</body>
</html>