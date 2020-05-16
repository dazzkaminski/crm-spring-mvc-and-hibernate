<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>CRM - Customer Relationship Manager</title>
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap"
		  rel="stylesheet"/>
	<link type="text/css" rel="stylesheet" href="/resources/css/style.css" />
</head>

<body>
<div id="container">
	<header id="header">
		<h1>Customer Relationship Manager</h1>
	</header>
	<nav id="nav-bar">
		<a href="showFormForAdd">Add Customer</a>
	</nav>
	<main id="main">
		<table id="table-customers">
			<thead>
			<tr>
				<th>First name</th>
				<th>Last name</th>
				<th>Email</th>
				<th></th>
				<th></th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="tempCustomer" items="${customers}">

				<c:url var="updateLink" value="/customer/showFormForUpdate">
					<c:param name="customerId" value="${tempCustomer.id}"></c:param>
				</c:url>

				<c:url var="deleteLink" value="/customer/delete">
					<c:param name="customerId" value="${tempCustomer.id}"></c:param>
				</c:url>

				<tr>
					<td> ${tempCustomer.firstName} </td>
					<td> ${tempCustomer.lastName} </td>
					<td> ${tempCustomer.email} </td>
					<td><a href="${updateLink}">Update</a> </td>
					<td><a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete?'))) return false" >Delete</a> </td>
				</tr>

			</c:forEach>
			</tbody>
		</table>
	</main>
</div>
</body>
</html>

