<%-- 
    Document   : index.jsp
    Created on : 13 Aug 2025, 12:07:06
    Author     : Bavi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Pahana Edu</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background: border-box;
    }

    header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 10px 20px;
      background: border-box;
      box-shadow: 0 2px 5px rgba(0,0,0,0.05);
    }

    .logo {
      font-size: 24px;
      font-weight: bold;
      color: brown;
    }

    nav a {
      margin: 0 15px;
      text-decoration: none;
      color: brown;
      font-weight: 500;
    }

    .search-bar {
      padding: 8px;
      border: 1px solid buttonface;
      border-radius: 4px;
    }

    .hero {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 60px 150px;
      background-color: bisque;
    }

    .hero-text h1 {
      font-size: 36px;
      margin-bottom: 10px;
    }

    .hero-text span {
      color: brown;
      font-weight: 700;
    }

    .hero-text button {
      margin-top: 20px;
      padding: 10px 20px;
      background: brown;
      color: white;
      border: none;
      cursor: pointer;
    }

    .carousel {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 10px;
    }

    .carousel img {
      height: 250px;
      border-radius: 8px;
      transition: transform 0.3s;
    }

    .carousel img:hover {
      transform: scale(1.05);
    }

    @media(max-width: 768px) {
      .hero {
        flex-direction: column;
        align-items: flex-start;
      }

      .carousel {
        justify-content: flex-start;
      }
    }
      footer {
      background-color: #222;
      color: #eee;
      padding: 40px 60px;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
    }

    .footer-section {
      flex: 1 1 200px;
      margin: 10px;
    }

    .footer-section h3 {
      border-bottom: 2px solid brown;
      padding-bottom: 10px;
      margin-bottom: 15px;
    }

    .footer-section p, .footer-section a {
      color: #ccc;
      font-size: 14px;
      text-decoration: none;
      display: block;
      margin: 5px 0;
    }

    .footer-bottom {
      text-align: center;
      color: #aaa;
      padding: 15px 0;
      background: #111;
    }

    @media(max-width: 768px) {
      .hero {
        flex-direction: column;
        align-items: flex-start;
        padding: 40px 20px;
      }

      footer {
        flex-direction: column;
        padding: 30px;
      }
    }
    
    
  </style>
</head>
<body>

  <header>
    <div class="logo">Pahana <span style="color:black">Edu</span></div>
    <nav>
      <a href="Home.html">Home</a>
      <a href="#">Categories</a>
      <a href="#">Shop</a>
      <a href="#">Books</a>
      <a href="#">Blog</a>
    </nav>
    <input class="search-bar" type="text" placeholder="Search by Keywords">
    <div class="hero-text">
     <button onclick="window.location.href='login.jsp'">Sign Up</button>
    </div>
  </header>

  <section class="hero">
    <div class="hero-text">
      <small style="color: grey;">FAVORITE PICKS FOR KIDS</small>
      <h1>Discover Magical and Innovative <span>  Books Here </span></h1>
      <button>See More</button>
    </div>
    <div class="carousel" id="book-carousel">
      <img src="https://covers.openlibrary.org/b/id/10524829-L.jpg" alt="Book 2">
      <img src="https://covers.openlibrary.org/b/id/10524855-L.jpg" alt="Book 3">
      <img src="https://covers.openlibrary.org/b/id/10525208-L.jpg" alt="Book 4">
      <img src="https://covers.openlibrary.org/b/id/10525153-L.jpg" alt="Book 5">
      <img src="https://covers.openlibrary.org/b/id/10524315-L.jpg" alt="The Tale of Peter Rabbit">
      <img src="https://covers.openlibrary.org/b/id/8228691-L.jpg" alt="The Wind in the Willows">
      <img src="https://covers.openlibrary.org/b/id/10903220-L.jpg" alt="The Little Prince">
    </div>
  </section>
    <section>

       <div class="carousel" id="book-carousel">
      <img src="https://covers.openlibrary.org/b/id/12601725-L.jpg" alt="Book 2">
      <img src="https://covers.openlibrary.org/b/id/13574436-L.jpg" alt="Book 3">
      <img src="https://covers.openlibrary.org/b/id/13257041-L.jpg" alt="Book 4">
      <img src="https://covers.openlibrary.org/b/id/10958375-L.jpg" alt="Book 5">
      <img src="https://covers.openlibrary.org/b/id/13409020-L.jpg" alt="The Tale of Peter Rabbit">
      <img src="https://covers.openlibrary.org/b/id/13558076-L.jpg" alt="The Wind in the Willows">
      <img src="https://covers.openlibrary.org/b/id/12829753-L.jpg" alt="The Little Prince">
      <img src= "https://covers.openlibrary.org/b/id/13257041-L.jpg"alt="Book 6">
    </div>
    </section>

  <footer>
    <div class="footer-section">
      <h3>About Pahana Edu</h3>
      <p>Your trusted online bookshop for children’s literature and educational materials. Explore a wide range of story books and learning tools for all ages.</p>
    </div>

    <div class="footer-section">
      <h3>Quick Links</h3>
      <a href="#">Home</a>
      <a href="#">Categories</a>
      <a href="#">My Account</a>
      <a href="#">Cart</a>
      <a href="#">Contact Us</a>
    </div>

    <div class="footer-section">
      <h3>Contact Info</h3>
      <p>Email: support@pahanaedu.lk</p>
      <p>Phone: +94 77 123 4567</p>
      <p>Address: 123, Main Street, Colombo, Sri Lanka</p>
    </div>
  </footer>
</section>
 

  <script>
    const carousel = document.getElementById('book-carousel');
    let scrollPosition = 0;

    setInterval(() => {
      scrollPosition += 170;
      if (scrollPosition > carousel.scrollWidth - carousel.clientWidth) {
        scrollPosition = 0;
      }
      carousel.scrollTo({
        left: scrollPosition,
        behavior: 'smooth'
      });
    }, 3000);
  </script>

</body>
</html>

 

