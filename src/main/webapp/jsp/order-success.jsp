<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Order Success</title>
    <link rel="stylesheet" href="/css/cart.css">
</head>
<body>

<%@ include file="/jsp/header.jsp" %>

<div class="success-wrapper">
    <div class="success-box">
        <img src="/images/order-success.png" class="success-img">
        <h2>Order Placed Successfully</h2>
        <p>Your order will be delivered soon.</p>

        <a href="/products" class="btn-primary">
            Continue Shopping
        </a>
		<a href="/orders" class="nav-btn" style="margin-top:20px;">
		        View My Orders
		    </a>
    </div>
</div>

<%@ include file="/jsp/footer.jsp" %>

</body>
</html>
