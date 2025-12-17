<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Checkout - E-ShopX</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/eshop.css">
</head>
<body>

<div class="checkout-page">

    <h2 class="checkout-title">Checkout</h2>

    <div class="checkout-container">

        
        <form action="/place-order" method="post" class="billing-card">

            <h3>Billing Details</h3>

            <label>Name</label>
            <input type="text" name="name" required>

            <label>Mobile</label>
            <input type="text" name="mobile" required>

            <label>Address</label>
            <textarea name="address" rows="4" required></textarea>

            <button type="submit" class="btn-primary">
                Place Order
            </button>
        </form>

       
        <div class="summary-card">

            <h3>Order Summary</h3>

            <c:forEach var="item" items="${cart}">
                <div class="summary-item">
                    <span>${item.product.name}</span>
                    <span>
                        ₹${item.product.price} × ${item.quantity}
                    </span>
                </div>
            </c:forEach>

            <hr>

            <div class="summary-total">
                <span>Total</span>
                <span>₹ ${total}</span>
            </div>
        </div>

    </div>

</div>

</body>
</html>
