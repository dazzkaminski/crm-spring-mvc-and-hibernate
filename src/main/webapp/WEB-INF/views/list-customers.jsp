<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>

<body>
<table>
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
    </tr>

    <!-- loop over and print our customers -->
    <c:forEach var="tempCustomer" items="${customers}">

        <tr>
            <td> ${tempCustomer.firstName} </td>
            <td> ${tempCustomer.lastName} </td>
            <td> ${tempCustomer.email} </td>
        </tr>

    </c:forEach>

</table>
</body>
</html>