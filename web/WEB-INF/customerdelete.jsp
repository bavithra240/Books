<%-- 
    Document   : customerdelete
    Created on : 15 Aug 2025, 13:00:15
    Author     : Bavi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Customer - Pahana Edu</title>
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
            max-width: 600px;
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
            flex-direction: column;
        }

        label {
            margin-bottom: 0.5rem;
            color: var(--text-color);
        }

        input {
            padding: 0.8rem;
            margin-bottom: 1rem;
            border: none;
            border-radius: 8px;
            background: var(--input-bg);
            color: var(--input-text);
            font-size: 1rem;
        }

        .delete-button {
            padding: 1rem;
            background: red;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .delete-button:hover {
            background: darkred;
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
        <h2>Delete Customer</h2>
        <form id="deleteForm">
            <label for="id">Customer ID</label>
            <input type="text" id="id" placeholder="Enter Customer ID to delete" required>

            <button type="submit" class="delete-button">Delete</button>
        </form>

        <div class="message" id="messageBox"></div>

        <footer>
            <p>Terms and Services</p>
            <p>Need help? Email <a href="mailto:support@pahanaedu.lk">support@pahanaedu.lk</a></p>
        </footer>
    </div>

    <script>
        document.getElementById('deleteForm').addEventListener('submit', function (e) {
            e.preventDefault();

            const id = document.getElementById('id').value.trim();

            if (!id) {
                document.getElementById('messageBox').textContent = 'Please enter the Customer ID.';
                return;
            }

            // Simulate deletion
            console.log("Deleted Customer ID:", id);
            document.getElementById('messageBox').textContent = `Customer with ID ${id} has been deleted successfully!`;

            document.getElementById('deleteForm').reset();
        });
    </script>
</body>
</html>
