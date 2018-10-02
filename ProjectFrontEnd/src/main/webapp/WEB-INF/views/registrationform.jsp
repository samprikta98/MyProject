<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#button{
padding:10px;

font-color:black;
font-size:20px;
align:"middle";
font-weight:bolder;
}
#button:hover:
{
background-color:green;
}
</style>
<link href="<c:url value='/resources/css/registration.css'></c:url>" rel="stylesheet">
<script type="text/javascript"
src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script type="text/javascript">

function fillShippingAddress(form){
	if(form.shippingaddressform.checked==true){
		form["shippingaddress.apartmentnumber"].value=form["billingaddress.apartmentnumber"].value;
		form["shippingaddress.streetname"].value=form["billingaddress.streetname"].value;
		form["shippingaddress.city"].value=form["billingaddress.city"].value;
		form["shippingaddress.state"].value=form["billingaddress.state"].value;
		form["shippingaddress.country"].value=form["billingaddress.country"].value;
		form["shippingaddress.zipcode"].value=form["billingaddress.zipcode"].value;
	}
	if(form.shippingaddressform.checked==false){
		form["shippingaddress.apartmentnumber"].value=""
		form["shippingaddress.streetname"].value=""
		form["shippingaddress.city"].value=""
		form["shippingaddress.state"].value=""
		form["shippingaddress.country"].value=""
		form["shippingaddress.zipcode"].value=""
}
}
$(document).ready(function(){
	$('#form').validate({
	rules:{
		firstname:{required:true},
		lastname:{required:true},
		phonenumber:{required:true,number:true,minlength:10,maxlength:10},
		"user.email":{required:true,email:true},
		"user.password":{required:true,minlength:5,maxlength:10},
		"billingaddress.apartmentnumber":{required:true},
		"billingaddress.streetname":{required:true},
		"billingaddress.state":{required:true},
		"billingaddress.city":{required:true},
		"billingaddress.country":{required:true},
		"billingaddress.zipcode":{required:true,number:true}
	},
	messages:{
		firstname:{required:"Firstname is mandatory"},
		phonenumber:{required:"Phonenumber is required"},
		"user.email":{required:"Email is required",email:"Please enter a valid email"}
		
	}
	})
})

</script>
</head>
<body>
<div class="container">
<c:url value="/all/registercustomer" var="url"></c:url>
<form:form modelAttribute="customer" action="${url }" id="form">
<form:hidden path="id"/>
<form:label path="firstname">Enter First Name:</form:label>
<form:input path="firstname" id="firstname"/>

<form:label path="lastname">Enter Last Name:</form:label>
<form:input path="lastname" id="lastname"/>

<form:label path="phonenumber">Contact no?</form:label>
<form:input path="phonenumber" id="phonenumber"/>

<hr>
<b>Login Credentials</b><br>

<form:label path="user.email">Enter Email:</form:label>
<form:input path="user.email" id="user.email" type="email"/>
<span style="color:red">${error }</span>
<form:label path="user.password">Enter Password:</form:label>
<form:input path="user.password" id="user.password" type="password"/>


<hr>
<b>Billing Address</b>
<form:label path="billingaddress.apartmentnumber">Enter Apartment Number:</form:label>
<form:input path="billingaddress.apartmentnumber" id="billingaddress.apartmentnumber"/>

<form:label path="billingaddress.streetname">Enter Street Name:</form:label>
<form:input path="billingaddress.streetname" id="billingaddress.streetname"/>

<form:label path="billingaddress.city">Enter City:</form:label>
<form:input path="billingaddress.city" id="billingaddress.city"/>

<form:label path="billingaddress.state">Enter State:</form:label>
<form:input path="billingaddress.state" id="billingaddress.state"/>

<form:label path="billingaddress.country">Enter Country:</form:label>
<form:input path="billingaddress.country" id="billingaddress.country"/>

<form:label path="billingaddress.zipcode">Enter Zipcode:</form:label>
<form:input path="billingaddress.zipcode" id="billingaddress.zipcode"/>

<hr>
<b>Shipping address</b>
<br>
<align="center">Check this if shipping address is same as billing address</align>
<input type="checkbox" onclick="fillShippingAddress(this.form)" id="shippingaddressform">
<form:label path="shippingaddress.apartmentnumber">Enter Apartment Number:</form:label>
<form:input path="shippingaddress.apartmentnumber" id="shippingaddress.apartmentnumber"/>

<form:label path="shippingaddress.streetname">Enter Street Name:</form:label>
<form:input path="shippingaddress.streetname" id="shippingaddress.streetname"/>

<form:label path="shippingaddress.city">Enter City:</form:label>
<form:input path="shippingaddress.city" id="shippingaddress.city"/>

<form:label path="shippingaddress.state">Enter State:</form:label>
<form:input path="shippingaddress.state" id="shippingaddress.state"/>

<form:label path="shippingaddress.country">Enter Country:</form:label>
<form:input path="shippingaddress.country" id="shippingaddress.country"/>

<form:label path="shippingaddress.zipcode">Enter Zipcode:</form:label>
<form:input path="shippingaddress.zipcode" id="shippingaddress.zipcode"/>
<br>
<input type="submit" value="Register" style="background-color:maroon;">

</form:form>
</div>

</body>
</html>