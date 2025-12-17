<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>My Cart</title>
    <link rel="stylesheet" href="/css/cart.css">
</head>
<body>

<h2 class="cart-title">My Cart</h2>

<c:choose>
    <c:when test="${empty cart}">
        <p class="empty-cart">Your cart is empty</p>
    </c:when>

    <c:otherwise>
        <div class="cart-container">
            <c:forEach var="item" items="${cart}">
                <div class="cart-item">

					



                    <div class="cart-details">
                        <h3>${item.product.name}</h3>
                        <p class="price">₹ ${item.product.price}</p>
                        <p>Qty: ${item.quantity}</p>
                    </div>

                </div>
            </c:forEach>
        </div>
    </c:otherwise>
</c:choose>

<div class="cart-actions">
    <a href="/products"><button>Continue Shopping</button></a>
    <a href="/checkout"><button class="checkout">Checkout</button></a>
</div>

</body>
</html>
