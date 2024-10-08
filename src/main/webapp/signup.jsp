<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allcss.jsp" %>

</head>
<body>
<%@include file="component/navbar.jsp" %>
<div class="container p-5">

<div class="row">

<div class="col-md-4 offset-nd-4">
 <div class="card paint-cord">

<div class="cord-body"> 
<p class="fs-4 text-center">User Register</p>
<c:if test="${not empty sucMsg }">

<P class="text-center text-success f3-3">${suuMsg}</P>
<c:remove var="sucMsg" scope="session"/>
</c:if>

<c:if test="${not empty errorMsg }">

<P class="text-center text-danger f3-3">${errorMsg}</P>
<c:remove var="errorMsg" scope="session"/>
</c:if>


<form action="user_register" method="post">
<div class="mb-3">

<label class="form-Label">Full Name</label> 


<input required name="fullname" type="text" class="form-control">

</div>
<div class="mb-3">

<label class="form-Lobel">Email address</label> 
<input required name="email" type="email" class="form-control">

</div>

<div class="mb-3">

<label class="form-Lobel">Password</label> 
<input required name="password" type="password" class="form-control">

</div>

<button type="submit" class="btn bg-success text-white col-md-12">Register</button>

</form>



</div>

</div>

</div>

</div>

</div>

</body>
</html>