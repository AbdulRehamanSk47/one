// Sample product data
const products = [
    {
        id: 1,
        name: "iPhone 14 Pro Max",
        brand: "apple",
        price: 139900,
        image: "https://via.placeholder.com/200x200/3498db/ffffff?text=iPhone+14+Pro+Max",
        ram: 6,
        storage: 128
    },
    {
        id: 2,
        name: "Samsung Galaxy S23 Ultra",
        brand: "samsung",
        price: 124999,
        image: "https://via.placeholder.com/200x200/e74c3c/ffffff?text=Galaxy+S23+Ultra",
        ram: 12,
        storage: 256
    },
    {
        id: 3,
        name: "OnePlus 11",
        brand: "oneplus",
        price: 61999,
        image: "https://via.placeholder.com/200x200/2ecc71/ffffff?text=OnePlus+11",
        ram: 8,
        storage: 128
    },
    {
        id: 4,
        name: "Xiaomi 13 Pro",
        brand: "xiaomi",
        price: 79999,
        image: "https://via.placeholder.com/200x200/9b59b6/ffffff?text=Xiaomi+13+Pro",
        ram: 12,
        storage: 256
    },
    {
        id: 5,
        name: "Realme GT Neo 3",
        brand: "realme",
        price: 35999,
        image: "https://via.placeholder.com/200x200/f39c12/ffffff?text=Realme+GT+Neo+3",
        ram: 8,
        storage: 128
    },
    {
        id: 6,
        name: "iPhone 13",
        brand: "apple",
        price: 59900,
        image: "https://via.placeholder.com/200x200/3498db/ffffff?text=iPhone+13",
        ram: 4,
        storage: 128
    },
    {
        id: 7,
        name: "Samsung Galaxy Z Flip4",
        brand: "samsung",
        price: 89999,
        image: "https://via.placeholder.com/200x200/e74c3c/ffffff?text=Galaxy+Z+Flip4",
        ram: 8,
        storage: 128
    },
    {
        id: 8,
        name: "OnePlus Nord CE 3",
        brand: "oneplus",
        price: 26999,
        image: "https://via.placeholder.com/200x200/2ecc71/ffffff?text=OnePlus+Nord+CE+3",
        ram: 8,
        storage: 128
    },
    {
        id: 9,
        name: "Xiaomi Redmi Note 12 Pro",
        brand: "xiaomi",
        price: 27999,
        image: "https://via.placeholder.com/200x200/9b59b6/ffffff?text=Redmi+Note+12+Pro",
        ram: 6,
        storage: 128
    },
    {
        id: 10,
        name: "Realme Narzo 60",
        brand: "realme",
        price: 17999,
        image: "https://via.placeholder.com/200x200/f39c12/ffffff?text=Realme+Narzo+60",
        ram: 8,
        storage: 128
    },
    {
        id: 11,
        name: "Google Pixel 7 Pro",
        brand: "google",
        price: 84999,
        image: "https://via.placeholder.com/200x200/34495e/ffffff?text=Pixel+7+Pro",
        ram: 12,
        storage: 128
    },
    {
        id: 12,
        name: "Oppo Reno 8 Pro",
        brand: "oppo",
        price: 45999,
        image: "https://via.placeholder.com/200x200/1abc9c/ffffff?text=Oppo+Reno+8+Pro",
        ram: 12,
        storage: 256
    }
];

// Cart functionality
let cart = [];
const cartBtn = document.querySelector('.cart-btn');
const closeCartBtn = document.getElementById('close-cart');
const cartSidebar = document.getElementById('cart-sidebar');
const overlay = document.getElementById('overlay');
const cartItemsContainer = document.getElementById('cart-items');
const cartTotalPrice = document.getElementById('cart-total-price');
const cartCount = document.querySelector('.cart-count');
const productsContainer = document.getElementById('products-container');

// Initialize the website
document.addEventListener('DOMContentLoaded', function() {
    displayProducts(products);
    setupEventListeners();
});

// Display products in the grid
function displayProducts(productsToDisplay) {
    productsContainer.innerHTML = '';
    
    productsToDisplay.forEach(product => {
        const productCard = document.createElement('div');
        productCard.className = 'product-card';
        productCard.innerHTML = `
            <div class="product-image">
                <img src="${product.image}" alt="${product.name}">
            </div>
            <div class="product-info">
                <div class="product-brand">${product.brand.charAt(0).toUpperCase() + product.brand.slice(1)}</div>
                <div class="product-name">${product.name}</div>
                <div class="product-price">₹${product.price.toLocaleString('en-IN')}</div>
                <div class="product-actions">
                    <button class="add-to-cart" data-id="${product.id}">Add to Cart</button>
                    <button class="wishlist"><i class="far fa-heart"></i></button>
                </div>
            </div>
        `;
        productsContainer.appendChild(productCard);
    });

    // Add event listeners to the add to cart buttons
    document.querySelectorAll('.add-to-cart').forEach(button => {
        button.addEventListener('click', function() {
            const productId = parseInt(this.getAttribute('data-id'));
            addToCart(productId);
        });
    });

    // Add event listeners to wishlist buttons
    document.querySelectorAll('.wishlist').forEach(button => {
        button.addEventListener('click', function() {
            this.innerHTML = this.innerHTML.includes('far') ? 
                '<i class="fas fa-heart" style="color: #e74c3c;"></i>' : 
                '<i class="far fa-heart"></i>';
        });
    });
}

