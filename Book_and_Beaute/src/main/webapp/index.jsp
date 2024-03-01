<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book & Beaute</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        /* Add your custom CSS styles here */
        body {
            font-family: 'Arial', sans-serif;
        }
        header {
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 15px 0;
        }
        .navbar-brand {
            font-weight: bold;
            color: #333;
            font-size: 24px;
        }
        .hero-section {
            background-image: url('salon-background.jpg');
            background-size: cover;
            background-position: center;
            color: #fff;
            padding: 100px 0;
            text-align: center;
        }
        .hero-section h1 {
            font-size: 48px;
            margin-bottom: 20px;
        }
        .hero-section p {
            font-size: 18px;
            margin-bottom: 40px;
        }
        .btn-primary {
            background-color: #ff6f61;
            border-color: #ff6f61;
            padding: 10px 30px;
            font-size: 18px;
        }
        .btn-primary:hover {
            background-color: #e2594e;
            border-color: #e2594e;
        }
        .features-section {
            padding: 80px 0;
        }
        .features-section h2 {
            font-size: 36px;
            margin-bottom: 50px;
            text-align: center;
        }
        .features-section h3 {
            font-size: 24px;
            margin-bottom: 20px;
        }
        .features-section p {
            font-size: 18px;
            margin-bottom: 40px;
        }
        .pricing-section {
            background-color: #f9f9f9;
            padding: 80px 0;
        }
        .pricing-section h2 {
            font-size: 36px;
            margin-bottom: 50px;
            text-align: center;
        }
        .about-section {
            padding: 80px 0;
            background-color: #fff;
        }
        .about-section h2 {
            font-size: 36px;
            margin-bottom: 50px;
            text-align: center;
        }
        .contact-section {
            padding: 80px 0;
            background-color: #f9f9f9;
        }
        .contact-section h2 {
            font-size: 36px;
            margin-bottom: 50px;
            text-align: center;
        }
        .footer-section {
            background-color: #333;
            color: #fff;
            padding: 50px 0;
        }
        .footer-section p {
            font-size: 18px;
            margin-bottom: 20px;
        }
        .footer-nav li {
            display: inline;
            margin-right: 20px;
        }
        .footer-nav a {
            color: #fff;
            font-size: 16px;
            text-decoration: none;
        }
        .footer-nav a:hover {
            color: #ff6f61;
        }
    </style>
</head>
<body>

<!-- Header Section -->
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#">Book & Beaute</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Features</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Pricing</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact Us</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<!-- Hero Section -->
<section class="hero-section">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1>Streamline Your Salon Business with Salon Management App</h1>
                <p>Effortlessly manage appointments, staff, and clients with our intuitive salon management app.</p>
                <a href="#" class="btn btn-primary btn-lg">Try it Now</a>
            </div>
            <div class="col-md-6">
                <img src="salon-interior.jpg" alt="Salon Interior" class="img-fluid">
            </div>
        </div>
    </div>
</section>

<!-- Features Section -->
<section class="features-section">
    <div class="container">
        <h2>Key Features</h2>
        <div class="row">
            <div class="col-md-4">
                <h3>Appointment Scheduling</h3>
                <p>Manage appointments with ease, ensuring a smooth booking process for both clients and staff.</p>
            </div>
            <!-- Add more feature columns here -->
        </div>
    </div>
</section>

<!-- Pricing Section -->
<section class="pricing-section">
    <div class="container">
        <h2>Flexible Pricing Plans</h2>
        <p>Choose the plan that best fits your salon's needs. No hidden fees, no contracts.</p>
        <!-- Add pricing cards here -->
    </div>
</section>

<!-- About Us Section -->
<section class="about-section">
    <div class="container">
        <h2>About Salon Management App</h2>
        <p>Brief overview of the company and its mission in revolutionizing salon management.</p>
        <!-- Add testimonials and other content here -->
    </div>
</section>

<!-- Contact Us Section -->
<section class="contact-section">
    <div class="container">
        <h2>Contact Us</h2>
        <p>Contact form for inquiries or demo requests.</p>
        <!-- Add contact form and other contact information here -->
    </div>
</section>

<!-- Footer Section -->
<footer class="footer-section">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <p>&copy; 2024 Book & Beaute</p>
            </div>
            <div class="col-md-6">
                <ul class="footer-nav">
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Terms of Service</a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>

<!-- Bootstrap JS and other scripts -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
