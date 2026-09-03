<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MobileHub · user friendly</title>
    <!-- Font Awesome 6 (free) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Inter', system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
        }

        body {
            background: #f8faff;
            color: #1e1e2f;
            line-height: 1.5;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* ===== HEADER ===== */
        header {
            background: #ffffff;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.03);
            border-bottom: 1px solid #eef2f6;
            position: sticky;
            top: 0;
            z-index: 50;
            backdrop-filter: blur(6px);
            background: rgba(255, 255, 255, 0.92);
        }

        .header-top {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            padding: 14px 0;
            gap: 16px;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 1.8rem;
            font-weight: 700;
            color: #1e2a5e;
        }
        .logo i {
            color: #3b6eff;
            font-size: 2rem;
        }
        .logo span {
            letter-spacing: -0.5px;
        }

        .search-bar {
            display: flex;
            flex: 1 1 300px;
            max-width: 500px;
            background: #f2f5fc;
            border-radius: 40px;
            padding: 0 6px 0 18px;
            align-items: center;
            border: 1px solid transparent;
            transition: 0.2s;
        }
        .search-bar:focus-within {
            border-color: #3b6eff;
            background: #ffffff;
            box-shadow: 0 0 0 4px rgba(59, 110, 255, 0.12);
        }
        .search-bar input {
            border: none;
            background: transparent;
            padding: 12px 0;
            width: 100%;
            font-size: 0.95rem;
            outline: none;
        }
        .search-bar button {
            background: #3b6eff;
            border: none;
            color: white;
            width: 42px;
            height: 42px;
            border-radius: 40px;
            font-size: 1.1rem;
            cursor: pointer;
            transition: 0.15s;
        }
        .search-bar button:hover {
            background: #2952e0;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 18px;
        }
        .header-actions a {
            text-decoration: none;
            color: #1e1e2f;
            font-weight: 500;
            font-size: 0.9rem;
            display: flex;
            align-items: center;
            gap: 6px;
            transition: 0.2s;
            padding: 6px 10px;
            border-radius: 30px;
        }
        .header-actions a i {
            font-size: 1.2rem;
        }
        .header-actions a:hover {
            background: #eef3fe;
            color: #1a3bb0;
        }
        .cart-btn {
            position: relative;
            background: #eef3fe;
            border-radius: 40px;
            padding: 6px 14px 6px 10px;
        }
        .cart-count {
            background: #ff4d5a;
            color: white;
            font-size: 0.7rem;
            font-weight: 600;
            padding: 2px 8px;
            border-radius: 30px;
            margin-left: 4px;
        }

        /* NAV */
        nav {
            background: #ffffff;
            border-top: 1px solid #ecf0f5;
            padding: 6px 0;
        }
        .nav-links {
            display: flex;
            flex-wrap: wrap;
            gap: 6px 18px;
            list-style: none;
            padding: 6px 0;
        }
        .nav-links li a {
            text-decoration: none;
            color: #2c3a5e;
            font-weight: 500;
            font-size: 0.9rem;
            padding: 6px 4px;
            border-bottom: 2px solid transparent;
            transition: 0.15s;
            white-space: nowrap;
        }
        .nav-links li a:hover {
            border-bottom-color: #3b6eff;
            color: #1a2b6b;
        }

        /* ===== HERO ===== */
        .hero {
            background: linear-gradient(145deg, #eef4ff, #dce6ff);
            padding: 40px 20px;
            margin: 20px 0 30px;
            border-radius: 36px;
            text-align: center;
            box-shadow: 0 8px 24px rgba(59, 110, 255, 0.10);
        }
        .hero h1 {
            font-size: 2.4rem;
            font-weight: 700;
            color: #11204d;
            letter-spacing: -0.02em;
        }
        .hero p {
            font-size: 1.2rem;
            color: #2c3d6b;
            margin: 12px 0 20px;
            opacity: 0.9;
        }
        .cta-button {
            display: inline-block;
            background: #1e2a5e;
            color: white;
            padding: 14px 40px;
            border-radius: 60px;
            font-weight: 600;
            text-decoration: none;
            box-shadow: 0 6px 14px rgba(30, 42, 94, 0.25);
            transition: 0.2s;
        }
        .cta-button:hover {
            background: #13204a;
            transform: scale(1.02);
            box-shadow: 0 8px 18px rgba(30, 42, 94, 0.3);
        }

        /* ===== FILTERS ===== */
        .filters {
            background: white;
            border-radius: 28px;
            padding: 24px 28px;
            margin-bottom: 30px;
            box-shadow: 0 6px 18px rgba(0,0,0,0.02);
            border: 1px solid #eef2f8;
        }
        .filter-title {
            font-size: 1.1rem;
            font-weight: 600;
            color: #1a2957;
            margin-bottom: 14px;
        }
        .filter-options {
            display: flex;
            flex-wrap: wrap;
            gap: 16px 28px;
        }
        .filter-group {
            display: flex;
            flex-direction: column;
            gap: 4px;
            flex: 1 0 140px;
        }
        .filter-group label {
            font-size: 0.8rem;
            font-weight: 600;
            color: #43537a;
            letter-spacing: 0.3px;
        }
        .filter-group select {
            background: #f2f6fe;
            border: 1px solid #dce3ef;
            border-radius: 40px;
            padding: 10px 16px;
            font-weight: 500;
            color: #1a2747;
            outline: none;
            transition: 0.15s;
            cursor: pointer;
        }
        .filter-group select:focus {
            border-color: #3b6eff;
            box-shadow: 0 0 0 3px rgba(59, 110, 255, 0.2);
        }

        /* ===== PRODUCTS ===== */
        .section-title {
            font-size: 1.8rem;
            font-weight: 650;
            margin-bottom: 24px;
            color: #0d1b42;
            letter-spacing: -0.3px;
        }

        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(210px, 1fr));
            gap: 28px 20px;
            margin-bottom: 40px;
        }

        .product-card {
            background: white;
            border-radius: 24px;
            padding: 20px 14px 18px;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.02);
            border: 1px solid #eef2f8;
            transition: all 0.2s ease;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }
        .product-card:hover {
            transform: translateY(-6px);
            border-color: #cbd9ff;
            box-shadow: 0 16px 32px rgba(59, 110, 255, 0.08);
        }
        .product-card img {
            width: 100%;
            max-height: 140px;
            object-fit: contain;
            margin-bottom: 12px;
        }
        .product-card h3 {
            font-size: 1rem;
            font-weight: 600;
            color: #16224a;
            margin-bottom: 4px;
        }
        .product-card .brand-tag {
            font-size: 0.7rem;
            background: #ecf3ff;
            padding: 2px 12px;
            border-radius: 40px;
            color: #1d3b8a;
            font-weight: 600;
            margin-bottom: 6px;
            display: inline-block;
        }
        .product-card .price {
            font-size: 1.25rem;
            font-weight: 700;
            color: #162c6b;
            margin: 8px 0 6px;
        }
        .product-card .specs {
            font-size: 0.75rem;
            color: #5a6c8a;
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
            justify-content: center;
            margin: 6px 0 12px;
        }
        .product-card .add-to-cart {
            background: #eef4ff;
            border: none;
            border-radius: 60px;
            padding: 10px 20px;
            font-weight: 600;
            color: #1a2b6b;
            width: 100%;
            cursor: pointer;
            transition: 0.15s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            font-size: 0.9rem;
        }
        .product-card .add-to-cart:hover {
            background: #d2e0ff;
            color: #0b1b4a;
        }
        .product-card .add-to-cart i {
            font-size: 0.9rem;
        }

        /* ===== CART SIDEBAR ===== */
        .overlay {
            position: fixed;
            top: 0; left: 0; width: 100%; height: 100%;
            background: rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(3px);
            visibility: hidden;
            opacity: 0;
            transition: 0.25s;
            z-index: 999;
        }
        .overlay.active {
            visibility: visible;
            opacity: 1;
        }

        .cart-sidebar {
            position: fixed;
            top: 0;
            right: -420px;
            width: 400px;
            max-width: 90vw;
            height: 100%;
            background: #ffffff;
            box-shadow: -8px 0 30px rgba(0,0,0,0.08);
            padding: 24px 20px;
            transition: right 0.3s cubic-bezier(0.2, 0.9, 0.3, 1);
            z-index: 1000;
            display: flex;
            flex-direction: column;
            border-left: 1px solid #e2e9f5;
        }
        .cart-sidebar.open {
            right: 0;
        }
        .cart-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding-bottom: 16px;
            border-bottom: 1px solid #eef2f8;
        }
        .cart-header h2 {
            font-size: 1.4rem;
            font-weight: 650;
            color: #121f4a;
        }
        .close-cart {
            background: none;
            border: none;
            font-size: 1.6rem;
            color: #4f5f7a;
            cursor: pointer;
            padding: 0 6px;
        }
        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 16px 0;
        }
        .cart-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 12px 0;
            border-bottom: 1px solid #f0f4fc;
        }
        .cart-item-info {
            display: flex;
            flex-direction: column;
        }
        .cart-item-name {
            font-weight: 500;
        }
        .cart-item-price {
            font-weight: 600;
            color: #1f3c7a;
        }
        .cart-item-remove {
            background: #fee9ec;
            border: none;
            color: #b33a4a;
            border-radius: 30px;
            padding: 6px 12px;
            font-size: 0.7rem;
            font-weight: 600;
            cursor: pointer;
        }
        .cart-footer {
            border-top: 1px solid #eef2f8;
            padding-top: 16px;
        }
        .cart-total {
            display: flex;
            justify-content: space-between;
            font-size: 1.2rem;
            font-weight: 700;
            margin-bottom: 14px;
        }
        .checkout-btn {
            background: #1e2a5e;
            color: white;
            border: none;
            width: 100%;
            padding: 14px;
            border-radius: 60px;
            font-weight: 600;
            font-size: 1rem;
            cursor: pointer;
            transition: 0.15s;
        }
        .checkout-btn:hover {
            background: #13204a;
        }

        /* ===== FOOTER ===== */
        footer {
            background: #0c142b;
            color: #d3defa;
            padding: 44px 0 20px;
            margin-top: 30px;
            border-radius: 40px 40px 0 0;
        }
        .footer-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 32px;
            padding-bottom: 28px;
        }
        .footer-column h3 {
            color: white;
            font-weight: 600;
            margin-bottom: 14px;
            font-size: 1rem;
        }
        .footer-column ul {
            list-style: none;
        }
        .footer-column ul li {
            margin-bottom: 8px;
        }
        .footer-column ul li a {
            color: #bcc8ee;
            text-decoration: none;
            font-size: 0.9rem;
            transition: 0.15s;
        }
        .footer-column ul li a:hover {
            color: white;
        }
        .social-links {
            display: flex;
            gap: 14px;
            margin-top: 12px;
        }
        .social-links a {
            background: #1f2b55;
            color: #d3defa;
            width: 38px;
            height: 38px;
            border-radius: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: 0.15s;
            text-decoration: none;
        }
        .social-links a:hover {
            background: #3b6eff;
            color: white;
        }
        .copyright {
            border-top: 1px solid #212d57;
            padding-top: 20px;
            text-align: center;
            font-size: 0.85rem;
            color: #8493c0;
        }

        /* responsiveness */
        @media (max-width: 700px) {
            .header-top { flex-direction: column; align-items: stretch; }
            .search-bar { max-width: 100%; }
            .hero h1 { font-size: 1.8rem; }
            .products-grid { grid-template-columns: repeat(auto-fill, minmax(160px, 1fr)); }
            .cart-sidebar { width: 100%; max-width: 100%; right: -100%; }
        }
        @media (max-width: 480px) {
            .filter-options { flex-direction: column; gap: 10px; }
            .header-actions a span { display: none; }
        }

        /* image placeholder */
        .product-img-placeholder {
            background: #f0f5ff;
            border-radius: 20px;
            width: 100%;
            aspect-ratio: 1/1;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #98adcf;
            font-size: 2.6rem;
        }
        .empty-cart-msg {
            text-align: center;
            color: #6a7fa0;
            padding: 40px 0;
        }
    </style>