// Setup event listeners
function setupEventListeners() {
    // Cart open/close
    cartBtn.addEventListener('click', openCart);
    closeCartBtn.addEventListener('click', closeCart);
    overlay.addEventListener('click', closeCart);

    // Filter functionality
    document.getElementById('brand').addEventListener('change', filterProducts);
    document.getElementById('price').addEventListener('change', filterProducts);
    document.getElementById('ram').addEventListener('change', filterProducts);
    document.getElementById('storage').addEventListener('change', filterProducts);
}

// Filter products based on selected filters
function filterProducts() {
    const brandFilter = document.getElementById('brand').value;
    const priceFilter = document.getElementById('price').value;
    const ramFilter = document.getElementById('ram').value;
    const storageFilter = document.getElementById('storage').value;

    let filteredProducts = products.filter(product => {
        // Brand filter
        if (brandFilter !== 'all' && product.brand !== brandFilter) {
            return false;
        }

        // Price filter
        if (priceFilter !== 'all') {
            if (priceFilter === '0-15000' && product.price > 15000) return false;
            if (priceFilter === '15000-30000' && (product.price < 15000 || product.price > 30000)) return false;
            if (priceFilter === '30000-50000' && (product.price < 30000 || product.price > 50000)) return false;
            if (priceFilter === '50000-100000' && (product.price < 50000 || product.price > 100000)) return false;
            if (priceFilter === '100000+' && product.price < 100000) return false;
        }

        // RAM filter
        if (ramFilter !== 'all' && product.ram !== parseInt(ramFilter)) {
            return false;
        }

        // Storage filter
        if (storageFilter !== 'all' && product.storage !== parseInt(storageFilter)) {
            return false;
        }

        return true;
    });

    displayProducts(filteredProducts);
}

// Add product to cart
function addToCart(productId) {
    const product = products.find(p => p.id === productId);
    const existingItem = cart.find(item => item.id === productId);

    if (existingItem) {
        existingItem.quantity += 1;
    } else {
        cart.push({
            ...product,
            quantity: 1
        });
    }

    updateCart();
    showNotification(`${product.name} added to cart!`);
}

// Remove product from cart
function removeFromCart(productId) {
    cart = cart.filter(item => item.id !== productId);
    updateCart();
}

// Update cart UI
function updateCart() {
    // Update cart count
    const totalItems = cart.reduce((total, item) => total + item.quantity, 0);
    cartCount.textContent = totalItems;

    // Update cart items
    cartItemsContainer.innerHTML = '';
    
    if (cart.length === 0) {
        cartItemsContainer.innerHTML = '<p>Your cart is empty</p>';
        cartTotalPrice.textContent = '₹0';
        return;
    }

    let totalPrice = 0;
    
    cart.forEach(item => {
        const itemTotal = item.price * item.quantity;
        totalPrice += itemTotal;

        const cartItem = document.createElement('div');
        cartItem.className = 'cart-item';
        cartItem.innerHTML = `
            <div class="cart-item-image">
                <img src="${item.image}" alt="${item.name}">
            </div>
            <div class="cart-item-details">
                <div class="cart-item-name">${item.name}</div>
                <div class="cart-item-price">₹${item.price.toLocaleString('en-IN')} x ${item.quantity}</div>
                <button class="cart-item-remove" data-id="${item.id}">Remove</button>
            </div>
        `;
        cartItemsContainer.appendChild(cartItem);
    });

    // Add event listeners to remove buttons
    document.querySelectorAll('.cart-item-remove').forEach(button => {
        button.addEventListener('click', function() {
            const productId = parseInt(this.getAttribute('data-id'));
            removeFromCart(productId);
        });
    });

    cartTotalPrice.textContent = `₹${totalPrice.toLocaleString('en-IN')}`;
}

// Open cart sidebar
function openCart() {
    cartSidebar.classList.add('active');
    overlay.classList.add('active');
    document.body.style.overflow = 'hidden';
}

// Close cart sidebar
function closeCart() {
    cartSidebar.classList.remove('active');
    overlay.classList.remove('active');
    document.body.style.overflow = 'auto';
}

// Show notification
function showNotification(message) {
    const notification = document.createElement('div');
    notification.style.cssText = `
        position: fixed;
        bottom: 20px;
        right: 20px;
        background: #27ae60;
        color: white;
        padding: 15px 20px;
        border-radius: 4px;
        box-shadow: 0 3px 10px rgba(0,0,0,0.2);
        z-index: 1001;
        transition: transform 0.3s, opacity 0.3s;
    `;
    notification.textContent = message;
    document.body.appendChild(notification);

    setTimeout(() => {
        notification.style.transform = 'translateY(20px)';
        notification.style.opacity = '0';
        setTimeout(() => {
            document.body.removeChild(notification);
        }, 300);
    }, 3000);
}
