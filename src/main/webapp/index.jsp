<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MobileHub - Premium Smartphones</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container">
            <div class="header-top">
                <div class="logo">
                    <i class="fas fa-mobile-alt"></i>
                    <span>MobileHub</span>
                </div>
                <div class="search-bar">
                    <input type="text" placeholder="Search for mobiles, brands and more...">
                    <button><i class="fas fa-search"></i></button>
                </div>
                <div class="header-actions">
                    <a href="#"><i class="fas fa-user"></i> Account</a>
                    <a href="#" class="wishlist-btn"><i class="fas fa-heart"></i> Wishlist</a>
                    <a href="#" class="cart-btn"><i class="fas fa-shopping-cart"></i> Cart <span class="cart-count">0</span></a>
                </div>
            </div>
        </div>
        <nav>
            <div class="container">
                <ul class="nav-links">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Apple</a></li>
                    <li><a href="#">Samsung</a></li>
                    <li><a href="#">OnePlus</a></li>
                    <li><a href="#">Xiaomi</a></li>
                    <li><a href="#">Realme</a></li>
                    <li><a href="#">Oppo</a></li>
                    <li><a href="#">Vivo</a></li>
                    <li><a href="#">Google</a></li>
                    <li><a href="#">Offers</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <h1>Premium Smartphones at Best Prices</h1>
            <p>Discover the latest mobile phones from top brands with exclusive deals and offers</p>
            <a href="#" class="cta-button">Shop Now</a>
        </div>
    </section>

    <!-- Main Content -->
    <main class="container">
        <!-- Filters -->
        <section class="filters">
            <h3 class="filter-title">Filter By</h3>
            <div class="filter-options">
                <div class="filter-group">
                    <label for="brand">Brand</label>
                    <select id="brand">
                        <option value="all">All Brands</option>
                        <option value="apple">Apple</option>
                        <option value="samsung">Samsung</option>
                        <option value="oneplus">OnePlus</option>
                        <option value="xiaomi">Xiaomi</option>
                        <option value="realme">Realme</option>
                    </select>
                </div>
                <div class="filter-group">
                    <label for="price">Price Range</label>
                    <select id="price">
                        <option value="all">All Prices</option>
                        <option value="0-15000">Under ₹15,000</option>
                        <option value="15000-30000">₹15,000 - ₹30,000</option>
                        <option value="30000-50000">₹30,000 - ₹50,000</option>
                        <option value="50000-100000">₹50,000 - ₹1,00,000</option>
                        <option value="100000+">Above ₹1,00,000</option>
                    </select>
                </div>
                <div class="filter-group">
                    <label for="ram">RAM</label>
                    <select id="ram">
                        <option value="all">All RAM</option>
                        <option value="4">4 GB</option>
                        <option value="6">6 GB</option>
                        <option value="8">8 GB</option>
                        <option value="12">12 GB</option>
                        <option value="16">16 GB</option>
                    </select>
                </div>
                <div class="filter-group">
                    <label for="storage">Storage</label>
                    <select id="storage">
                        <option value="all">All Storage</option>
                        <option value="64">64 GB</option>
                        <option value="128">128 GB</option>
                        <option value="256">256 GB</option>
                        <option value="512">512 GB</option>
                        <option value="1024">1 TB</option>
                    </select>
                </div>
            </div>
        </section>

        <!-- Products Section -->
        <section class="products-section">
            <h2 class="section-title">Latest Mobiles</h2>
            <div class="products-grid" id="products-container">
                <!-- Products will be dynamically added here -->
            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-column">
                    <h3>Shop</h3>
                    <ul>
                        <li><a href="#">Mobiles</a></li>
                        <li><a href="#">Tablets</a></li>
                        <li><a href="#">Accessories</a></li>
                        <li><a href="#">Wearables</a></li>
                        <li><a href="#">Offers</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h3>Help</h3>
                    <ul>
                        <li><a href="#">Payment</a></li>
                        <li><a href="#">Shipping</a></li>
                        <li><a href="#">Returns</a></li>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h3>About</h3>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">Corporate</a></li>
                        <li><a href="#">Investors</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h3>Connect With Us</h3>
                    <p>Follow us on social media for the latest updates</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
            </div>
            <div class="copyright">
                &copy; 2023 MobileHub. All rights reserved.
            </div>
        </div>
    </footer>

    <!-- Cart Sidebar -->
    <div class="overlay" id="overlay"></div>
    <div class="cart-sidebar" id="cart-sidebar">
        <div class="cart-header">
            <h2>Your Cart</h2>
            <button class="close-cart" id="close-cart"><i class="fas fa-times"></i></button>
        </div>
        <div class="cart-items" id="cart-items">
            <!-- Cart items will be dynamically added here -->
        </div>
        <div class="cart-footer">
            <div class="cart-total">
                <span>Total:</span>
                <span id="cart-total-price">₹0</span>
            </div>
            <button class="checkout-btn">Proceed to Checkout</button>
        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>
