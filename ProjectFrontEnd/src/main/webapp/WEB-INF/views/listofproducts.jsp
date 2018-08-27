<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
 $(document).ready(function(){
	$('.table').DataTable()
})


</script>


</head>
<body>

	<div class="container">
		<b>List of Products</b>
		<form:form modelAttribute="product" action="${url }" method="post" enctype="mutlipart/form-data">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Id</th>
					<th>Product Name</th>
					<th>Price</th>
					<th>Category</th>
					<th>image</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<!-- For each object in the list, tr has to be repeated -->
				<!--  items refers to the collection of objects -->
				<!-- var is local variable ,takes objects one by one from the collection -->
				<c:forEach var="p" items="${productsList }">
					<tr >
						<td><a
							href="<c:url value='/all/getproduct/${p.id }'></c:url>">${p.id }</a></td>
						<td><a
							href="<c:url value='/all/getproduct/${p.id }'></c:url>">${p.productname }</a></td>
						<td>${p.price }</td>
						<td>${p.category.categoryname }</td>
						<td><img src='<c:url value="/resources/images/${p.id }.png"></c:url>' height="75px" width="75px"></td>
						<td>
						<a href="<c:url value='/all/getproduct/${p.id }'></c:url>">
							<span
								class="glyphicon glyphicon-info-sign"></span></a> 
								<a href="<c:url value='/admin/deleteproduct/${p.id }'></c:url>"><span
								class="glyphicon glyphicon-trash"></span></a> 
								
								<a href="<c:url value='/admin/getupdateform/${p.id }'></c:url>"><span
								class="glyphicon glyphicon-pencil"></span></a></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
</form:form>
	</div>
</body>
</html>