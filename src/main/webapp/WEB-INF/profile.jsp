<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%! int counter = 0; %>
    <% counter += 1; %>

    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>

    <style>
        .idField{
            visibility: hidden;
        }
        .formControl {
        }
    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/loggedinNavbar.jsp" />

<%--    TODO:--%>
<%--    Add modal as a partial and use js to click to it--%>
    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>

    </div>


    <jsp:include page="partials/script.jsp" />
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<script>
        $('#testBtn').click( function (){
            console.log("you clicked me bro!")
        })


</script>
</body>
</html>
