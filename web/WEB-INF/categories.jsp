<%-- 
    Document   : categories
    Created on : 15 Aug 2025, 12:36:02
    Author     : Bavi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Bookshop Discounts</title>
  <link rel="stylesheet" href="styles.css" />
</head>

<style>body {
  font-family: Arial, sans-serif;
  margin: 0;
  background: #f4f4f4;
}

header {
  background: #ff9a5b;
  color: #fff;
  padding: 1rem;
  text-align: center;
}

.book-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
  gap: 1.5rem;
  padding: 2rem;
  background: #fff;
}

.book-card {
  background: #fafafa;
  border: 1px solid #ddd;
  padding: 1rem;
  position: relative;
  text-align: center;
  border-radius: 8px;
}

.book-card img {
  width: 100%;
  height: auto;
  margin-bottom: 0.5rem;
}

.discount-badge {
  position: absolute;
  top: 10px;
  left: 10px;
  background: rgb(227, 92, 20);
  color: white;
  font-size: 0.75rem;
  padding: 0.25rem 0.5rem;
  border-radius: 4px;
}

.discount-badge.yellow {
  background: #ff9a5b;
  color: #000;
}

.price {
  margin-top: 0.5rem;
}

.price .original {
  text-decoration: line-through;
  color: #888;
  margin-right: 0.5rem;
}

.price .discounted {
  color: rgba(255, 140, 0, 0.962);
  font-weight: bold;
}

.subscribe-section {
  background: #eef1f6;
  padding: 2rem;
  text-align: center;
}

.subscribe-section input {
  padding: 0.5rem;
  width: 250px;
  margin-right: 0.5rem;
}

.subscribe-section button {
  padding: 0.5rem 1rem;
  background: #712f03;
  color: white;
  border: none;
  cursor: pointer;
}

footer {
  background: #ff9a5b;
  color: white;
  padding: 2rem 1rem;
}

.footer-content {
  display: flex;
  justify-content: space-around;
  flex-wrap: wrap;
}
</style>
<body>
  <header>
    <h1>Bookshop </h1>
  </header>

  <main class="book-grid">
    <!-- Example Book Card -->
   

    <div class="book-card">
        <div class="discount-badge">45% OFF</div>
        <img src="https://covers.openlibrary.org/b/id/13409020-L.jpg" alt="Book Cover">
        <h3>It Ends With Us</h3>
        <p>Colleen Hoover</p>
        <p class="price"><span class="original">780.00</span> <span class="discounted">429.00</span></p>
    </div>

    <div class="book-card">
        <div class="discount-badge">35% OFF</div>
        <img src="https://covers.openlibrary.org/b/id/13680139-L.jpg" alt="Book Cover">
        <h3>Reminders of Him</h3>
        <p>Colleen Hoover</p>
        <p class="price"><span class="original">800.00</span> <span class="discounted">520.00</span></p>
    </div>

    <div class="book-card">
        <div class="discount-badge yellow">20% OFF</div>
        <img src="https://covers.openlibrary.org/b/id/13558076-L.jpg" alt="Book Cover">
        <h3>Fourth Wing</h3>
        <p>Rebecca Yarros</p>
        <p class="price"><span class="original">1100.00</span> <span class="discounted">880.00</span></p>
    </div>

    <div class="book-card">
      <div class="discount-badge">30% OFF</div>
      <img src="https://covers.openlibrary.org/b/olid/OL7957874M-L.jpg" alt="Book Cover">
      <h3>Art & Photography</h3>
      <p>Steven Heller</p>
      <p class="price"><span class="original">733.90</span> <span class="discounted">602.22</span></p>
    </div>


    <div class="book-card">
      <div class="discount-badge">30% OFF</div>
      <img src="https://covers.openlibrary.org/b/olid/OL7957874M-L.jpg" alt="Book Cover">
      <h3>Poetry</h3>
      <p>Steven Heller</p>
      <p class="price"><span class="original">633.90</span> <span class="discounted">522.22</span></p>
    </div>


    <div class="book-card">
      <div class="discount-badge">30% OFF</div>
      <img src="https://covers.openlibrary.org/b/id/10524829-S.jpg" alt="Book Cover">
      <h3>Graphic Design</h3>
      <p>Steven Heller</p>
      <p class="price"><span class="original">963.90</span> <span class="discounted">822.22</span></p>
    </div>

    <div class="book-card">
      <div class="discount-badge">30% OFF</div>
      <img src="https://covers.openlibrary.org/b/olid/OL24324234M-L.jpg" alt="Book Cover">
      <h3>Travel & Adventure</h3>
      <p>Steven Heller</p>
      <p class="price"><span class="original">593.90</span> <span class="discounted">422.22</span></p>
    </div>

    <div class="book-card">
      <div class="discount-badge">30% OFF</div>
      <img src="https://covers.openlibrary.org/b/id/8414176-L.jpg" alt="Book Cover">
      <h3>Graphic Design</h3>
      <p>Steven Heller</p>
      <p class="price"><span class="original">653.90</span> <span class="discounted">422.22</span></p>
    </div>

    <div class="book-card">
      <div class="discount-badge">30% OFF</div>
      <img src="https://covers.openlibrary.org/b/id/8414187-L.jpg" alt="Book Cover">
      <h3>Religion & Spirituality</h3>
      <p>Steven Heller</p>
      <p class="price"><span class="original">653.90</span> <span class="discounted">462.22</span></p>
    </div>

    <div class="book-card">
      <div class="discount-badge">30% OFF</div>
      <img src="https://covers.openlibrary.org/b/id/8414179-L.jpg" alt="Book Cover">
      <h3>Graphic Design</h3>
      <p> Heller</p>
      <p class="price"><span class="original">933.90</span> <span class="discounted">872.22</span></p>
    </div>

    <div class="book-card">
      <div class="discount-badge">30% OFF</div>
      <img src="https://covers.openlibrary.org/b/id/8414188-L.jpg" alt="Book Cover">
      <h3>Comics & Graphic Novels</h3>
      <p>Steven </p>
      <p class="price"><span class="original">733.90</span> <span class="discounted">622.22</span></p>
    </div>

   

    <!-- Add more book-card divs here... -->

  </main>

  <section class="subscribe-section">
    <h2>Get Special Offer in Your Inbox</h2>
    <form id="subscribe-form">
      <input type="email" id="email" placeholder="Enter your e-mail address here" required />
      <button type="submit">Subscribe</button>
    </form>
    <p id="subscribe-msg"></p>
  </section>

  <footer>
    <div class="footer-content">
      <div>
        <h4>Bookshop</h4>
        <p>Phone: +94 77 123 4567</p>
      <p>Address: 123, Main Street, Colombo, Sri Lanka</p>
        <p>Email: support@pahanaedu.lk</p>
      </div>
      <div>
        <h4>Keep in Touch</h4>
        <p>Facebook | Twitter | Google Plus</p>
      </div>
      <div>
        <h4>Information</h4>
        <p>About Us | Contact Us | FAQ</p>
      </div>
    </div>
  </footer>

  <script src="script.js"></script>
</body>
</html>
