<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--<c:url var="firstUrl" value="/pages/1" />--%>
<%--<c:url var="lastUrl" value="/pages/${deploymentLog.totalPages}" />--%>
<%--<c:url var="prevUrl" value="/pages/${currentIndex - 1}" />--%>
<%--<c:url var="nextUrl" value="/pages/${currentIndex + 1}" />--%>

<!DOCTYPE html>
<html>
<head>
    <title>List of users</title>
    <%--<link href="webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">--%>
</head>
<jsp:include page="../fragments/header.jsp" />
<body>
<div class="container center-block">
        <div class="panel panel-default">
            <div class="panel-heading panel-title">Список пользователей</div>
                <div class="panel-body">
                    <table id="userTable" class="table table-bordered table-striped table-hover data-table" data-sort-strategy="desc" data-sort-column="0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Имя</th>
                                <th>Возраст</th>
                                <th>Администратор?</th>
                                <th>Действия</th>
                            </tr>
                        </thead>
                            <c:forEach var="user" items="${users}">
                                <spring:url value="/users/${user.id}/delete" var="deleteUrl" />
                                <spring:url value="/users/${user.id}/update" var="updateUrl" />
                                <tr>
                                    <td>${user.id}</td>
                                    <td>${user.name}</td>
                                    <td>${user.age}</td>
                                    <td>${user.isAdmin}</td>
                                    <td>
                                        <a class="btn btn-primary" href="${updateUrl}">Изменить</a>
                                        <a class="btn btn-danger" href="${deleteUrl}"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span> Удалить</a>
                                    </td>
                                </tr>
                            </c:forEach>
                    </table>
        <a class="btn btn-success" href="/users/add">Создать</a>
    </div>
        </div>
</div>
<jsp:include page="../fragments/footer.jsp" />
</body>
</html>