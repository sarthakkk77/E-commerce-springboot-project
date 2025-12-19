<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>My Cart</title>
    
    <link rel="stylesheet" href="/css/cart.css">
</head>
<body>


<%@ include file="/jsp/header.jsp" %>

<h2 class="cart-title">
  <img src="/images/cart1.png" class="cart-icon"> My Cart
</h2>
<c:choose>

    <c:when test="${empty cart}">
        <p class="empty-cart">🛒 Your cart is empty</p>
    </c:when>

    <c:otherwise>
		<c:set var="grandTotal" value="0" />

        <div class="cart-container">

           
            <c:set var="grandTotal" value="0" />

			<c:forEach var="item" items="${cart}">
			    <div class="cart-item">

			        <div class="cart-details">
			            <h3>${item.product.name}</h3>
			            <p class="price">₹ ${item.product.price}</p>

			            <div class="qty-controls">
			                <a href="/cart/decrease/${item.product.id}" class="qty-btn">−</a>
			                <span class="qty-num">${item.quantity}</span>
			                <a href="/cart/increase/${item.product.id}" class="qty-btn">+</a>
			            </div>
			        </div>

			        <div class="item-right">
			            <div class="item-total">
			                ₹ ${item.product.price * item.quantity}
			            </div>

			            <a href="/cart/remove/${item.product.id}" class="remove-btn">Remove</a>
			        </div>

			    </div>

			    
			    <c:set var="grandTotal"
			           value="${grandTotal + (item.product.price * item.quantity)}" />
			</c:forEach>
			


        </div>

        
		<div class="cart-summary">

		    <div class="summary-row">
		        <span>Subtotal</span>
		        <span>₹ ${grandTotal}</span>
		    </div>

		    <div class="summary-row">
		        <span>Delivery Charges:</span>
		        <span style="color:green;">FREE</span>
		    </div>

		    <div class="summary-row total">
		        <span>Grand Total</span>
		        <span class="total-price">₹ ${grandTotal}</span>
		    </div>

		</div>


    </c:otherwise>

</c:choose>

<div class="cart-actions">
    <a href="/products"><button class="btn-secondary">Continue Shopping</button></a>
    <a href="/checkout"><button class="checkout">Checkout</button></a>
</div>

<%@ include file="/jsp/footer.jsp" %>

</body>
</html>
