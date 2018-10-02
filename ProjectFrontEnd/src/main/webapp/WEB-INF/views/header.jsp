<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
      <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

      <meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- JQuery -->
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<link rel="icon" type="image/jpg" href="<c:url value='/resources/images/icon.jpg'></c:url>">
<title>ACRADEX</title>
</head>
<body>
<div class="container">
		<nav class="navbar navbar-inverse">
			<div class="navbar-header">
			
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="navbar-collapse">
			<ul class="nav navbar-nav" id="navbar-list">
			<li><a href="" class="navbar-brand"><img src="<c:url value='/resources/images/icon.jpg"'></c:url>"
					alt="acradex" height="50px" width="50px"></a></li>
				<li><a href="<c:url value='/home'></c:url>">Home</a></li>
                <li><a href="<c:url value='/all/getallproducts'></c:url>">Browse all Products</a>
				<li class=dropdown><a href="" class="dropdown-toggle dropdown-collapse" data-toggle="dropdown">Select by Category<span class="caret caret-collapse"></span></a>
					<ul class="dropdown-menu">
					<c:forEach items="${categories}" var="category" >
					<li><a href="<c:url value='/all/searchByCategory?searchCondition=${category.categoryname}'></c:url>">${category.categoryname}</a>
					</li>
					</c:forEach>
					<li><a href="<c:url value='/all/searchByCategory?searchCondition=All'></c:url>">All</a>
					</li>
					</ul>
					</li>
					<security:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href="<c:url value='/admin/getproductform'></c:url>">Add Product</a></li>
					</security:authorize>
					<c:if test="${pageContext.request.userPrincipal.name==null }">
				<li><a href="<c:url value='/login'></c:url>">Sign In&nbsp;&nbsp;&nbsp;</a></li>
				
				<li><a href="<c:url value='/all/registrationform'></c:url>" class="btn  btn-warning navbar-btn navbar - right"><font color="blue"><b>Register</b></font></a>
				</c:if>
				<li><a href="<c:url value='/aboutus'></c:url>">About Us</a></li>
				<security:authorize access="hasRole('ROLE_USER')">
				 <li><a href="<c:url value='/cart/getcart'></c:url>" class="btn btn-info btn-lg"><span class="glyphicon glyphicon-shopping-cart">(${cartSize })</span><font color="blue"><b> My Cart&nbsp;&nbsp;&nbsp;</b></font></a></li>
				</security:authorize>
				<c:if test="${pageContext.request.userPrincipal.name!=null }">
				<li><a href="#"> Hi ,${pageContext.request.userPrincipal.name }</a></li>
				<li><a href="<c:url value='/j_spring_security_logout'></c:url>">Sign out</a></li>
			    </c:if>
				</ul>
		</div>
		</nav>
		
		</div>
			
			

</body>
</html>