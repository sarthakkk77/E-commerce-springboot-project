<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
		<html>
		<head>
		    <meta charset="UTF-8">
		    <title>Index - E-ShopX</title>
		    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/eshop.css">
		</head>
		<body>

		    <%@ include file="/jsp/header.jsp" %>

		    
			<section class="hero">
			  <div class="hero-content">
			    <h1>Shop Smart.<br>Live Better.</h1>
			    <p>Premium products. Trusted quality. Fast delivery across India.</p>
			    <a href="/products" class="btn-primary">Start Shopping</a>
			  </div>
			  
			  <div class="hero-image">
			      <img src="/images/shop-hero1.png" alt="Shopping illustration">
			    </div>
			</section>
			
			<section class="featured">
			  <h2>Featured Products</h2>
			  <p class="sub-text">Handpicked products just for you</p>

			  <div class="featured-box">
			    <p>More exciting products coming soon..</p>
			  </div>
			</section>


		    
		    

		        <c:if test="${not empty productList}">
		            <div class="product-grid">
		                <c:forEach var="p" items="${productList}" begin="0" end="5">
		                    <div class="product-card">
		                        <div class="product-img-wrap">
		                            <c:if test="${not empty p.imageUrl}">
		                                <img src="images/${p.imageUrl}.jpeg" alt="${p.name}">
		                            </c:if>
		                        </div>

		                        <div class="product-name">${p.name}</div>
		                        <div class="product-price">₹${p.price}</div>
		                    </div>
		                </c:forEach>
		            </div>
		        </c:if>
		    </div>

		    
		    <div class="why-us">
		        <div class="why-box">
		            <h3>✔ Quality Products</h3>
		            <p>Verified and trusted products only.</p>
		        </div>

		        <div class="why-box">
		            <h3>🚚 Fast Delivery</h3>
		            <p>Quick delivery across India.</p>
		        </div>

		        <div class="why-box">
		            <h3>🔒 Secure Payments</h3>
		            <p>Your payment information is safe.</p>
		        </div>
		    </div>

		    <%@ include file="/jsp/footer.jsp" %>
			
			
			


</body>
</html>
