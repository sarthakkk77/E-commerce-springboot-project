<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<header class="eshop-header">
    
   
    <div class="brand">
        <div class="brand-icon">X</div>
        E-ShopX
    </div>


	<div class="search-box">
	  <form action="${pageContext.request.contextPath}/search" method="get" role="search" aria-label="Site search">
	    <input type="text" name="q" placeholder="Search products..." aria-label="Search input" />
	    <button type="submit" class="search-btn" aria-label="Search">
	      <svg viewBox="0 0 24 24" fill="none" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
	        <circle cx="11" cy="11" r="7" stroke="currentColor"></circle>
	        <line x1="21" y1="21" x2="16.65" y2="16.65" stroke="currentColor"></line>
	      </svg>
	    </button>
	  </form>
	</div>

    
    <div class="nav-area">

        <a href="${pageContext.request.contextPath}/">Home</a>
        <a href="${pageContext.request.contextPath}/products">Products</a>

        <c:choose>
            <c:when test="${not empty sessionScope.user}">
                <a href="${pageContext.request.contextPath}/profile">Hi, ${sessionScope.user.username}</a>
                <a href="${pageContext.request.contextPath}/logout">Logout</a>
            </c:when>
            <c:otherwise>
                <a href="${pageContext.request.contextPath}/login-page">Login</a>
                <a href="${pageContext.request.contextPath}/register-page">SignUp</a>
            </c:otherwise>
        </c:choose>

		<a class="cart" href="${pageContext.request.contextPath}/cart" title="Cart">
		    
		    <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#4A47FF" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
		        <circle cx="9" cy="21" r="1"></circle>
		        <circle cx="20" cy="21" r="1"></circle>
		        <path d="M1 1h4l2.5 12.5a2 2 0 0 0 2 1.5h9a2 2 0 0 0 2-1.5L23 6H6"></path>
		    </svg>

		    
		    <c:if test="${not empty sessionScope.cartSize}">
		        <span class="cart-badge">${sessionScope.cartSize}</span>
		    </c:if>
		</a>


    </div>

</header>
