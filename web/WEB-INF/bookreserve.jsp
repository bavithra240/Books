<%-- 
    Document   : bookreserve
    Created on : 15 Aug 2025, 15:03:25
    Author     : Bavi2
--%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Book Reservation - Pahana Edu</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      background: #f4f4f4;
      color: #333;
    }

    header {
      background: #ff9a5b;
      color: #fff;
      padding: 1rem;
      text-align: center;
    }

    .container {
      max-width: 600px;
      margin: 2rem auto;
      background: #fff;
      padding: 2rem;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    h2 {
      text-align: center;
      margin-bottom: 1.5rem;
      color: #ff6a33;
    }

    form {
      display: flex;
      flex-direction: column;
    }

    label {
      margin-bottom: 0.5rem;
      font-weight: bold;
    }

    input, select, textarea {
      padding: 0.8rem;
      margin-bottom: 1rem;
      border: 1px solid #ddd;
      border-radius: 5px;
      font-size: 1rem;
    }

    button {
      padding: 1rem;
      background: #ff9a5b;
      color: white;
      border: none;
      font-size: 1rem;
      cursor: pointer;
      border-radius: 5px;
      transition: background 0.3s ease;
    }

    button:hover {
      background: #ff6a33;
    }

    .message {
      text-align: center;
      font-size: 0.95rem;
      color: green;
      margin-top: 1rem;
    }

    footer {
      background: #ff9a5b;
      color: white;
      padding: 1rem;
      text-align: center;
      margin-top: 2rem;
    }
  </style>
</head>
<body>

  <header>
    <h1>Book Reservation</h1>
  </header>

  <div class="container">
    <h2>Reserve Your Book</h2>
    <form id="reservationForm">
      <label for="bookName">Book Name</label>
      <input type="text" id="bookName" placeholder="Enter Book Name" required />

      <label for="userName">Your Name</label>
      <input type="text" id="userName" placeholder="Enter Your Name" required />

      <label for="email">Email</label>
      <input type="email" id="email" placeholder="Enter Your Email" required />

      <label for="phone">Phone Number</label>
      <input type="tel" id="phone" placeholder="Enter Your Phone Number" required />

      <label for="quantity">Quantity</label>
      <input type="number" id="quantity" placeholder="Enter Quantity" min="1" required />

      <label for="reservationDate">Reservation Date</label>
      <input type="date" id="reservationDate" required />

      <button type="submit">Reserve Book</button>
    </form>
    <div class="message" id="messageBox"></div>
  </div>

  <footer>
    &copy; 2025 Pahana Edu | support@pahanaedu.lk
  </footer>

  <script>
    document.getElementById('reservationForm').addEventListener('submit', function(e) {
      e.preventDefault();

      const bookName = document.getElementById('bookName').value.trim();
      const userName = document.getElementById('userName').value.trim();
      const email = document.getElementById('email').value.trim();
      const phone = document.getElementById('phone').value.trim();
      const quantity = document.getElementById('quantity').value.trim();
      const reservationDate = document.getElementById('reservationDate').value;

      if (!bookName || !userName || !email || !phone || !quantity || !reservationDate) {
        document.getElementById('messageBox').textContent = 'Please fill in all fields.';
        document.getElementById('messageBox').style.color = 'red';
        return;
      }

      // Simulate reservation
      console.log("Book Reserved:", {bookName, userName, email, phone, quantity, reservationDate});
      document.getElementById('messageBox').textContent = 'Book successfully reserved!';
      document.getElementById('messageBox').style.color = 'green';
      document.getElementById('reservationForm').reset();
    });
  </script>
</body>
</html>
