<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
    <title>List of books</title>
</head>
<jsp:include page="../fragments/header.jsp" />
<body>
<div class="container center-block">
        <div class="panel panel-default">
            <div class="panel-heading panel-title">Список книг</div>
                <div class="panel-body">
                    <table id="bookTable" class="table table-bordered table-striped table-hover data-table" data-sort-strategy="desc" data-sort-column="0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Название</th>
                                <th>Описание</th>
                                <th>Автор</th>
                                <th>ISBN</th>
                                <th>Год печати</th>
                                <th>Статус</th>
                                <th>Действия</th>
                            </tr>
                        </thead>
                            <c:forEach var="book" items="${books}">
                                <spring:url value="/books/${book.id}/read" var="readUrl" />
                                <spring:url value="/books/${book.id}/delete" var="deleteUrl" />
                                <spring:url value="/books/${book.id}/update" var="updateUrl" />
                                <tr>
                                    <td>${book.id}</td>
                                    <td>${book.title}</td>
                                    <td>${book.description}</td>
                                    <td>${book.author}</td>
                                    <td>${book.isbn}</td>
                                    <td>${book.printYear}</td>
                                    <c:choose>
                                        <c:when test="${book.isReadAlready}">
                                            <td>Прочитана</td>
                                        </c:when>
                                        <c:otherwise>
                                            <td>Не Прочитана</td>
                                        </c:otherwise>
                                    </c:choose>
                                    <td>
                                        <c:if test="${not book.isReadAlready}">
                                            <a class="btn btn-success" href="${readUrl}">Прочитать</a>
                                        </c:if>
                                        <a class="btn btn-primary" href="${updateUrl}">Изменить</a>
                                        <a class="btn btn-danger" href="${deleteUrl}"><span class="glyphicon-trash" aria-hidden="true"></span> Удалить</a>
                                    </td>
                                </tr>
                            </c:forEach>
                    </table>
        <a class="btn btn-success" href="/books/add">Создать</a>
    </div>
        </div>
</div>
<jsp:include page="../fragments/footer.jsp" />
</body>
</html>