<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<header class="nav-header">

  <!-- LEFT : LOGO -->
  <div class="nav-left">
	<div class="logo-box">
	    <img src="/images/logo.png" class="logo-img" alt="Logo">
	    <span class="logo-text">EshopX</span>
	</div>

  </div>

  <!-- CENTER : SEARCH -->
  <div class="nav-center">
    <form class="search-modern">
      <input type="text" placeholder="Search products..." />
	  <button type="submit" class="search-btn">
	      <img src="/images/search.png" alt="Search">
	  </button>

    </form>
  </div>

  <!-- RIGHT : NAV -->
  <div class="nav-right">

    <a href="/" class="nav-link">Home</a>
    <a href="/products" class="nav-link">Products</a>

    <a href="/cart" class="cart-wrap">
      <img src="/images/cart2.png" class="cart-png">
    </a>

    <a href="/login" class="nav-btn">Login</a>

  </div>

</header>
