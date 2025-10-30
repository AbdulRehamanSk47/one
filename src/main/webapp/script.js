let cartCount = 0;
let cart = [];

function addToCart(productName, price) {
  const item = { productName, price };
  cart.push(item);
  cartCount++;
  document.getElementById("cart-count").innerText = cartCount;

  alert(`${productName} added to cart!`);
}
