<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="theLocale"
value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}" scope="session" />

<fmt:setLocale value="${theLocale}"/>
<fmt:setBundle basename="label"/>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Car rental app</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

</head>
<body>
<p class="w3-right">
        <a href="index.jsp?theLocale=en_GB">EN</a>
        |
        <a href="index.jsp?theLocale=uk_UA">UA</a>
</p>
<div class="container">
    <div class="row">
        <div class="col-sm-8">
            <br>
            <h3> <fmt:message key="label.app"/> </h3>
            <img src="car_rent.jpg" alt="Car rent" width="80%" height="auto">
        </div>
        <div class="col-sm-4">
            <div class="row">

                <form action="/carRentApp/LoginServlet" method="POST" class="form-signin" style="color:black">
                    <div class="container">
                        <br>
                        <h3 class="h3 mb-3 font-weight-normal">
                            Login
                        </h3> <fmt:message key="label.usernameLabel"/>
                        <input type="text" placeholder="Enter Username" name="username" required>
                        <br> <fmt:message key="label.passwordLabel"/>
                        <input type="password" placeholder="Enter Password" name="password" required>
                        <br>
                        <button type="submit" class="btn btn-sm btn-secondary"> <fmt:message key="label.login"/></button>

                        <br>
                    </div>
                </form>
                <br>
                <div class="checkbox mb-3">
                    <h6><fmt:message key="label.haventAccount"/>
                        <button class="btn btn-sm btn-secondary" onclick="location.href='register.jsp';"> <fmt:message key="label.createOne"/>
                        </button>
                    </h6>
                </div>
            </div>
        </div>
    </div>

</div>
</body>
</html>