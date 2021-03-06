<%--
  Created by IntelliJ IDEA.
  User: arifen
  Date: 7/5/16
  Time: 12:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title></title>
</head>
<body>
<c:if test="${not empty msg}">
    <div class="msg">${msg}</div>
</c:if>
<h1>Customer Creation</h1>
<form:form commandName="customer" action="customerregister" method="post">

    <table border="2" style="margin-left:50px">
        <tr>
            <td>
                Name:
            </td>
            <td>
                <form:input path="name"/>
                <form:errors path="name" cssStyle="color: red;"/>
            </td>
        </tr>
        <tr>
            <td>
                Email Address:
            </td>
            <td>
                <form:input path="emailAddress"/>
                <form:errors path="emailAddress" cssStyle="color: red;"/>
            </td>
        </tr>
        <tr>
            <td>
                UserId:
            </td>
            <td>
                <form:input path="customerId"/>
                <form:errors path="customerId" cssStyle="color: red;"/>
            </td>
        </tr>
        <tr>
            <td>
                Password:
            </td>
            <td>
                <form:password path="password"/>
                <form:errors path="password" cssStyle="color: red;"/>
            </td>
        </tr>
        <tr>
            <td>
                Addresss
            </td>
            <td>
                <form:input path="address"/>
                <form:errors path="address" cssStyle="color: red;"/>
            </td>
        </tr>
        <tr>
            <td>
                Package Name
            </td>
            <td>
                <form:select path="aPackage">
                    <form:options items="${Package}" itemValue="packageName" itemLabel="packageName"/>
                </form:select>
                <form:errors path="aPackage" cssStyle="color: red;"/>
            </td>
        </tr>
        <tr>
            <td>
                Mobile Number
            </td>
            <td>
                <form:input path="mobileNumber"/>
                <form:errors path="mobileNumber" cssStyle="color: red;"/>
            </td>
        </tr>
        <tr>
            <td>
                Status
            </td>
            <td>
                <form:select path="status">
                    <form:option value="active" label="active"/>
                    <form:option value="deactive" label="deactive"/>
                </form:select>
            </td>
        </tr>
            <%--<form:hidden path="status" value="active"/>--%>
        <tr>
            <td>
                <input type="submit" value="Submit">
            </td>
        </tr>
    </table>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form:form>
</div>
</body>
</html>
