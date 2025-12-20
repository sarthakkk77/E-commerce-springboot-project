<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login | EshopX</title>
    <link rel="stylesheet" href="/css/eshop.css">
</head>
<body>

<%@ include file="/jsp/header.jsp" %>

<div class="login-page">

    <div class="login-card">

		<h2 class="login-title">
		    Welcome Back
		    <img src="/images/wave.png" class="login-icon" alt="Hi">
		</h2>

        <p class="login-sub">Login to continue shopping</p>

		<form class="login-form"
		      action="/verify-login"
		      method="post">

		    <div class="input-group">
		        <input type="email"
		               name="email"
		               required>
		        <label>Email Address</label>
		    </div>

		    <div class="input-group">
		        <input type="password"
		               name="password"
		               required>
		        <label>Password</label>
		    </div>

		    <button type="submit" class="login-btn">
		        Login
		    </button>

		    <p class="login-footer">
		        Don’t have an account?
		        <a href="/register-page">Create one</a>
		    </p>

		</form>


    </div>

</div>

<%@ include file="/jsp/footer.jsp" %>

</body>
</html>
