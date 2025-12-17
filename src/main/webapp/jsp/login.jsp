<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - E-ShopX</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/eshop.css">
</head>
<body>

    <%@ include file="/jsp/header.jsp" %>

    <div class="auth-wrap" role="main" aria-labelledby="loginHeading">
      <div id="loginHeading" class="auth-title">Welcome back to E-ShopX</div>
      <div class="auth-sub">Sign in to continue shopping</div>

      <c:if test="${not empty msg}">
        <div class="msg">${msg}</div>
      </c:if>
      <c:if test="${not empty error}">
        <div class="err">${error}</div>
      </c:if>

      <form action="${pageContext.request.contextPath}/verify-login" method="post" autocomplete="on">
          <label for="username">Username</label>
          <input id="username" name="username" type="text" placeholder="Your username" required autofocus />

          <label for="password">Password</label>
          <input id="password" name="password" type="password" placeholder="Your password" required />

          <button type="submit" class="btn-primary">Login</button>
      </form>

      <div class="helper">
        New here?
        <a class="small-link" href="${pageContext.request.contextPath}/register-page">Create an account</a>
      </div>
    </div>

    <%@ include file="/jsp/footer.jsp" %>

</body>
</html>
