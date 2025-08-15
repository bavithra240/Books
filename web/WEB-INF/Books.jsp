<%-- 
    Document   : Books
    Created on : 15 Aug 2025, 12:30:19
    Author     : Bavi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manage Book Items - Pahana Edu</title>
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
            background: linear-gradient(to bottom right ,var(--secondary-color), var(--primary-color));
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

        input, textarea {
            width: 100%;
            padding: 0.8rem;
            margin-bottom: 1rem;
            border: none;
            border-radius: 8px;
            background: var(--input-bg);
            color: var(--input-text);
            font-size: 1rem;
        }

        .button-group {
            display: flex;
            justify-content: space-between;
            gap: 1rem;
        }

        .action-button {
            flex: 1;
            padding: 1rem;
            background: var(--secondary-color);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .action-button:hover {
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
        <h2>Manage Book Item Information</h2>
        <form id="itemForm">
            <div class="form-group">
                <label for="itemId">Item ID</label>
                <input type="text" id="itemId" placeholder="Enter Item ID" required>

                <label for="itemName">Item Name</label>
                <input type="text" id="itemName" placeholder="Enter Item Name" required>

                <label for="description">Description</label>
                <textarea id="description" rows="4" placeholder="Enter Description" required></textarea>

                <label for="price">Price</label>
                <input type="number" id="price" step="0.01" placeholder="Enter Price" required>
            </div>

            <div class="form-group">
                <label for="category">Category</label>
                <input type="text" id="category" placeholder="Enter Category" required>

                <label for="quantity">Quantity</label>
                <input type="number" id="quantity" placeholder="Enter Quantity" required>

                <label for="lastUpdated">Last Updated</label>
                <input type="date" id="lastUpdated" required>

                <div class="button-group">
                    <button type="button" class="action-button" onclick="addItem()">Add</button>
                    <button type="button" class="action-button" onclick="updateItem()">Update</button>
                    <button type="button" class="action-button" onclick="deleteItem()">Delete</button>
                </div>
            </div>
        </form>
        <div class="message" id="messageBox"></div>

        <footer>
            <p>Terms and Services</p>
            <p>Need help? Email <a href="mailto:support@pahanaedu.lk">support@pahanaedu.lk</a></p>
        </footer>
    </div>

    <script>
        function getItemData() {
            return {
                itemId: document.getElementById('itemId').value.trim(),
                itemName: document.getElementById('itemName').value.trim(),
                description: document.getElementById('description').value.trim(),
                price: document.getElementById('price').value.trim(),
                category: document.getElementById('category').value.trim(),
                quantity: document.getElementById('quantity').value.trim(),
                lastUpdated: document.getElementById('lastUpdated').value
            };
        }

        function addItem() {
            const item = getItemData();
            if (Object.values(item).some(value => !value)) {
                document.getElementById('messageBox').textContent = 'Please fill in all fields.';
                return;
            }
            console.log("Adding Item:", item);
            document.getElementById('messageBox').textContent = 'Item successfully added!';
            document.getElementById('itemForm').reset();
        }

        function updateItem() {
            const item = getItemData();
            if (!item.itemId) {
                document.getElementById('messageBox').textContent = 'Item ID is required to update.';
                return;
            }
            console.log("Updating Item:", item);
            document.getElementById('messageBox').textContent = 'Item successfully updated!';
        }

        function deleteItem() {
            const itemId = document.getElementById('itemId').value.trim();
            if (!itemId) {
                document.getElementById('messageBox').textContent = 'Item ID is required to delete.';
                return;
            }
            console.log("Deleting Item ID:", itemId);
            document.getElementById('messageBox').textContent = 'Item successfully deleted!';
            document.getElementById('itemForm').reset();
        }
    </script>
</body>
</html>
