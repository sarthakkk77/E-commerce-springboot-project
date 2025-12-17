<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register - E-ShopX</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/eshop.css">
</head>
<body>

    <%@ include file="/jsp/header.jsp" %>

    <div class="auth-wrap" role="main" aria-labelledby="registerHeading">
      <div id="registerHeading" class="auth-title">Create your E-ShopX account</div>
      <div class="auth-sub">Simple, secure and fast registration</div>

      <c:if test="${not empty msg}">
        <div class="msg">${msg}</div>
      </c:if>
      <c:if test="${not empty error}">
        <div class="err">${error}</div>
      </c:if>

      <form action="${pageContext.request.contextPath}/register" method="post" autocomplete="on">
        <label for="username">Username</label>
        <input id="username" name="username" type="text" placeholder="Your username" required />

        <div class="two-col">
          <div class="col">
            <label for="email">Email</label>
            <input id="email" name="email" type="email" placeholder="you@example.com" required />
          </div>
          <div class="col">
            <label for="mobile">Mobile</label>
            <input id="mobile" name="mobile" type="text" placeholder="10-digit mobile" />
          </div>
        </div>

        <label for="password">Create password</label>
        <input id="password" name="password" type="password" placeholder="At least 6 characters" required />

        <button type="submit" class="btn-primary">Register</button>
      </form>

      <div class="login-link">
        Already have an account?
        <a class="small-link" href="${pageContext.request.contextPath}/login-page">Login</a>
      </div>
    </div>

    <%@ include file="/jsp/footer.jsp" %>

</body>
</html>
