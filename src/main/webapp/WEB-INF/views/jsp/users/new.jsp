<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 18.03.2018
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Add new user</title>
</head>
<jsp:include page="../fragments/header.jsp" />
<body>
<div class="container center-block">
    <h2>New user</h2>
    <form:form class="form-horizontal" modelAttribute="userForm" action="/users" method="post">
        <div class="form-group">
            <form:label path="name" class="control-label col-sm-2">Name: </form:label>
            <div class="col-sm-10">
                <form:input path="name" type="text" class="form-control" placeholder="Enter your name..."/>
            </div>
        </div>
        <div class="form-group">
            <form:label path="age" class="control-label col-sm-2">Age: </form:label>
            <div class="col-sm-10">
                <form:input path="age" type="number" class="form-control" placeholder="Enter your age..."/>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <form:label path="isAdmin"><form:checkbox path="isAdmin"/>Are you Admin?</form:label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Submit</button>
            </div>
        </div>
    </form:form>
</div>
<jsp:include page="../fragments/footer.jsp" />
</body>
</html>
