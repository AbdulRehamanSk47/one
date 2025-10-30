<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Clothify - Online Clothing Store</title>
  <link rel="stylesheet" href="style.css" />
</head>
<body>
  <header>
    <h1>🛍️ Clothify</h1>
    <nav>
      <ul>
        <li><a href="#">Men</a></li>
        <li><a href="#">Women</a></li>
        <li><a href="#">Kids</a></li>
      </ul>
    </nav>
    <div class="cart-icon">
      🛒 <span id="cart-count">0</span>
    </div>
  </header>

  <main>
    <h2>Featured Products</h2>
    <div class="product-grid">
      <div class="product-card">
        <img src="https://via.placeholder.com/200x250.png?text=Men+T-Shirt" alt="T-shirt">
        <h3>Men's T-Shirt</h3>
        <p>₹499</p>
        <button onclick="addToCart('Men\'s T-Shirt', 499)">Add to Cart</button>
      </div>

      <div class="product-card">
        <img src="https://via.placeholder.com/200x250.png?text=Women+Kurti" alt="Kurti">
        <h3>Women’s Kurti</h3>
        <p>₹899</p>
        <button onclick="addToCart('Women\'s Kurti', 899)">Add to Cart</button>
      </div>

      <div class="product-card">
        <img src="https://via.placeholder.com/200x250.png?text=Kids+Jeans" alt="Kids Jeans">
        <h3>Kids Jeans</h3>
        <p>₹699</p>
        <button onclick="addToCart('Kids Jeans', 699)">Add to Cart</button>
      </div>

      <div class="product-card">
        <img src="https://via.placeholder.com/200x250.png?text=Men+Shirt" alt="Men Shirt">
        <h3>Men’s Shirt</h3>
        <p>₹999</p>
        <button onclick="addToCart('Men\'s Shirt', 999)">Add to Cart</button>
      </div>
    </div>
  </main>

  <footer>
    <p>© 2025 Clothify | All Rights Reserved</p>
  </footer>

  <script src="script.js"></script>
</body>
</html>
