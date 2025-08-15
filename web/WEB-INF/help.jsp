<%-- 
    Document   : help
    Created on : 14 Aug 2025, 10:51:24
    Author     : Bavi2
--%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Help Section - Pahana Edu</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: bisque;
      margin: 0;
      padding: 0;
      color: #333;
    }

    .help-container {
      max-width: 900px;
      margin: 3rem auto;
      background: white;
      border-radius: 10px;
      padding: 2rem;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    h2 {
      text-align: center;
      color: brown;
      margin-bottom: 2rem;
    }

    .faq {
      margin-bottom: 1.5rem;
    }

    .question {
      background-color: bisque;
      padding: 1rem;
      border: 1px solid brown;
      border-radius: 8px;
      cursor: pointer;
      position: relative;
      font-weight: bold;
    }

    .question::after {
      content: '+';
      position: absolute;
      right: 20px;
      font-size: 20px;
    }

    .question.active::after {
      content: '-';
    }

    .answer {
      display: none;
      padding: 1rem;
      border: 1px solid #ddd;
      border-top: none;
      border-radius: 0 0 8px 8px;
      background-color: #f9f9f9;
    }

    .answer p {
      margin: 0;
    }

    footer {
      text-align: center;
      margin-top: 2rem;
      font-size: 0.9rem;
      color: #555;
    }

    footer a {
      color: brown;
      text-decoration: none;
    }

    footer a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="help-container">
    <h2>Help Section - How to Use the System</h2>

    <div class="faq">
        <div class="question">6. How can I search for a book?</div>
        <div class="answer">
          <p>Use the search bar at the top of the homepage. Type the book name, author, or ISBN to find the item quickly.</p>
        </div>
      </div>
      
      <div class="faq">
        <div class="question">7. How can a new customer view available features?</div>
        <div class="answer">
          <p>New customers can browse available books, view prices and descriptions, but need to register to place an order or generate bills.</p>
        </div>
      </div>
      
      <div class="faq">
        <div class="question">8. How do I filter books by category or price?</div>
        <div class="answer">
          <p>Go to the 'Books' section and use the filter options on the sidebar. You can filter by category (e.g., Science, Novels) or sort by price (low to high, high to low).</p>
        </div>
      </div>
      
      <div class="faq">
        <div class="question">9. How can I view book descriptions?</div>
        <div class="answer">
          <p>Click on any book item to open the book details page. You'll see a full description, author info, and publishing details.</p>
        </div>
      </div>
      
      <div class="faq">
        <div class="question">10. Where can I see the book price?</div>
        <div class="answer">
          <p>Prices are displayed clearly below each book item or on the book details page.</p>
        </div>
      </div>
      
      <div class="faq">
        <div class="question">11. How do I exit or logout from the web application?</div>
        <div class="answer">
          <p>Click the 'Logout' button at the top-right of the page or menu. You will be securely logged out and redirected to the homepage.</p>
        </div>
      </div>

    <footer>
      Need more help? Email us at <a href="mailto:support@pahanaedu.lk">support@pahanaedu.lk</a>
    </footer>
  </div>

  <script>
    const questions = document.querySelectorAll('.question');

    questions.forEach(q => {
      q.addEventListener('click', () => {
        const isActive = q.classList.contains('active');
        document.querySelectorAll('.question').forEach(el => el.classList.remove('active'));
        document.querySelectorAll('.answer').forEach(a => a.style.display = 'none');

        if (!isActive) {
          q.classList.add('active');
          q.nextElementSibling.style.display = 'block';
        }
      });
    });
  </script>
</body>
</html>
