<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container">
    <hr>
    <footer>
        <p>&copy; Alexxxov 2018</p>
    </footer>
</div>


<spring:url value="/resources/core/js/jquery-3.2.1.min.js" var="jQueryDataTableJs" />
<spring:url value="/resources/core/js/jquery.dataTables.js" var="jQueryDataTable" />
<spring:url value="/resources/core/js/bookTable.js" var="dataTablesJs" />
<spring:url value="/resources/core/js/bootstrap.min.js"
            var="bootstrapJs" />

<script src="${jQueryDataTableJs}"></script>
<script src="${jQueryDataTable}"></script>
<script src="${bootstrapJs}"></script>
<script src="${dataTablesJs}"></script>

