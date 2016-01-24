<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AllEmployee</title>
</head>
<body>
<table>
    <tr>
        <td>Department: ${department.name}</td>
    </tr>
<c:forEach var="employee" items="${employees}">
    <tr>
        <td>${employee.firstName}</td>
        <td>${employee.secondName}</td>
        <td>${employee.age}</td>
        <td>
            <form method="post" action="/employeeDelete">
                <input type="hidden" name="id" value=${employee.id}>
                <input type="submit" value="Delete">
            </form>
        </td>
        <td>
         <form method="post" action="/employeeEdit">
            <input type="hidden" name="id" value=${employee.id}>
            <input type="submit" value="Update">
        </form>
        </td>
    </tr>
</c:forEach>
    <tr>
        <td colspan="5">
            <form method="post" action="/employeeEdit">
                <input type="hidden" name="department_id" value=${department.id}>
                <input type="submit" value="Add new employee">
            </form>
        </td>
    </tr>
</table>
</body>
</html>
