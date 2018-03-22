<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Spring MVC Form Handling Example</title>

    <spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
    <spring:url value="/resources/core/css/jquery.dataTables.min.css" var="dataTablesMinCss" />
    <spring:url value="/resources/core/css/jquery.dataTables.css" var="dataTablesCss" />
    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${dataTablesCss}" rel="stylesheet" />
    <link href="${dataTablesMinCss}" rel="stylesheet" />
</head>

<spring:url value="/users" var="urlHome" />
<%--<spring:url value="/users/add" var="urlAddUser" />--%>

<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="${urlHome}">Пользователи</a>
        </div>
        <%--<div id="navbar">--%>
            <%--<ul class="nav navbar-nav navbar-right">--%>
                <%--<li class="active"><a href="${urlAddUser}">Add User</a></li>--%>
            <%--</ul>--%>
        <%--</div>--%>
    </div>
</nav>