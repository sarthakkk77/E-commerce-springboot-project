<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Products - E-ShopX</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/eshop.css">
</head>
<body>

<%@ include file="/jsp/header.jsp" %>

<div class="page-wrap">

    <h1 class="page-title">All Products</h1>
    <p class="page-sub">Browse products and add them to your cart</p>

    <c:if test="${empty productList}">
        <div class="empty-state">
            No products available right now.
        </div>
    </c:if>

    <c:if test="${not empty productList}">
        <div class="products-container">

            <c:forEach var="p" items="${productList}">
                <div class="product-box">

                    <img src="${pageContext.request.contextPath}/images/${p.imageUrl}.jpeg"
                         alt="${p.name}">

                    <h3>${p.name}</h3>

                    <p class="product-desc">
                        ${p.description}
                    </p>

                    <div class="price">₹ ${p.price}</div>

                    <a href="/add-to-cart/${p.id}" class="add-btn">
                        Add to Cart
                    </a>

                </div>
            </c:forEach>

        </div>
    </c:if>

</div>

<%@ include file="/jsp/footer.jsp" %>

</body>
</html>
