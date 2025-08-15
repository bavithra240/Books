<%-- 
    Document   : bill
    Created on : 15 Aug 2025, 13:04:59
    Author     : Bavi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Calculate and Print Bill - Pahana Edu</title>
    <style>
        :root {
            --primary-color: brown;
            --secondary-color: bisque;
            --background-color: bisque;
            --text-color: white;
            --input-bg: bisque;
            --input-text: black;
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
            min-height: 100vh;
            padding: 1rem;
        }

        .container {
            width: 100%;
            max-width: 900px;
            background: linear-gradient(to bottom right, var(--secondary-color), var(--primary-color) ,var(--secondary-color));
            border-radius: 20px;
            padding: 2rem;
        }

        h2 {
            text-align: center;
            margin-bottom: 1.5rem;
        }

        form {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 2rem;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 0.5rem;
        }

        input, select {
            padding: 0.8rem;
            margin-bottom: 1rem;
            border: none;
            border-radius: 8px;
            background: var(--input-bg);
            color: var(--input-text);
        }

        .button-group {
            grid-column: span 2;
            display: flex;
            justify-content: space-between;
            gap: 1rem;
        }

        .action-button {
            flex: 1;
            padding: 1rem;
            background: var(--secondary-color);
            color: black;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            cursor: pointer;
        }

        .action-button:hover {
            background: var(--primary-color);
            color: white;
        }

        .message {
            text-align: center;
            font-size: 0.95rem;
            color: yellow;
            margin-top: 1rem;
        }

        footer {
            text-align: center;
            margin-top: 2rem;
            font-size: 0.9rem;
        }

        footer a {
            color: var(--text-color);
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Book Item Billing Portal</h2>
        <form id="billForm">
            <div class="form-group">
                <label for="accountNumber">Customer Account Number</label>
                <input type="text" id="accountNumber" required>

                <label for="email">Email</label>
                <input type="email" id="email" required>

                <label for="itemName">Item Name</label>
                <input type="text" id="itemName" required>

                <label for="price">Price (per item)</label>
                <input type="number" id="price" step="0.01" required>
            </div>

            <div class="form-group">
                <label for="quantity">Quantity</label>
                <input type="number" id="quantity" required>

                <label for="payment">Payment Method</label>
                <select id="payment" required>
                    <option value="">Select Payment Method</option>
                    <option value="Card">Card</option>
                    <option value="Online">Online</option>
                    <option value="Cash">Cash</option>
                </select>

                <label for="totalAmount">Total Amount</label>
                <input type="text" id="totalAmount" readonly>

                <div class="button-group">
                    <button type="button" class="action-button" onclick="calculateBill()">Calculate</button>
                    <button type="button" class="action-button" onclick="printBill()">Print</button>
                </div>
            </div>
        </form>
        <div class="message" id="messageBox"></div>

        <footer>
            <p>For assistance, contact <a href="mailto:support@pahanaedu.lk">support@pahanaedu.lk</a></p>
        </footer>
    </div>

    <script>
        function calculateBill() {
            const price = parseFloat(document.getElementById('price').value);
            const quantity = parseInt(document.getElementById('quantity').value);
            if (!isNaN(price) && !isNaN(quantity)) {
                const total = (price * quantity).toFixed(2);
                document.getElementById('totalAmount').value = total;
                document.getElementById('messageBox').textContent = 'Bill calculated successfully.';
            } else {
                document.getElementById('messageBox').textContent = 'Please enter valid price and quantity.';
            }
        }

        function printBill() {
            const account = document.getElementById('accountNumber').value;
            const email = document.getElementById('email').value;
            const item = document.getElementById('itemName').value;
            const price = document.getElementById('price').value;
            const quantity = document.getElementById('quantity').value;
            const payment = document.getElementById('payment').value;
            const total = document.getElementById('totalAmount').value;

            if (!account || !email || !item || !price || !quantity || !payment || !total) {
                document.getElementById('messageBox').textContent = 'Please fill out all fields and calculate the total.';
                return;
            }

            const billWindow = window.open('', 'Bill', 'width=600,height=600');
            billWindow.document.write(`
                <html>
                    <head><title>Print Bill</title></head>
                    <body style="font-family:Arial; padding: 20px;">
                        <h2>Pahana Edu - Customer Bill</h2>
                        <p><strong>Account Number:</strong> ${account}</p>
                        <p><strong>Email:</strong> ${email}</p>
                        <p><strong>Item Name:</strong> ${item}</p>
                        <p><strong>Price:</strong> Rs. ${price}</p>
                        <p><strong>Quantity:</strong> ${quantity}</p>
                        <p><strong>Payment Method:</strong> ${payment}</p>
                        <h3>Total Amount: Rs. ${total}</h3>
                        <hr>
                        <p>Thank you for shopping with Pahana Edu!</p>
                    </body>
                </html>
            `);
            billWindow.document.close();
            billWindow.print();
        }
    </script>
</body>
</html>
