<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 18.03.2018
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>Книга</title>
</head>
<jsp:include page="../fragments/header.jsp" />
<body>
<div class="container center-block">
    <h2>Новая книга</h2>

    <form:form class="form-horizontal" modelAttribute="bookForm" action="/books" method="post">
        <spring:bind path="title">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:label path="title" class="control-label col-sm-2">Название книги: </form:label>
                <div class="col-sm-10">
                    <form:input path="title" type="text" class="form-control" placeholder="Mass Effect: Revelation"/>
                    <form:errors path="title" cssClass="control-label">Book title is required!</form:errors>
                </div>
            </div>
        </spring:bind>
        <spring:bind path="description">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:label path="description" class="control-label col-sm-2">Описание книги: </form:label>
                <div class="col-sm-10">
                    <form:input path="description" type="text" class="form-control" placeholder="This book is about other stories in the mass effect universe"/>
                    <form:errors path="description" cssClass="control-label">Description is required!</form:errors>
                </div>
            </div>
        </spring:bind>
        <spring:bind path="author">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:label path="author" class="control-label col-sm-2">Автор книги: </form:label>
                <div class="col-sm-10">
                    <form:input path="author" type="text" class="form-control" placeholder="Drew Karpyshyn"/>
                    <form:errors path="author" cssClass="control-label">Author is required!</form:errors>
                </div>
            </div>
        </spring:bind>
        <spring:bind path="isbn">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:label path="isbn" class="control-label col-sm-2">ISBN: </form:label>
                <div class="col-sm-10">
                    <form:input path="isbn" type="text" class="form-control" placeholder="9782811206772"/>
                    <form:errors path="isbn" cssClass="control-label">ISBN is required!</form:errors>
                </div>
            </div>
        </spring:bind>
       <spring:bind path="printYear">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:label path="printYear" class="control-label col-sm-2">Год печати: </form:label>
                <div class="col-sm-10">
                    <form:input path="printYear" type="number" class="form-control" placeholder="2007"/>
                    <form:errors path="printYear" cssClass="control-label">Print year is required!</form:errors>
                </div>
            </div>
       </spring:bind>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <form:label path="isReadAlready"><form:checkbox path="isReadAlready"/>Прочитана?</form:label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Сохранить</button>
                <a class="btn btn-default pull-right" href="/books">Назад к списку пользователей</a>
            </div>
        </div>
    </form:form>
</div>
<jsp:include page="../fragments/footer.jsp" />
</body>
</html>
