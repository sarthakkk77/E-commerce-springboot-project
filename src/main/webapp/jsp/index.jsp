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
			    <a href="/products" class="hero-btn"> Start Shopping →</a>
			  </div>
			  
			  <div class="hero-image">
			      <img src="/images/shop-hero1.png" alt="Shopping illustration">
			    </div>
			</section>
			
			
			<section class="stats-strip">
			  <div class="stat-box">
			    <h3>10K+</h3>
			    <p>Happy Customers</p>
			  </div>

			  <div class="stat-box">
			    <h3>500+</h3>
			    <p>Premium Products</p>
			  </div>

			  <div class="stat-box">
			    <h3>24×7</h3>
			    <p>Customer Support</p>
			  </div>

			  <div class="stat-box">
			    <h3>Fast</h3>
			    <p>Delivery Across India</p>
			  </div>
			</section>
			<section class="featured">
			  <h2>Featured Products</h2>
			  <p class="sub-text">Handpicked products just for you</p>

			  <div class="glass-card">
				<div class="product-img">
			      <img src="/images/wireless%20headphones.jpeg" alt="Product">
			    </div>
			    <h4>Wireless Headphones</h4>
			    <span>₹1999</span>
			  </div>
			  
			    <div class="glass-card">
					<div class="product-img">
			      <img src="/images/smart%20watch.jpeg" alt="Product">
			      </div>
				  <h4>Smart Watch</h4>
			      <span>₹3499</span>
			    </div>

			    <div class="glass-card">
					<div class="product-img">
			      <img src="/images/bluetooth%20speaker.jpeg" alt="Product">
				  </div>
				  <h4>Bluetooth Speaker</h4>
			      <span>₹2499</span>
			    </div>

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