</head>
<body>

<!-- HEADER -->
<header>
    <div class="container">
        <div class="header-top">
            <div class="logo">
                <i class="fas fa-mobile-alt"></i>
                <span>MobileHub</span>
            </div>
            <div class="search-bar">
                <input type="text" placeholder="Search mobiles, brands..." id="searchInput">
                <button id="searchBtn"><i class="fas fa-search"></i></button>
            </div>
            <div class="header-actions">
                <a href="#"><i class="fas fa-user"></i> <span>Account</span></a>
                <a href="#" class="wishlist-btn"><i class="fas fa-heart"></i> <span>Wishlist</span></a>
                <a href="#" class="cart-btn" id="cartOpenBtn"><i class="fas fa-shopping-cart"></i> <span>Cart</span> <span class="cart-count" id="cartCount">0</span></a>
            </div>
        </div>
    </div>
    <nav>
        <div class="container">
            <ul class="nav-links">
                <li><a href="#">Home</a></li>
                <li><a href="#" data-brand="Apple">Apple</a></li>
                <li><a href="#" data-brand="Samsung">Samsung</a></li>
                <li><a href="#" data-brand="OnePlus">OnePlus</a></li>
                <li><a href="#" data-brand="Xiaomi">Xiaomi</a></li>
                <li><a href="#" data-brand="Realme">Realme</a></li>
                <li><a href="#" data-brand="Oppo">Oppo</a></li>
                <li><a href="#" data-brand="Vivo">Vivo</a></li>
                <li><a href="#" data-brand="Google">Google</a></li>
                <li><a href="#">Offers</a></li>
            </ul>
        </div>
    </nav>
