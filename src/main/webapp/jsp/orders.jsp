<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>My Orders - EshopX</title>
 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/eshop.css">
</head>

<body>

<%@ include file="/jsp/header.jsp" %>

<div class="page-wrap">
    <h1 class="page-title">My Orders</h1>

    <c:forEach var="o" items="${orders}">
        <div class="order-card">

            <div class="order-head">
                <span>Order #${o.id}</span>
                <span class="order-status ${o.status}">
                    ${o.status}
                </span>
            </div>

            <table class="order-items">
                <tr>
                    <th>Product</th>
                    <th>Qty</th>
                    <th>Price</th>
                </tr>

				<c:forEach var="i" items="${o.items}">
				  <tr>
				    <td>${i.productName}</td>
				    <td>${i.quantity}</td>
				    <td>₹ ${i.price}</td>
				  </tr>
				</c:forEach>


            </table>

            <div class="order-footer">
                <strong>Total: ₹ ${o.totalAmount}</strong>
                <button class="cancel-btn">Cancel Order</button>
            </div>

        </div>
    </c:forEach>
</div>

<%@ include file="/jsp/footer.jsp" %>

</body>
</html>
