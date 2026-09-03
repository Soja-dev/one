<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Nexus · black edition</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: #0b0b0b;
      color: #eaeaea;
      line-height: 1.6;
    }

    :root {
      --bg-primary: #0b0b0b;
      --bg-surface: #151515;
      --bg-elevated: #1e1e1e;
      --border-subtle: #2a2a2a;
      --text-primary: #f0f0f0;
      --text-muted: #9a9a9a;
      --accent: #6c8b7a;
      --accent-glow: rgba(108, 139, 122, 0.15);
      --radius: 20px;
      --shadow: 0 12px 40px rgba(0,0,0,0.7);
      --shadow-hover: 0 24px 56px rgba(0,0,0,0.9);
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ---- header ---- */
    header {
      background: rgba(11, 11, 11, 0.92);
      backdrop-filter: blur(12px);
      border-bottom: 1px solid var(--border-subtle);
      position: sticky;
      top: 0;
      z-index: 50;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 12px 0;
      flex-wrap: wrap;
    }

    .brand {
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 700;
      font-size: 24px;
      letter-spacing: -0.5px;
      color: var(--text-primary);
      display: flex;
      align-items: center;
      gap: 10px;
    }
    .brand i {
      color: var(--accent);
      font-size: 26px;
    }
    .brand span {
      color: var(--accent);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--bg-surface);
      border: 1px solid var(--border-subtle);
      border-radius: 60px;
      padding: 2px 2px 2px 20px;
      flex: 1 1 280px;
      max-width: 420px;
      transition: border-color 0.2s, box-shadow 0.2s;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 3px var(--accent-glow);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      padding: 10px 0;
      font-size: 14px;
      width: 100%;
      outline: none;
      color: var(--text-primary);
    }
    .search-wrap input::placeholder {
      color: #5a5a5a;
    }
    .search-wrap button {
      background: var(--accent);
      border: 0;
      color: #0b0b0b;
      border-radius: 60px;
      padding: 8px 22px;
      font-weight: 700;
      cursor: pointer;
      display: flex;
      align-items: center;
      gap: 8px;
      transition: background 0.2s, transform 0.1s;
    }
    .search-wrap button:hover {
      background: #7fa08c;
      transform: scale(0.97);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 16px;
    }
    .header-actions a {
      color: var(--text-muted);
      font-size: 20px;
      transition: color 0.2s;
    }
    .header-actions a:hover {
      color: var(--accent);
    }

    .cart-badge {
      position: relative;
      display: inline-flex;
      align-items: center;
      gap: 6px;
    }
    .cart-badge .count {
      background: var(--accent);
      color: #0b0b0b;
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
      font-size: 24px;
      color: var(--text-primary);
      cursor: pointer;
    }

    nav.main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
    }
    nav.main-nav ul li a {
      padding: 8px 18px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 14px;
      color: var(--text-muted);
      transition: all 0.2s;
      display: flex;
      align-items: center;
      gap: 8px;
      text-decoration: none;
    }
    nav.main-nav ul li a:hover {
      background: var(--bg-surface);
      color: var(--text-primary);
    }

    #mobileMenu {
      background: var(--bg-surface);
      border-top: 1px solid var(--border-subtle);
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
      padding: 12px 16px;
      border-radius: 12px;
      font-weight: 500;
      color: var(--text-muted);
      text-decoration: none;
    }
    #mobileMenu ul li a:hover {
      background: var(--bg-elevated);
      color: var(--text-primary);
    }

    /* ---- hero ---- */
    .hero {
      background: radial-gradient(ellipse at 20% 30%, #1f2e28, #0a0a0a 80%);
      border-radius: 0 0 48px 48px;
      padding: 72px 20px 80px;
      margin: 0 0 32px;
      text-align: center;
      position: relative;
      overflow: hidden;
      border-bottom: 1px solid var(--border-subtle);
    }
    .hero::after {
      content: "◆";
      font-size: 200px;
      color: rgba(108, 139, 122, 0.04);
      position: absolute;
      right: -20px;
      bottom: -60px;
      font-weight: 300;
      pointer-events: none;
    }
    .hero h1 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 46px;
      font-weight: 700;
      color: var(--text-primary);
      margin-bottom: 14px;
      letter-spacing: -0.02em;
    }
    .hero h1 span {
      color: var(--accent);
    }
    .hero p {
      max-width: 600px;
      margin: 0 auto 32px;
      color: var(--text-muted);
      font-size: 18px;
    }
    .btn-group {
      display: flex;
      gap: 14px;
      justify-content: center;
      flex-wrap: wrap;
    }
    .btn {
      padding: 14px 34px;
      border-radius: 60px;
      font-weight: 600;
      border: 0;
      cursor: pointer;
      font-size: 15px;
      transition: all 0.2s;
      display: inline-flex;
      align-items: center;
      gap: 10px;
      text-decoration: none;
    }
    .btn-primary {
      background: var(--accent);
      color: #0b0b0b;
      box-shadow: 0 8px 24px rgba(108, 139, 122, 0.2);
    }
    .btn-primary:hover {
      background: #7fa08c;
      transform: translateY(-2px);
      box-shadow: 0 14px 32px rgba(108, 139, 122, 0.3);
    }
    .btn-ghost {
      background: transparent;
      border: 1px solid var(--border-subtle);
      color: var(--text-primary);
    }
    .btn-ghost:hover {
      background: var(--bg-surface);
      border-color: var(--accent);
    }

    /* ---- sections ---- */
    .section {
      padding: 48px 0 40px;
    }
    .section-header {
      text-align: center;
      margin-bottom: 36px;
    }
    .section-header h2 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 32px;
      color: var(--text-primary);
      margin-bottom: 6px;
    }
    .section-header p {
      color: var(--text-muted);
    }

    /* categories */
    .cat-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
      gap: 20px;
    }
    .cat-card {
      background: var(--bg-surface);
      border-radius: var(--radius);
      padding: 26px 12px;
      text-align: center;
      border: 1px solid var(--border-subtle);
      transition: all 0.25s;
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      border-color: var(--accent);
      box-shadow: var(--shadow-hover);
      background: var(--bg-elevated);
    }
    .cat-card i {
      font-size: 32px;
      color: var(--accent);
      margin-bottom: 10px;
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 16px;
      color: var(--text-primary);
    }

    /* products */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
      gap: 26px;
    }
    .product {
      background: var(--bg-surface);
      border-radius: var(--radius);
      overflow: hidden;
      border: 1px solid var(--border-subtle);
      transition: transform 0.25s, box-shadow 0.25s, border-color 0.25s;
      display: flex;
      flex-direction: column;
    }
    .product:hover {
      transform: translateY(-6px);
      border-color: var(--accent);
      box-shadow: var(--shadow-hover);
    }
    .product img {
      width: 100%;
      aspect-ratio: 1/1;
      object-fit: cover;
      background: #111;
    }
    .product-body {
      padding: 18px 16px 8px;
      flex: 1;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 17px;
      margin-bottom: 4px;
      color: var(--text-primary);
    }
    .product-body .category-tag {
      font-size: 11px;
      color: var(--text-muted);
      text-transform: uppercase;
      letter-spacing: 0.5px;
      background: var(--bg-elevated);
      padding: 3px 12px;
      border-radius: 30px;
      display: inline-block;
      margin-bottom: 8px;
      border: 1px solid var(--border-subtle);
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 6px;
    }
    .price {
      font-weight: 700;
      font-size: 19px;
      color: var(--text-primary);
    }
    .old-price {
      color: var(--text-muted);
      text-decoration: line-through;
      font-size: 14px;
    }
    .rating {
      color: #d4a24e;
      font-size: 13px;
      display: flex;
      align-items: center;
      gap: 4px;
      margin-top: 4px;
    }
    .rating span {
      color: var(--text-muted);
      font-size: 12px;
    }
    .product-footer {
      padding: 8px 16px 18px;
      display: flex;
      gap: 10px;
    }
    .add-btn {
      flex: 1;
      background: var(--accent);
      color: #0b0b0b;
      border: 0;
      padding: 11px;
      border-radius: 40px;
      font-weight: 700;
      cursor: pointer;
      transition: background 0.2s, transform 0.1s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }
    .add-btn:hover {
      background: #7fa08c;
      transform: scale(0.98);
    }
    .wish-btn {
      background: transparent;
      border: 1px solid var(--border-subtle);
      padding: 8px 16px;
      border-radius: 40px;
      cursor: pointer;
      color: var(--text-muted);
      transition: 0.2s;
    }
    .wish-btn:hover {
      border-color: var(--accent);
      color: var(--accent);
    }

    /* flash deal */
    .deal-card {
      background: var(--bg-surface);
      border-radius: 32px;
      display: flex;
      gap: 16px;
      align-items: stretch;
      border: 1px solid var(--border-subtle);
      overflow: hidden;
      flex-wrap: wrap;
    }
    .deal-card img {
      width: 45%;
      min-width: 260px;
      object-fit: cover;
      max-height: 340px;
      background: #111;
    }
    .deal-content {
      padding: 32px 36px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-content h3 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 28px;
      color: var(--text-primary);
    }
    .timer {
      display: flex;
      gap: 14px;
      margin: 18px 0;
    }
    .time-box {
      background: var(--bg-elevated);
      border: 1px solid var(--border-subtle);
      color: var(--text-primary);
      padding: 10px 16px;
      border-radius: 16px;
      min-width: 64px;
      text-align: center;
    }
    .time-box div:first-child {
      font-size: 24px;
      font-weight: 700;
      color: var(--accent);
    }
    .time-box div:last-child {
      font-size: 11px;
      color: var(--text-muted);
      text-transform: uppercase;
    }

    /* testimonials */
    .testi-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
    }
    .testi-card {
      min-width: 290px;
      background: var(--bg-surface);
      border-radius: var(--radius);
      padding: 24px;
      border: 1px solid var(--border-subtle);
      scroll-snap-align: start;
    }
    .testi-card .stars {
      color: #d4a24e;
      font-size: 16px;
      letter-spacing: 2px;
    }

    /* newsletter */
    .newsletter-box {
      background: linear-gradient(135deg, #121212, #1a1a1a);
      border: 1px solid var(--border-subtle);
      border-radius: 36px;
      padding: 48px 32px;
      text-align: center;
      box-shadow: var(--shadow);
    }
    .newsletter-box h3 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 28px;
      color: var(--text-primary);
    }
    .newsletter-box p {
      color: var(--text-muted);
      margin-bottom: 18px;
    }
    .newsletter-box form {
      display: flex;
      justify-content: center;
      gap: 12px;
      flex-wrap: wrap;
    }
    .newsletter-box input {
      padding: 14px 24px;
      border-radius: 60px;
      border: 1px solid var(--border-subtle);
      background: var(--bg-elevated);
      color: var(--text-primary);
      width: 300px;
      max-width: 100%;
      font-size: 15px;
      transition: border-color 0.2s;
    }
    .newsletter-box input::placeholder {
      color: #5a5a5a;
    }
    .newsletter-box input:focus {
      outline: 0;
      border-color: var(--accent);
    }
    .newsletter-box .btn-primary {
      background: var(--accent);
      color: #0b0b0b;
    }
    .newsletter-box .btn-primary:hover {
      background: #7fa08c;
    }

    /* footer */
    footer {
      padding: 44px 0 24px;
      border-top: 1px solid var(--border-subtle);
      margin-top: 16px;
      color: var(--text-muted);
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
      gap: 48px;
      flex-wrap: wrap;
    }
    .footer-links div {
      line-height: 2;
    }
    .footer-links div strong {
      color: var(--text-primary);
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
      <h1>Dark <span>vibes</span>, fresh finds</h1>
      <p>Curated tech, style & accessories — with a monochrome edge. Limited drops.</p>
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
        <p style="color:var(--text-muted);">ultraportable · next‑gen performance</p>
        <div class="timer">
          <div class="time-box"><div id="dealDays">0</div><div>days</div></div>
          <div class="time-box"><div id="dealHours">00</div><div>hrs</div></div>
          <div class="time-box"><div id="dealMinutes">00</div><div>min</div></div>
          <div class="time-box"><div id="dealSeconds">00</div><div>sec</div></div>
        </div>
        <div style="display:flex;align-items:center;gap:16px;flex-wrap:wrap;">
          <span class="price">$999</span>
          <span class="old-price">$1,199</span>
          <span style="background:#a04a4a;color:white;padding:4px 14px;border-radius:40px;font-weight:700;">−17%</span>
        </div>
        <p style="margin:8px 0 12px;color:var(--text-muted);"><strong style="color:var(--text-primary);">12</strong> items left</p>
        <button class="btn btn-primary" id="buyDeal" style="align-self:flex-start;"><i class="fas fa-bolt"></i> Buy now</button>
      </div>
    </div>
  </section>

  <!-- Testimonials -->
  <section class="section container">
    <div class="section-header">
      <h2>Real reviews</h2>
      <p>from people who love the dark side</p>
    </div>
    <div class="testi-scroll" id="testimonials">
      <div class="testi-card">
        <div class="stars">★★★★★</div>
        <p style="margin:8px 0;color:var(--text-primary);">“Fast shipping & the packaging was gorgeous. Love the vibe.”</p>
        <div style="display:flex;align-items:center;gap:10px;margin-top:12px;">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=60&h=60&q=80" alt="avatar" style="width:44px;height:44px;border-radius:40px;object-fit:cover;border:1px solid var(--border-subtle);">
          <div><strong style="color:var(--text-primary);">Ava Martin</strong><div style="color:var(--text-muted);font-size:13px;">verified</div></div>
        </div>
      </div>
      <div class="testi-card">
        <div class="stars">★★★★☆</div>
        <p style="margin:8px 0;color:var(--text-primary);">“Exactly what I needed. The deals are incredible.”</p>
        <div style="display:flex;align-items:center;gap:10px;margin-top:12px;">
          <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=60&h=60&q=80" alt="avatar" style="width:44px;height:44px;border-radius:40px;object-fit:cover;border:1px solid var(--border-subtle);">
          <div><strong style="color:var(--text-primary);">Michael Lee</strong><div style="color:var(--text-muted);font-size:13px;">frequent buyer</div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- Newsletter -->
  <section class="section container">
    <div class="newsletter-box">
      <h3><i class="fas fa-envelope" style="margin-right:10px;color:var(--accent);"></i> Stay in the loop</h3>
      <p>Exclusive offers & new arrivals — no spam, we promise.</p>
      <form id="newsletterForm" onsubmit="return false;">
        <input type="email" id="newsletterEmail" placeholder="Your email address" required>
        <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:14px;font-size:14px;display:none;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer-grid">
    <div class="footer-brand">
      <div class="brand"><i class="fas fa-leaf"></i> Nexus<span>Shop</span></div>
      <p style="color:var(--text-muted);margin-top:8px;">Black‑edition e‑commerce demo — sleek, minimal, curated.</p>
      <div style="display:flex;gap:14px;margin-top:14px;">
        <a href="#" style="color:var(--text-muted);font-size:18px;transition:color 0.2s;"><i class="fab fa-facebook"></i></a>
        <a href="#" style="color:var(--text-muted);font-size:18px;transition:color 0.2s;"><i class="fab fa-twitter"></i></a>
        <a href="#" style="color:var(--text-muted);font-size:18px;transition:color 0.2s;"><i class="fab fa-instagram"></i></a>
      </div>
    </div>
    <div class="footer-links">
      <div><strong>Company</strong> About<br>Careers<br>Press</div>
      <div><strong>Support</strong> Help Center<br>Shipping<br>Contact</div>
    </div>
  </div>
  <div style="text-align:center;margin-top:32px;font-size:13px;color:var(--text-muted);">© <span id="year"></span> NexusShop · all rights reserved</div>
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
      const badgeHtml = p.badge ? `<span style="background:#a04a4a;color:white;padding:2px 14px;border-radius:30px;font-size:12px;font-weight:600;">${p.badge}</span>` : '';
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
      btn.addEventListener('click', ()
