<%-- 
    Document   : editcustomer
    Created on : 15 Aug 2025, 13:02:45
    Author     : Bavi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Customer - Pahana Edu</title>
    <style>
        :root {
            --primary-color: brown;
            --secondary-color: bisque;
            --background-color: bisque;
            --text-color: white;
            --input-bg: bisque;
            --input-text: white;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: var(--background-color);
            color: var(--text-color);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 90%;
            max-width: 1000px;
            background: linear-gradient(to bottom right, var(--primary-color), var(--secondary-color));
            border-radius: 20px;
            padding: 2rem;
        }

        h2 {
            text-align: center;
            margin-bottom: 1.5rem;
            color: var(--text-color);
        }

        form {
            display: flex;
            flex-wrap: wrap;
            gap: 2rem;
        }

        .form-group {
            flex: 1;
            min-width: 45%;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            color: var(--text-color);
        }

        input {
            width: 100%;
            padding: 0.8rem;
            margin-bottom: 1rem;
            border: none;
            border-radius: 8px;
            background: var(--input-bg);
            color: var(--input-text);
            font-size: 1rem;
        }

        .login-button {
            width: 100%;
            padding: 1rem;
            background: var(--secondary-color);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .login-button:hover {
            background: var(--primary-color);
        }

        .message {
            text-align: center;
            font-size: 0.95rem;
            color: yellow;
            margin-top: 1rem;
        }

        footer {
            text-align: center;
            margin-top: 1.5rem;
            color: var(--text-color);
            font-size: 0.9rem;
        }

        footer a {
            color: var(--secondary-color);
            text-decoration: none;
        }

        footer a:hover {
            color: var(--primary-color);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Edit Customer Information</h2>
        <form id="customerForm">
            <div class="form-group">
                <label for="id">Customer ID</label>
                <input type="text" id="id" placeholder="Enter Customer ID" required>

                <label for="name">Name</label>
                <input type="text" id="name" placeholder="Enter name" required>

                <label for="accountNumber">Account Number</label>
                <input type="text" id="accountNumber" placeholder="Enter account number" required>

                <label for="address">Address</label>
                <input type="text" id="address" placeholder="Enter address" required>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" placeholder="Enter email" required>

                <label for="phone">Phone</label>
                <input type="tel" id="phone" placeholder="Enter phone number" required>

                <label for="registrationDate">Registration Date</label>
                <input type="date" id="registrationDate" required>

                <label for="password">Password</label>
                <input type="password" id="password" placeholder="Enter password" required>

                <br>
                <button type="submit" class="login-button">Update</button>
            </div>
        </form>

        <div class="message" id="messageBox"></div>

        <footer>
            <p>Terms and Services</p>
            <p>Need help? Email <a href="mailto:support@pahanaedu.lk">support@pahanaedu.lk</a></p>
        </footer>
    </div>

    <script>
        document.getElementById('customerForm').addEventListener('submit', function (e) {
            e.preventDefault();

            const id = document.getElementById('id').value.trim();
            const name = document.getElementById('name').value.trim();
            const accountNumber = document.getElementById('accountNumber').value.trim();
            const address = document.getElementById('address').value.trim();
            const email = document.getElementById('email').value.trim();
            const phone = document.getElementById('phone').value.trim();
            const registrationDate = document.getElementById('registrationDate').value;
            const password = document.getElementById('password').value.trim();

            if (!id || !name || !accountNumber || !address || !email || !phone || !registrationDate || !password) {
                document.getElementById('messageBox').textContent = 'Please fill in all fields.';
                return;
            }

            const updatedCustomer = {
                id,
                name,
                accountNumber,
                address,
                email,
                phone,
                registrationDate,
                password
            };

            console.log("Updated Customer Details:", updatedCustomer);
            document.getElementById('messageBox').textContent = 'Customer details successfully updated!';
            document.getElementById('customerForm').reset();
        });
    </script>
</body>
</html>
