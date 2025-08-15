<%-- 
    Document   : Blog
    Created on : 15 Aug 2025, 12:28:12
    Author     : Bavi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Books Blog</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8;
        }

        header {
            background-color: #ffffff;
            color: #000000;
            text-align: center;
            padding: 20px 0;
            border-bottom: 1px solid #ccc;
        }

        nav {
            background-color: #242424;
            padding: 10px;
            text-align: center;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            padding: 10px;
            margin-right: 10px;
            display: inline-block;
        }

        .container {
            max-width: 95%;
            margin: 20px auto;
        }

        .books-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
        }

        .book-card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 10px;
            position: relative;
            text-align: center;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        }

        .book-card img {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
        }

        .discount-badge {
            position: absolute;
            top: 10px;
            left: 10px;
            background-color: red;
            color: white;
            padding: 5px 8px;
            font-size: 0.8rem;
            border-radius: 4px;
        }

        .discount-badge.yellow {
            background-color: orange;
        }

        .book-card h3 {
            margin: 10px 0 5px;
            font-size: 1.1rem;
        }

        .book-card p {
            margin: 3px 0;
            font-size: 0.9rem;
            color: #555;
        }

        .price {
            margin-top: 5px;
        }

        .price .original {
            text-decoration: line-through;
            margin-right: 8px;
            color: #888;
        }

        .price .discounted {
            font-weight: bold;
            color: #27ae60;
        }

        footer {
            background-color: #242424;
            color: #fff;
            text-align: center;
            padding: 10px 0;
            margin-top: 30px;
        }
    </style>
</head>

<body>

    <header>
        <h1>Books Blog</h1>
        <p>Discover amazing books with great discounts</p>
    </header>

    <nav>
        <a href="#">Home</a>
        <a href="#">Fiction</a>
        <a href="#">Non-Fiction</a>
        <a href="#">Comics</a>
        <a href="#">Poetry</a>
    </nav>

    <div class="container">
        <div class="books-grid">

           <div class="books-grid">

    <div class="book-card">
        <div class="discount-badge">40% OFF</div>
        <img src="https://covers.openlibrary.org/b/id/12601725-L.jpg" alt="Book Cover">
        <h3>The Midnight Library</h3>
        <p>Matt Haig</p>
        <p class="price"><span class="original">899.00</span> <span class="discounted">539.40</span></p>
    </div>

    <div class="book-card">
        <div class="discount-badge yellow">20% OFF</div>
        <img src="https://covers.openlibrary.org/b/id/13574436-L.jpg" alt="Book Cover">
        <h3>Atomic Habits</h3>
        <p>James Clear</p>
        <p class="price"><span class="original">650.00</span> <span class="discounted">520.00</span></p>
    </div>

    <div class="book-card">
        <div class="discount-badge">35% OFF</div>
        <img src="https://covers.openlibrary.org/b/id/13257041-L.jpg" alt="Book Cover">
        <h3>Project Hail Mary</h3>
        <p>Andy Weir</p>
        <p class="price"><span class="original">1200.00</span> <span class="discounted">780.00</span></p>
    </div>

    <div class="book-card">
        <div class="discount-badge">25% OFF</div>
        <img src="https://covers.openlibrary.org/b/id/13810368-L.jpg" alt="Book Cover">
        <h3>Lessons in Chemistry</h3>
        <p>Bonnie Garmus</p>
        <p class="price"><span class="original">899.00</span> <span class="discounted">674.25</span></p>
    </div>

    <div class="book-card">
        <div class="discount-badge">50% OFF</div>
        <img src="https://covers.openlibrary.org/b/id/10958375-L.jpg" alt="Book Cover">
        <h3>Becoming</h3>
        <p>Michelle Obama</p>
        <p class="price"><span class="original">1000.00</span> <span class="discounted">500.00</span></p>
    </div>

    <div class="book-card">
        <div class="discount-badge yellow">15% OFF</div>
        <img src="https://covers.openlibrary.org/b/id/12829753-L.jpg" alt="Book Cover">
        <h3>The Song of Achilles</h3>
        <p>Madeline Miller</p>
        <p class="price"><span class="original">750.00</span> <span class="discounted">637.50</span></p>
    </div>


        <div class="book-card">
        <div class="discount-badge">30% OFF</div>
        <img src="https://covers.openlibrary.org/b/id/12618074-L.jpg" alt="Book Cover">
        <h3>The Seven Husbands of Evelyn Hugo</h3>
        <p>Taylor Jenkins Reid</p>
        <p class="price"><span class="original">850.00</span> <span class="discounted">595.00</span></p>
    </div>

    <div class="book-card">
        <div class="discount-badge yellow">10% OFF</div>
        <img src="https://covers.openlibrary.org/b/id/12950229-L.jpg" alt="Book Cover">
        <h3>Dune</h3>
        <p>Frank Herbert</p>
        <p class="price"><span class="original">950.00</span> <span class="discounted">855.00</span></p>
    </div>

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
        <div class="discount-badge">25% OFF</div>
        <img src="https://covers.openlibrary.org/b/id/12498586-L.jpg" alt="Book Cover">
        <h3>Where the Crawdads Sing</h3>
        <p>Delia Owens</p>
        <p class="price"><span class="original">870.00</span> <span class="discounted">652.50</span></p>
    </div>

    

</div>


        </div>
    </div>

    <footer>
        <p>© 2025 Books Blog. All rights reserved.</p>
    </footer>

</body>

</html>
