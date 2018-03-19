<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 18.03.2018
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Add new user</title>
</head>
<jsp:include page="../fragments/header.jsp" />
<body>
<div class="container">
    <h2>New user</h2>
    <form class="form-horizontal" action="/users/save" method="post">
        <div class="form-group">
            <label class="control-label col-sm-2" for="name">Name: </label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="name" placeholder="Enter your name..." value="${user.name}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="age">Age: </label>
            <div class="col-sm-10">
                <input type="number" class="form-control" id="age" placeholder="Enter your age..." value="${user.age}">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <label><input type="checkbox" value="${user.isAdmin}">Are you Admin?</label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Submit</button>
            </div>
        </div>
    </form>
</div>
<jsp:include page="../fragments/footer.jsp" />
</body>
</html>