</header>

<!-- HERO -->
<section class="hero">
    <div class="container">
        <h1>Premium Smartphones · Best Prices</h1>
        <p>New arrivals, exclusive deals & trusted brands — all in one place</p>
        <a href="#" class="cta-button">Explore Now</a>
    </div>
</section>

<!-- MAIN -->
<main class="container">

    <!-- FILTERS -->
    <section class="filters">
        <h3 class="filter-title"><i class="fas fa-sliders-h" style="margin-right: 8px;"></i>Filter By</h3>
        <div class="filter-options">
            <div class="filter-group">
                <label for="brand">Brand</label>
                <select id="brandFilter">
                    <option value="all">All Brands</option>
                    <option value="Apple">Apple</option>
                    <option value="Samsung">Samsung</option>
                    <option value="OnePlus">OnePlus</option>
                    <option value="Xiaomi">Xiaomi</option>
                    <option value="Realme">Realme</option>
                    <option value="Oppo">Oppo</option>
                    <option value="Vivo">Vivo</option>
                    <option value="Google">Google</option>
                </select>
            </div>
            <div class="filter-group">
                <label for="price">Price Range</label>
                <select id="priceFilter">
                    <option value="all">All Prices</option>
                    <option value="0-15000">Under ₹15,000</option>
                    <option value="15000-30000">₹15,000 – ₹30,000</option>
                    <option value="30000-50000">₹30,000 – ₹50,000</option>
                    <option value="50000-100000">₹50,000 – ₹1,00,000</option>
                    <option value="100000+">Above ₹1,00,000</option>
                </select>
            </div>
            <div class="filter-group">
                <label for="ram">RAM</label>
                <select id="ramFilter">
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
                <select id="storageFilter">
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

    <!-- PRODUCTS -->
    <section class="products-section">
        <h2 class="section-title">📱 Latest Mobiles</h2>
        <div class="products-grid" id="productsContainer"></div>
    </section>
