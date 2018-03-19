<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<c:url var="firstUrl" value="/pages/1" />--%>
<%--<c:url var="lastUrl" value="/pages/${deploymentLog.totalPages}" />--%>
<%--<c:url var="prevUrl" value="/pages/${currentIndex - 1}" />--%>
<%--<c:url var="nextUrl" value="/pages/${currentIndex + 1}" />--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>List of users</title>
    <link href="webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
</head>
<jsp:include page="../fragments/header.jsp" />
<body>
<div class="container center-block">

    <%--<c:if test="${not empty msg}">--%>
        <%--<div class="alert alert-${css} alert-dismissible" role="alert">--%>
            <%--<button type="button" class="close" data-dismiss="alert" aria-label="Close">--%>
                <%--<span aria-hidden="true">&times;</span>--%>
            <%--</button>--%>
            <%--<strong>${msg}</strong>--%>
        <%--</div>--%>
    <%--</c:if>--%>

    <h1>All Users</h1>

    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>IsAdmin</th>
        </tr>
        </thead>

        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.age}</td>
                <td>${user.isAdmin}</td>
                <%--<td>--%>
                    <%--<spring:url value="/users/${user.id}" var="userUrl" />--%>
                    <%--<spring:url value="/users/${user.id}/delete" var="deleteUrl" />--%>
                    <%--<spring:url value="/users/${user.id}/update" var="updateUrl" />--%>
<%----%>
                    <%--<button class="btn btn-info" onclick="location.href='${userUrl}'">Query</button>--%>
                    <%--<button class="btn btn-primary" onclick="location.href='${updateUrl}'">Update</button>--%>
                    <%--<button class="btn btn-danger" onclick="this.disabled=true;post('${deleteUrl}')">Delete</button></td>--%>
            </tr>
        </c:forEach>
    </table>
        <a class="btn btn-success" href="/users/add">Add</a>

        <nav aria-label="Page navigation">
            <ul class="pagination">
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
</div>
<%--<div class="pagination">--%>
    <%--<ul>--%>
        <%--<c:choose>--%>
            <%--<c:when test="${currentIndex == 1}">--%>
                <%--<li class="disabled"><a href="#">&lt;&lt;</a></li>--%>
                <%--<li class="disabled"><a href="#">&lt;</a></li>--%>
            <%--</c:when>--%>
            <%--<c:otherwise>--%>
                <%--<li><a href="${firstUrl}">&lt;&lt;</a></li>--%>
                <%--<li><a href="${prevUrl}">&lt;</a></li>--%>
            <%--</c:otherwise>--%>
        <%--</c:choose>--%>
        <%--<c:forEach var="i" begin="${beginIndex}" end="${endIndex}">--%>
            <%--<c:url var="pageUrl" value="/pages/${i}" />--%>
            <%--<c:choose>--%>
                <%--<c:when test="${i == currentIndex}">--%>
                    <%--<li class="active"><a href="${pageUrl}"><c:out value="${i}" /></a></li>--%>
                <%--</c:when>--%>
                <%--<c:otherwise>--%>
                    <%--<li><a href="${pageUrl}"><c:out value="${i}" /></a></li>--%>
                <%--</c:otherwise>--%>
            <%--</c:choose>--%>
        <%--</c:forEach>--%>
        <%--<c:choose>--%>
            <%--<c:when test="${currentIndex == deploymentLog.totalPages}">--%>
                <%--<li class="disabled"><a href="#">&gt;</a></li>--%>
                <%--<li class="disabled"><a href="#">&gt;&gt;</a></li>--%>
            <%--</c:when>--%>
            <%--<c:otherwise>--%>
                <%--<li><a href="${nextUrl}">&gt;</a></li>--%>
                <%--<li><a href="${lastUrl}">&gt;&gt;</a></li>--%>
            <%--</c:otherwise>--%>
        <%--</c:choose>--%>
    <%--</ul>--%>
<%--</div>--%>

<jsp:include page="../fragments/footer.jsp" />
</body>
</html>