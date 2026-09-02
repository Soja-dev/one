<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop · sea green</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: #f5fbfa;
      color: #1e2f2b;
      line-height: 1.5;
    }

    :root {
      --sea: #2e8b7a;
      --sea-light: #e3f3ef;
      --sea-dark: #1a5f52;
      --sea-glow: rgba(46, 139, 122, 0.10);
      --surface: #ffffff;
      --muted: #5b6f6a;
      --radius: 18px;
      --shadow: 0 12px 28px rgba(46, 139, 122, 0.08);
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ---- header ---- */
    header {
      background: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(6px);
      border-bottom: 1px solid rgba(46, 139, 122, 0.12);
      position: sticky;
      top: 0;
      z-index: 50;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 14px 0;
      flex-wrap: wrap;
    }

    .brand {
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 22px;
      letter-spacing: -0.3px;
      color: #1e2f2b;
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .brand i {
      color: var(--sea);
      font-size: 24px;
    }
    .brand span {
      color: var(--sea);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: white;
      border: 1px solid rgba(46, 139, 122, 0.20);
      border-radius: 60px;
      padding: 4px 4px 4px 18px;
      box-shadow: 0 4px 12px rgba(46, 139, 122, 0.04);
      flex: 1 1 280px;
      max-width: 400px;
      transition: box-shadow 0.2s;
    }
    .search-wrap:focus-within {
      box-shadow: 0 4px 16px rgba(46, 139, 122, 0.16);
      border-color: var(--sea);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      padding: 10px 0;
      font-size: 14px;
      width: 100%;
      outline: none;
      color: #1e2f2b;
    }
    .search-wrap input::placeholder {
      color: #98aea8;
    }
    .search-wrap button {
      background: var(--sea);
      border: 0;
      color: white;
      border-radius: 60px;
      padding: 8px 18px;
      font-weight: 600;
      cursor: pointer;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: background 0.15s;
    }
    .search-wrap button:hover {
      background: var(--sea-dark);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .header-actions a {
      color: #1e2f2b;
      font-size: 18px;
      transition: color 0.15s;
    }
    .header-actions a:hover {
      color: var(--sea);
    }

    .cart-badge {
      position: relative;
      display: inline-flex;
      align-items: center;
      gap: 6px;
    }
    .cart-badge .count {
      background: var(--sea);
      color: white;
      font-size: 11px;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 40px;
      display: inline-grid;
      place-items: center;
      margin-left: -6px;
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: 0;
      font-size: 22px;
      color: #1e2f2b;
      cursor: pointer;
    }

    nav.main-nav ul {
      display: flex;
      gap: 6px;
      list-style: none;
    }
    nav.main-nav ul li a {
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 14px;
      color: #1e2f2b;
      transition: all 0.1s;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    nav.main-nav ul li a:hover {
      background: var(--sea-light);
      color: var(--sea-dark);
    }

    #mobileMenu {
      background: white;
      border-top: 1px solid rgba(46, 139, 122, 0.08);
      padding: 12px 0;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    #mobileMenu ul li a {
      display: block;
      padding: 10px 16px;
      border-radius: 12px;
      font-weight: 500;
      color: #1e2f2b;
    }
    #mobileMenu ul li a:hover {
      background: var(--sea-light);
    }

    /* ---- hero ---- */
    .hero {
      background: linear-gradient(145deg, #d7efe9, #c0e2da);
      border-radius: 0 0 40px 40px;
      padding: 56px 20px 64px;
      margin: 0 0 28px;
      text-align: center;
      position: relative;
      overflow: hidden;
    }
    .hero::after {
      content: "✦";
      font-size: 180px;
      color: rgba(46, 139, 122, 0.08);
      position: absolute;
      right: -20px;
      bottom: -40px;
      font-weight: 300;
      pointer-events: none;
    }
    .hero h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 40px;
      font-weight: 700;
      color: #12312a;
      margin-bottom: 12px;
      letter-spacing: -0.02em;
    }
    .hero p {
      max-width: 640px;
      margin: 0 auto 24px;
      color: #1f433b;
      opacity: 0.85;
      font-size: 17px;
    }
    .btn-group {
      display: flex;
      gap: 12px;
      justify-content: center;
      flex-wrap: wrap;
    }
    .btn {
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      border: 0;
      cursor: pointer;
      font-size: 15px;
      transition: all 0.15s;
      display: inline-flex;
      align-items: center;
      gap: 10px;
    }
    .btn-primary {
      background: var(--sea);
      color: white;
    }
    .btn-primary:hover {
      background: var(--sea-dark);
      transform: scale(1.02);
    }
    .btn-ghost {
      background: rgba(255, 255, 255, 0.6);
      backdrop-filter: blur(4px);
      border: 1px solid rgba(46, 139, 122, 0.2);
      color: #1e2f2b;
    }
    .btn-ghost:hover {
      background: white;
    }

    /* ---- sections ---- */
    .section {
      padding: 40px 0 32px;
    }
    .section-header {
      text-align: center;
      margin-bottom: 28px;
    }
    .section-header h2 {
      font-family: 'Poppins', sans-serif;
      font-size: 28px;
      color: #12312a;
      margin-bottom: 4px;
    }
    .section-header p {
      color: var(--muted);
    }

    /* categories */
    .cat-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(130px, 1fr));
      gap: 18px;
    }
    .cat-card {
      background: white;
      border-radius: 20px;
      padding: 22px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: all 0.2s;
      cursor: pointer;
      border: 1px solid transparent;
    }
    .cat-card:hover {
      transform: translateY(-5px);
      border-color: var(--sea);
      box-shadow: 0 20px 32px rgba(46, 139, 122, 0.10);
    }
    .cat-card i {
      font-size: 30px;
      color: var(--sea);
      margin-bottom: 8px;
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 15px;
      color: #1e2f2b;
    }

    /* products */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 24px;
    }
    .product {
      background: white;
      border-radius: 24px;
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: transform 0.2s, box-shadow 0.2s;
      display: flex;
      flex-direction: column;
      border: 1px solid rgba(46, 139, 122, 0.04);
    }
    .product:hover {
      transform: translateY(-5px);
      box-shadow: 0 24px 40px rgba(46, 139, 122, 0.08);
    }
    .product img {
      width: 100%;
      aspect-ratio: 1/1;
      object-fit: cover;
      background: #f2faf8;
    }
    .product-body {
      padding: 16px 14px 8px;
      flex: 1;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 16px;
      margin-bottom: 4px;
      color: #12312a;
    }
    .product-body .category-tag {
      font-size: 12px;
      color: var(--muted);
      text-transform: capitalize;
      background: var(--sea-light);
      padding: 2px 10px;
      border-radius: 20px;
      display: inline-block;
      margin-bottom: 6px;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 6px;
    }
    .price {
      font-weight: 700;
      font-size: 18px;
      color: #12312a;
    }
    .old-price {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 14px;
    }
    .rating {
      color: #f5b342;
      font-size: 13px;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .rating span {
      color: var(--muted);
      font-size: 12px;
    }
    .product-footer {
      padding: 8px 14px 16px;
      display: flex;
      gap: 10px;
    }
    .add-btn {
      flex: 1;
      background: var(--sea);
      color: white;
      border: 0;
      padding: 10px;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: background 0.15s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }
    .add-btn:hover {
      background: var(--sea-dark);
    }
    .wish-btn {
      background: transparent;
      border: 1px solid #e0ebe7;
      padding: 8px 14px;
      border-radius: 40px;
      cursor: pointer;
      color: #5b6f6a;
      transition: 0.1s;
    }
    .wish-btn:hover {
      background: var(--sea-light);
      color: var(--sea);
    }

    /* flash deal */
    .deal-card {
      background: white;
      border-radius: 28px;
      display: flex;
      gap: 12px;
      align-items: stretch;
      box-shadow: var(--shadow);
      overflow: hidden;
      flex-wrap: wrap;
    }
    .deal-card img {
      width: 45%;
      min-width: 260px;
      object-fit: cover;
      max-height: 320px;
      background: #eef7f4;
    }
    .deal-content {
      padding: 28px 32px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-content h3 {
      font-family: 'Poppins', sans-serif;
      font-size: 26px;
      color: #12312a;
    }
    .timer {
      display: flex;
      gap: 12px;
      margin: 16px 0;
    }
    .time-box {
      background: var(--sea-dark);
      color: white;
      padding: 8px 14px;
      border-radius: 14px;
      min-width: 60px;
      text-align: center;
    }
    .time-box div:first-child {
      font-size: 22px;
      font-weight: 700;
    }
    .time-box div:last-child {
      font-size: 11px;
      opacity: 0.8;
    }

    /* testimonials */
    .testi-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 12px;
      scroll-snap-type: x mandatory;
    }
    .testi-card {
      min-width: 280px;
      background: white;
      border-radius: 24px;
      padding: 20px;
      box-shadow: var(--shadow);
      scroll-snap-align: start;
      border: 1px solid rgba(46, 139, 122, 0.04);
    }
    .testi-card .stars {
      color: #f5b342;
      font-size: 15px;
      letter-spacing: 2px;
    }

    /* newsletter */
    .newsletter-box {
      background: var(--sea-dark);
      border-radius: 32px;
      padding: 40px 28px;
      text-align: center;
      color: white;
    }
    .newsletter-box h3 {
      font-family: 'Poppins', sans-serif;
      font-size: 26px;
    }
    .newsletter-box p {
      opacity: 0.8;
      margin-bottom: 16px;
    }
    .newsletter-box form {
      display: flex;
      justify-content: center;
      gap: 10px;
      flex-wrap: wrap;
    }
    .newsletter-box input {
      padding: 14px 22px;
      border-radius: 60px;
      border: 0;
      width: 300px;
      max-width: 100%;
      background: rgba(255, 255, 255, 0.15);
      color: white;
      backdrop-filter: blur(4px);
    }
    .newsletter-box input::placeholder {
      color: rgba(255, 255, 255, 0.6);
    }
    .newsletter-box input:focus {
      outline: 2px solid rgba(255, 255, 255, 0.3);
    }
    .newsletter-box .btn-primary {
      background: white;
      color: var(--sea-dark);
    }
    .newsletter-box .btn-primary:hover {
      background: #f0faf7;
    }

    /* footer */
    footer {
      padding: 40px 0 24px;
      border-top: 1px solid rgba(46, 139, 122, 0.08);
      margin-top: 16px;
      color: var(--muted);
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      gap: 32px;
      justify-content: space-between;
    }
    .footer-brand {
      max-width: 300px;
    }
    .footer-brand .brand {
      font-size: 20px;
    }
    .footer-links {
      display: flex;
      gap: 40px;
      flex-wrap: wrap;
    }
    .footer-links div {
      line-height: 1.8;
    }
    .footer-links div strong {
      color: #1e2f2b;
      display: block;
      margin-bottom: 6px;
    }

    /* responsive */
    @media (max-width: 860px) {
      nav.main-nav {
        display: none;
      }
      .mobile-toggle {
        display: inline-block;
      }
      .search-wrap {
        order: 10;
        flex: 1 1 100%;
        max-width: 100%;
      }
      .deal-card img {
        width: 100%;
        max-height: 200px;
      }
    }
    @media (max-width: 500px) {
      .hero h1 {
        font-size: 30px;
      }
      .product-grid {
        grid-template-columns: 1fr 1fr;
        gap: 14px;
      }
      .cat-grid {
        grid-template-columns: repeat(3, 1fr);
      }
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:12px;">
      <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-leaf"></i> Nexus<span>Shop</span></a>
    </div>

    <nav class="main-nav" id="mainNav">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      </ul>
    </nav>

    <div class="header-actions">
      <div class="search-wrap">
        <input type="text" id="searchInput" placeholder="Search products..." />
        <button id="searchBtn"><i class="fas fa-search"></i> Find</button>
      </div>
      <a href="#" aria-label="Account"><i class="far fa-user"></i></a>
      <a href="#" class="cart-badge" id="cartBtn">
        <i class="fas fa-shopping-bag"></i>
        <span class="count" id="cartCount">0</span>
      </a>
    </div>
  </div>

  <div id="mobileMenu" style="display:none;">
    <div class="container">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#categories">Categories</a></li>
        <li><a href="#products">Trending</a></li>
        <li><a href="#deals">Deals</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- Hero -->
  <section class="hero">
    <div class="container">
      <h1>Fresh finds, sea‑green vibes</h1>
      <p>Curated style, tech & accessories — with a splash of calm. Limited deals, always.</p>
      <div class="btn-group">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-store"></i> Shop now</button>
        <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Flash sale</button>
      </div>
    </div>
  </section>

  <!-- Categories -->
  <section class="section container" id="categories">
    <div class="section-header">
      <h2>Shop by category</h2>
      <p>tap any tile to filter products</p>
    </div>
    <div class="cat-grid" id="categoriesGrid"></div>
  </section>

  <!-- Products -->
  <section class="section container" id="products">
    <div class="section-header">
      <h2>Trending now</h2>
      <p>popular picks · fresh stock</p>
    </div>
    <div class="product-grid" id="productsGrid"></div>
  </section>

  <!-- Flash deal -->
  <section class="section container" id="deals">
    <div class="section-header">
      <h2>⚡ Flash deal</h2>
      <p>hurry, time is ticking</p>
    </div>
    <div class="deal-card">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook Air" loading="lazy">
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p class="muted">ultraportable · next‑gen performance</p>
        <div class="timer">
          <div class="time-box"><div id="dealDays">0</div><div>days</div></div>
          <div class="time-box"><div id="dealHours">00</div><div>hrs</div></div>
          <div class="time-box"><div id="dealMinutes">00</div><div>min</div></div>
          <div class="time-box"><div id="dealSeconds">00</div><div>sec</div></div>
        </div>
        <div style="display:flex;align-items:center;gap:16px;flex-wrap:wrap;">
          <span class="price">$999</span>
          <span class="old-price">$1,199</span>
          <span style="background:#e74c5e;color:white;padding:4px 12px;border-radius:40px;font-weight:700;">−17%</span>
        </div>
        <p style="margin:6px 0 10px;"><strong>12</strong> items left</p>
        <button class="btn btn-primary" id="buyDeal" style="align-self:flex-start;"><i class="fas fa-bolt"></i> Buy now</button>
      </div>
    </div>
  </section>

  <!-- Testimonials -->
  <section class="section container">
    <div class="section-header">
      <h2>Real reviews</h2>
      <p>from people who love sea‑green</p>
    </div>
    <div class="testi-scroll" id="testimonials">
      <div class="testi-card">
        <div class="stars">★★★★★</div>
        <p style="margin:6px 0;">“Fast shipping & the packaging was gorgeous. Love the vibe.”</p>
        <div style="display:flex;align-items:center;gap:10px;margin-top:10px;">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=60&h=60&q=80" alt="avatar" style="width:40px;height:40px;border-radius:40px;object-fit:cover;">
          <div><strong>Ava Martin</strong><div class="muted" style="font-size:13px;">verified</div></div>
        </div>
      </div>
      <div class="testi-card">
        <div class="stars">★★★★☆</div>
        <p style="margin:6px 0;">“Exactly what I needed. The deals are incredible.”</p>
        <div style="display:flex;align-items:center;gap:10px;margin-top:10px;">
          <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=60&h=60&q=80" alt="avatar" style="width:40px;height:40px;border-radius:40px;object-fit:cover;">
          <div><strong>Michael Lee</strong><div class="muted" style="font-size:13px;">frequent buyer</div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- Newsletter -->
  <section class="section container">
    <div class="newsletter-box">
      <h3><i class="fas fa-envelope" style="margin-right:8px;"></i> Stay in the loop</h3>
      <p>Exclusive offers & new arrivals — no spam, we promise.</p>
      <form id="newsletterForm" onsubmit="return false;">
        <input type="email" id="newsletterEmail" placeholder="Your email address" required>
        <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:10px;font-size:14px;display:none;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer-grid">
    <div class="footer-brand">
      <div class="brand"><i class="fas fa-leaf"></i> Nexus<span>Shop</span></div>
      <p class="muted" style="margin-top:8px;">Sea‑green e‑commerce demo — clean, calm, curated.</p>
      <div style="display:flex;gap:12px;margin-top:12px;">
        <a href="#" style="color:var(--muted);"><i class="fab fa-facebook"></i></a>
        <a href="#" style="color:var(--muted);"><i class="fab fa-twitter"></i></a>
        <a href="#" style="color:var(--muted);"><i class="fab fa-instagram"></i></a>
      </div>
    </div>
    <div class="footer-links">
      <div><strong>Company</strong> About<br>Careers<br>Press</div>
      <div><strong>Support</strong> Help Center<br>Shipping<br>Contact</div>
    </div>
  </div>
  <div style="text-align:center;margin-top:28px;font-size:13px;color:var(--muted);">© <span id="year"></span> NexusShop · all rights reserved</div>
</footer>

<script>
  // -------- data --------
  const CATEGORIES = [
    { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
    { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
    { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
  ];

  const PRODUCTS = [
    { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category: 'phones' },
    { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category: 'laptops' },
    { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '−25%', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
    { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category: 'footwear' },
    { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category: 'gadgets' },
    { id: 6, title: 'Chanel No.5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
    { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
    { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category: 'gadgets' }
  ];

  // -------- state --------
  let cartCount = 0;

  // -------- helpers --------
  function renderCategories() {
    const grid = document.getElementById('categoriesGrid');
    grid.innerHTML = '';
    CATEGORIES.forEach(c => {
      const div = document.createElement('div');
      div.className = 'cat-card';
      div.innerHTML = `<i class="fas ${c.icon}"></i><h4>${c.name}</h4>`;
      div.addEventListener('click', () => {
        document.getElementById('searchInput').value = c.name;
        filterProducts(c.name);
        document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
      });
      grid.appendChild(div);
    });
  }

  function renderProducts(list) {
    const grid = document.getElementById('productsGrid');
    grid.innerHTML = '';
    list.forEach(p => {
      const el = document.createElement('div');
      el.className = 'product';
      const badgeHtml = p.badge ? `<span style="background:#e74c5e;color:white;padding:2px 12px;border-radius:30px;font-size:12px;font-weight:600;">${p.badge}</span>` : '';
      el.innerHTML = `
        <img src="${p.img}" alt="${p.title}" loading="lazy">
        <div class="product-body">
          <div style="display:flex;justify-content:space-between;align-items:center;">
            <span class="category-tag">${p.category}</span>
            ${badgeHtml}
          </div>
          <h5>${p.title}</h5>
          <div class="price-row">
            <span class="price">$${p.price.toLocaleString()}</span>
            ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
          </div>
          <div class="rating"><i class="fas fa-star"></i> ${p.rating} <span>(${p.reviews})</span></div>
        </div>
        <div class="product-footer">
          <button class="add-btn" data-id="${p.id}"><i class="fas fa-plus"></i> Add</button>
          <button class="wish-btn"><i class="far fa-heart"></i></button>
        </div>
      `;
      grid.appendChild(el);
    });
    document.querySelectorAll('.add-btn').forEach(btn => {
      btn.addEventListener('click', () => {
        const id = Number(btn.dataset.id);
        addToCart(id);
      });
    });
  }

  function addToCart(id) {
    const p = PRODUCTS.find(x => x.id === id);
    if (!p) return;
    cartCount++;
    document.getElementById('cartCount').textContent = cartCount;
    const btn = document.querySelector(`.add-btn[data-id="${id}"]`);
    if (btn) {
      const orig = btn.innerHTML;
      btn.innerHTML = '<i class="fas fa-check"></i> Added';
      btn.disabled = true;
      setTimeout(() => { btn.innerHTML = orig; btn.disabled = false; }, 1200);
    }
  }

  function filterProducts(query) {
    const q = String(query || '').trim().toLowerCase();
    if (!q) { renderProducts(PRODUCTS); return; }
    const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
    renderProducts(filtered);
  }

  // -------- search --------
  document.getElementById('searchBtn').addEventListener('click', () => filterProducts(document.getElementById('searchInput').value));
  document.getElementById('searchInput').addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });

  // -------- mobile menu --------
  document.getElementById('mobileToggle').addEventListener('click', () => {
    const mm = document.getElementById('mobileMenu');
    mm.style.display = mm.style.display === 'none' || !mm.style.display ? 'block' : 'none';
  });

  // -------- newsletter --------
  document.getElementById('newsletterForm').addEventListener('submit', (e) => {
    e.preventDefault();
    const email = document.getElementById('newsletterEmail').value.trim();
    const msg = document.getElementById('newsletterMsg');
    if (!email || !email.includes('