</main>

<!-- FOOTER -->
<footer>
    <div class="container">
        <div class="footer-content">
            <div class="footer-column"><h3>Shop</h3><ul><li><a href="#">Mobiles</a></li><li><a href="#">Tablets</a></li><li><a href="#">Accessories</a></li><li><a href="#">Wearables</a></li><li><a href="#">Offers</a></li></ul></div>
            <div class="footer-column"><h3>Help</h3><ul><li><a href="#">Payment</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">FAQ</a></li><li><a href="#">Contact</a></li></ul></div>
            <div class="footer-column"><h3>About</h3><ul><li><a href="#">About Us</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li><li><a href="#">Corporate</a></li><li><a href="#">Investors</a></li></ul></div>
            <div class="footer-column"><h3>Connect</h3><p style="color:#b0bfe6; font-size:0.9rem;">Follow for updates</p><div class="social-links"><a href="#"><i class="fab fa-facebook-f"></i></a><a href="#"><i class="fab fa-twitter"></i></a><a href="#"><i class="fab fa-instagram"></i></a><a href="#"><i class="fab fa-youtube"></i></a></div></div>
        </div>
        <div class="copyright">&copy; 2026 MobileHub · crafted with care</div>
    </div>
</footer>

<!-- CART OVERLAY & SIDEBAR -->
<div class="overlay" id="overlay"></div>
<div class="cart-sidebar" id="cartSidebar">
    <div class="cart-header">
        <h2>🛒 Your Cart</h2>
        <button class="close-cart" id="closeCartBtn"><i class="fas fa-times"></i></button>
    </div>
    <div class="cart-items" id="cartItemsContainer">
        <div class="empty-cart-msg">Your cart is empty</div>
    </div>
    <div class="cart-footer">
        <div class="cart-total"><span>Total:</span><span id="cartTotalPrice">₹0</span></div>
        <button class="checkout-btn">Proceed to Checkout</button>
    </div>
