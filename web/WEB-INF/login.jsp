<%-- 
    Document   : login.jsp
    Created on : 13 Aug 2025, 12:12:07
    Author     : Bavi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Login - Pahana Edu</title>
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
            overflow: hidden;
        }

        .container {
            display: flex;
            width: 90%;
            max-width: 1200px;
            height: 80%;
            border-radius: 20px;
            overflow: hidden;
            background: linear-gradient(to bottom right, var(--primary-color), var(--secondary-color));
        }

        .left-side {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .right-side {
            flex: 1;
            padding: 2rem;
            background: rgba(255, 255, 255, 0.1);
            border-top-right-radius: 20px;
            border-bottom-right-radius: 20px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .illustration {
            width: 100%;
            max-width: 0px;
            border-radius: 10px;
        }

        .login-form {
            text-align: center;
        }

        .login-form h2 {
            margin-bottom: 2rem;
            color: var(--text-color);
        }

        .login-form label {
            display: block;
            margin-bottom: 0.5rem;
            color: var(--text-color);
        }

        .login-form input {
            width: 100%;
            padding: 1rem;
            margin-bottom: 1rem;
            border: none;
            border-radius: 8px;
            background: var(--input-bg);
            color: var(--input-text);
            font-size: 1rem;
        }

        .login-form .forgot-password {
            display: block;
            text-align: right;
            margin-bottom: 2rem;
            color: var(--secondary-color);
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .login-form .forgot-password:hover {
            color: var(--primary-color);
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

        .register-link {
            display: inline-block;
            margin-top: 1rem;
            color: var(--secondary-color);
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .register-link:hover {
            color: var(--primary-color);
        }

        footer {
            text-align: center;
            color: var(--text-color);
            font-size: 0.9rem;
        }

        footer p {
            margin: 0.5rem 0;
        }

        footer a {
            color: var(--secondary-color);
            text-decoration: none;
            transition: color 0.3s ease;
        }

        footer a:hover {
            color: var(--primary-color);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="left-side">
            <img src="https://images.unsplash.com/photo-1524995997946-a1c2e315a42f"
                 alt="Welcome to Pahana Edu Bookshop"
                 class="illustration">
        </div>

        <div class="right-side">
            <section class="login-form">
                <h2> Admin Login</h2>
                <form id="loginForm">
                    <label for="username">Username</label>
                    <input type="text" id="username" placeholder="Enter your username" required>

                    <label for="password">Password</label>
                    <input type="password" id="password" placeholder="Enter your password" required>

                    <button type="submit" class="login-button">Login</button>

                    <p>Don't have an account?</p>
                    <a href="#" class="register-link">Register Now</a>
                </form>
            </section>

            <footer>
                <p>Terms and Services</p>
                <p>Have a problem? Contact us at <a href="mailto:support@pahanaedu.lk">support@pahanaedu.lk</a></p>
            </footer>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const loginForm = document.getElementById('loginForm');

            loginForm.addEventListener('submit', function (event) {
                event.preventDefault();

                const username = document.getElementById('username').value.trim();
                const password = document.getElementById('password').value.trim();

                if (!username || !password) {
                    alert('Please fill in all fields.');
                    return;
                }

                fetch('/api/login', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({ username, password })
                })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        alert('Login successful!');
                        window.location.href = 'dashboard.html';
                    } else {
                        alert('Invalid credentials. Please try again.');
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert('An error occurred. Please try again later.');
                });
            });

            document.querySelector('.register-link').addEventListener('click', function (event) {
                event.preventDefault();
                alert('Register Now feature not implemented yet.');
            });
        });
    </script>
</body>
</html>
