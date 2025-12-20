<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Checkout</title>
    <link rel="stylesheet" href="/css/cart.css">
</head>
<body>

<%@ include file="/jsp/header.jsp" %>

<div class="checkout-page">

    <h2 class="checkout-title">Checkout</h2>

    <div class="checkout-container">

      
        <form class="billing-card" method="post" action="/place-order">

            <h3>Billing Details</h3>

            <label>Full Name</label>
            <input type="text" name="name" required>

            <label>Phone</label>
            <input type="text" name="phone" required>

            <label>Address</label>
            <textarea name="address" rows="3" required></textarea>

            <button type="submit" class="btn-primary">
                Place Order
            </button>

        </form>

     
        <div class="summary-card">
            <h3>Order Summary</h3>

            <c:set var="total" value="0"/>

            <c:forEach var="item" items="${cart}">
                <div class="summary-item">
                    <span>${item.product.name} × ${item.quantity}</span>
                    <span>₹ ${item.product.price * item.quantity}</span>
                </div>

                <c:set var="total"
                       value="${total + (item.product.price * item.quantity)}"/>
            </c:forEach>

            <hr>

            <div class="summary-total">
                <span>Total</span>
                <span>₹ ${total}</span>
            </div>
        </div>

    </div>

</div>

<%@ include file="/jsp/footer.jsp" %>

</body>
</html>