</div>

<script>
    (function() {
        // ---------- PRODUCT DATA ----------
        const products = [
            { id: 1, name: 'iPhone 15 Pro', brand: 'Apple', price: 129000, ram: 8, storage: 256, img: '🍎', },
            { id: 2, name: 'Samsung Galaxy S24', brand: 'Samsung', price: 99999, ram: 8, storage: 256, img: '📱', },
            { id: 3, name: 'OnePlus 12', brand: 'OnePlus', price: 69999, ram: 12, storage: 256, img: '⚡', },
            { id: 4, name: 'Xiaomi 14 Pro', brand: 'Xiaomi', price: 69999, ram: 12, storage: 512, img: '📲', },
            { id: 5, name: 'Realme GT 5G', brand: 'Realme', price: 29999, ram: 8, storage: 128, img: '🚀', },
            { id: 6, name: 'Oppo Find X7', brand: 'Oppo', price: 54999, ram: 8, storage: 256, img: '📷', },
            { id: 7, name: 'Vivo X100 Pro', brand: 'Vivo', price: 64999, ram: 12, storage: 256, img: '🎥', },
            { id: 8, name: 'Google Pixel 8 Pro', brand: 'Google', price: 84999, ram: 12, storage: 128, img: '🔍', },
            { id: 9, name: 'iPhone 15', brand: 'Apple', price: 79900, ram: 6, storage: 128, img: '🍏', },
            { id: 10, name: 'Samsung Galaxy A54', brand: 'Samsung', price: 34999, ram: 8, storage: 128, img: '💠', },
            { id: 11, name: 'OnePlus Nord CE', brand: 'OnePlus', price: 24999, ram: 6, storage: 128, img: '🌀', },
            { id: 12, name: 'Xiaomi Redmi Note 13', brand: 'Xiaomi', price: 18999, ram: 6, storage: 128, img: '🔴', },
        ];

        // ---------- STATE ----------
        let cart = [];
        let filteredProducts = [...products];

        // DOM refs
        const productsContainer = document.getElementById('productsContainer');
        const cartItemsContainer = document.getElementById('cartItemsContainer');
        const cartTotalPrice = document.getElementById('cartTotalPrice');
        const cartCount = document.getElementById('cartCount');
        const cartSidebar = document.getElementById('cartSidebar');
        const overlay = document.getElementById('overlay');
        const openCartBtn = document.getElementById('cartOpenBtn');
        const closeCartBtn = document.getElementById('closeCartBtn');

        const brandFilter = document.getElementById('brandFilter');
        const priceFilter = document.getElementById('priceFilter');
        const ramFilter = document.getElementById('ramFilter');
        const storageFilter = document.getElementById('storageFilter');
        const searchInput = document.getElementById('searchInput');

        // nav brand click
        document.querySelectorAll('.nav-links a[data-brand]').forEach(link => {
            link.addEventListener('click', (e) => {
                e.preventDefault();
                const brand = link.dataset.brand;
                brandFilter.value = brand;
                applyFilters();
            });
        });

        // ---------- RENDER ----------
        function renderProducts() {
            if (!productsContainer) return;
            if (filteredProducts.length === 0) {
                productsContainer.innerHTML = `<div style="grid-column:1/-1; text-align:center; padding:40px; color:#6a7fa0;">No mobiles found</div>`;
                return;
            }
            productsContainer.innerHTML = filteredProducts.map(p => {
                const inCart = cart.some(item => item.id === p.id);
                return `
                    <div class="product-card" data-id="${p.id}">
                        <div class="product-img-placeholder" style="font-size:3rem;">${p.img}</div>
                        <h3>${p.name}</h3>
                        <span class="brand-tag">${p.brand}</span>
                        <div class="price">₹${p.price.toLocaleString()}</div>
                        <div class="specs">${p.ram}GB RAM · ${p.storage}GB</div>
                        <button class="add-to-cart" data-id="${p.id}">
                            <i class="fas fa-${inCart ? 'check' : 'plus'}"></i> ${inCart ? 'In Cart' : 'Add to Cart'}
                        </button>
                    </div>
                `;
            }).join('');

            // attach events
            document.querySelectorAll('.add-to-cart').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = parseInt(btn.dataset.id);
                    toggleCart(id);
                });
            });
        }

        // ---------- CART ----------
        function toggleCart(productId) {
            const idx = cart.findIndex(item => item.id === productId);
            if (idx > -1) {
                cart.splice(idx, 1);
            } else {
                const product = products.find(p => p.id === productId);
                if (product) cart.push({ ...product });
            }
            updateCartUI();
            renderProducts();  // refresh buttons state
        }

        function removeFromCart(productId) {
            cart = cart.filter(item => item.id !== productId);
            updateCartUI();
            renderProducts();
        }

        function updateCartUI() {
            const total = cart.reduce((sum, item) => sum + item.price, 0);
            cartTotalPrice.textContent = `₹${total.toLocaleString()}`;
            cartCount.textContent = cart.length;

            if (cart.length === 0) {
                cartItemsContainer.innerHTML = `<div class="empty-cart-msg">Your cart is empty</div>`;
            } else {
                cartItemsContainer.innerHTML = cart.map(item => `
                    <div class="cart-item">
                        <div class="cart-item-info">
                            <span class="cart-item-name">${item.name}</span>
                            <span class="cart-item-price">₹${item.price.toLocaleString()}</span>
                        </div>
                        <button class="cart-item-remove" data-id="${item.id}">Remove</button>
                    </div>
                `).join('');
                // remove buttons
                document.querySelectorAll('.cart-item-remove').forEach(btn => {
                    btn.addEventListener('click', (e) => {
                        const id = parseInt(btn.dataset.id);
                        removeFromCart(id);
                    });
                });
            }
        }

        // ---------- FILTERS ----------
        function applyFilters() {
            const brand = brandFilter.value;
            const priceVal = priceFilter.value;
            const ramVal = ramFilter.value;
            const storageVal = storageFilter.value;
            const search = searchInput.value.toLowerCase().trim();

            filteredProducts = products.filter(p => {
                // brand
                if (brand !== 'all' && p.brand !== brand) return false;
                // price
                if (priceVal !== 'all') {
                    const [min, max] = priceVal.split('-').map(Number);
                    if (priceVal.endsWith('+')) {
                        if (p.price < 100000) return false;
                    } else {
                        if (p.price < min || p.price > max) return false;
                    }
                }
                // ram
                if (ramVal !== 'all' && p.ram !== parseInt(ramVal)) return false;
                // storage
                if (storageVal !== 'all' && p.storage !== parseInt(storageVal)) return false;
                // search
                if (search && !p.name.toLowerCase().includes(search) && !p.brand.toLowerCase().includes(search)) return false;
                return true;
            });
            renderProducts();
        }

        // ---------- SIDEBAR TOGGLE ----------
        function openCart() {
            cartSidebar.classList.add('open');
            overlay.classList.add('active');
            document.body.style.overflow = 'hidden';
        }
        function closeCart() {
            cartSidebar.classList.remove('open');
            overlay.classList.remove('active');
            document.body.style.overflow = '';
        }

        openCartBtn.addEventListener('click', (e) => { e.preventDefault(); openCart(); });
        closeCartBtn.addEventListener('click', closeCart);
        overlay.addEventListener('click', closeCart);

        // ---------- EVENT LISTENERS ----------
        brandFilter.addEventListener('change', applyFilters);
        priceFilter.addEventListener('change', applyFilters);
        ramFilter.addEventListener('change', applyFilters);
        storageFilter.addEventListener('change', applyFilters);
        searchInput.addEventListener('input', applyFilters);
        document.getElementById('searchBtn').addEventListener('click', applyFilters);

        // ---------- INIT ----------
        renderProducts();
        updateCartUI();

        // close cart on escape
        document.addEventListener('keydown', (e) => { if (e.key === 'Escape') closeCart(); });
    })();
</script>
</body>
</html>
