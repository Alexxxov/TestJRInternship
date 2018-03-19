<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="container">
    <hr>
    <footer>
        <p>&copy; Alexxxov 2018</p>
    </footer>
</div>

<spring:url value="/resources/core/js/jquery.min.js" var="jQueryJs" />
<spring:url value="/resources/core/js/bootstrap.min.js"
            var="bootstrapJs" />

<script src="${jQueryJs}"></script>
<script src="${bootstrapJs}"></script>

