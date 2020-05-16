<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>CRM - Customer Relationship Manager</title>
    <link type="text/css" rel="stylesheet" href="/resources/css/style.css" />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap" rel="stylesheet"/>
</head>

<body>
<div id="container">
    <header id="header">
        <h1>Customer Relationship Manager</h1>
    </header>
    <nav id="nav-bar">
        <a href="/customer/list">< Back to list</a>
    </nav>
    <main id="main">
        <form:form action="saveCustomer" modelAttribute="customer" method="post" cssClass="customer-form">
            <form:hidden path="id" />
            <form:input path="firstName" placeholder="first name" cssClass="customer-details"/>
            <form:input path="lastName" placeholder="last name" cssClass="customer-details"/>
            <form:input path="email" placeholder="email" cssClass="customer-details"/>
            <button type="submit" id="submit" value="Save">Save</button>
        </form:form>
    </main>
</div>
</body>
</html>
