<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<header class="nav-header">


  <div class="nav-left">
	<div class="logo-box">
	    <img src="/images/logo.png" class="logo-img" alt="Logo">
	    <span class="logo-text">EshopX</span>
	</div>

  </div>

  
  <div class="nav-center">
    <form class="search-modern">
      <input type="text" placeholder="Search products..." />
	  <button type="submit" class="search-btn">
	      <img src="/images/search.png" alt="Search">
	  </button>

    </form>
  </div>

  <div class="nav-right">

    <a href="/" class="nav-link">Home</a>
    <a href="/products" class="nav-link">Products</a>

    <a href="/cart" class="cart-wrap">
      <img src="/images/cart2.png" class="cart-png">
    </a>
	<c:choose>
	  <c:when test="${not empty sessionScope.loggedInUser}">
	      <div class="user-menu">
	          <div class="user-icon">
	              <img src="/images/user-icon.png" alt="User">
	          </div>

	          <div class="user-dropdown">
	              <a href="/profile">My Profile</a>
	              <a href="/orders">Orders</a>
	              <a href="/logout">Logout</a>
	          </div>
	      </div>
	  </c:when>

	  <c:otherwise>
	      <a href="/login" class="nav-btn">Login</a>
	  </c:otherwise>
	</c:choose>





  </div>

</header>
