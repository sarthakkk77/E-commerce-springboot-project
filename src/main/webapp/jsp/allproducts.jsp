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
      <div class="page-title">All Products</div>
      <div class="page-sub">
        Browse products. To add items to cart, please login.
      </div>

     
      <c:if test="${empty productList}">
        <div class="empty-state">
          No products available right now. Please check again later.
        </div>
      </c:if>

     
      <c:if test="${not empty productList}">
        <div class="product-grid">
          <c:forEach var="p" items="${productList}">
            <div class="product-card">
              <div class="product-img-wrap">
                <c:if test="${not empty p.imageUrl}">
					<img src="images/${p.imageUrl}.jpeg" alt="${p.name}" />

                </c:if>
                <c:if test="${empty p.imageUrl}">
                  <span style="font-size:12px; color:#9ca3af;">No Image</span>
                </c:if>
              </div>

              <div class="product-name">
                ${p.name}
              </div>

              <div class="product-desc">
                ${p.description}
              </div>

              <div class="product-price">
                ₹${p.price}
              </div>

              <div class="btn-row">
                <button type="button" class="btn-ghost">
                  View details
                </button>

               
				<a href="/add-to-cart/${p.id}">
				   <button class="btn-ghost">Add to Cart</button>
				</a>
   
				</a>
              </div>
            </div>
          </c:forEach>
        </div>
      </c:if>
    </div>

    <%@ include file="/jsp/footer.jsp" %>

</body>
</html>
