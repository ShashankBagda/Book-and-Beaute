<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        body {
            font-family: 'Arial', sans-serif;
            scroll-behavior: smooth;
        }
        *{scroll-behaviour : smooth;}
        .card {
            background-color: #ffd6d6; /* Adjust color as needed */
        }
        header {
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 15px 0;
            scroll-behavior: smooth;
        }
        .navbar-brand {
            font-weight: bold;
            color: #ffd6d6;
            font-size: 24px;
        }
        .hero-section {
            background-image: url('images/salon-desk.png');
            background-size: cover;
            background-position: center;
            color: #ffffff;
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
            background-color: #ffd6d6;
            margin-bottom: 20px;
            text-align:center;
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
            background-color: #ffd6d6;
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
<header id="header">
    <nav class="navbar navbar-expand-lg fixed-top navbar-default navbar-light bg-light">
        <div class="container">
            <!-- Logo Image -->
            <a class="navbar-brand" href="index.jsp">
                <img src="images/logo.png" alt="Book & Beaute Logo" height="100">
            </a>

            <!-- Brand Name -->
            <a class="navbar-brand" href="index.jsp">Book & Beaute</a>
            <!-- Navbar Toggler -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Navbar Links -->
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#header">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about-section">About App</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#features-section">Features</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#pricing-section">Pricing</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contact-section">Contact Us</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>


<!-- Hero Section -->
<section class="hero-section" id="hero-section"><br><br>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1>Streamline Your Salon Business with Book & Beaute App</h1>
                <p>Effortlessly manage appointments, staff, and clients with our intuitive Book & Beaute App.</p>
                <a href="login.jsp" class="btn btn-primary btn-lg">Login Now</a>
            </div>
            <div class="col-md-6">
                <br><br>
                <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="images/slide1.png" alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="images/slide2.png" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="images/slide3.png" alt="Third slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="images/slide4.png" alt="Third slide">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- About Us Section -->
<section class="about-section" id="about-section">
    <div class="container">
        <h2>About the Application</h2>
        <h5><p class="text-center">Hi everyone, today I'm excited to present
        <br>Book & Beaute.
        <br>A Java web application designed to revolutionize salon management and provide a seamless appointment experience for owners and clients alike. Imagine a world where scheduling appointments, managing clients, and generating bills is effortless, and booking the perfect hairstyle or pampering session is just a click away.
            <br>That's what Book & Beaute aims to achieve!</p></h5>
        <!-- Add testimonials and other content here -->
    </div>
</section>

<!-- Features Section -->
<section class="features-section" id="features-section">
    <div class="container">
        <h2>Key Features</h2>
        <div class="row">
            <div class="col-md-4">
                <h3 class="rounded">Appointment Management</h3>
                <p>Simplify scheduling for both salon owners and clients. Features include individual and recurring appointments, online booking, automated appointment reminders, and waitlist management.</p>
            </div>
            <div class="col-md-4">
                <h3 class="rounded">Client Management</h3>
                <p>Create detailed client profiles, record appointment history, track preferences, and manage communication seamlessly through integrated messaging or email. This fosters personalized interactions and builds strong client relationships.</p>
            </div>
            <div class="col-md-4">
                <h3 class="rounded">Billing and Payment Processing</h3>
                <p>Generate accurate bills instantly, accept secure online payments through various gateways, and streamline accounting processes. This eliminates manual errors and improves cash flow.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <h3 class="rounded">Reporting and Analytics</h3>
                <p>Gain valuable insights into salon performance by analyzing data on appointment trends, service popularity, and revenue streams. These insights help optimize operations, identify growth opportunities, and make data-driven decisions.</p>
            </div>
            <div class="col-md-4">
                <h3 class="rounded">Advance Technology</h3>
                <p>Modular Java MVC Architecture which enhances the security and adds seamless functionality along with Digital Payment Integration and Cloud-Based Deployment for Cross Platform Usability</p>
            </div>
            <div class="col-md-4">
                <h3 class="rounded">Creativity</h3>
                <p>Unique Client and Admin Portal for seamless functionality along with Enhanced User Interface which increases the User Experience for Appointment and Scheduling</p>
            </div>
        </div>
    </div>
</section>

<!-- Pricing Section -->
<section class="pricing-section" id="pricing-section">
    <div class="container">
        <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
            <h2 class="display-4 fw-normal text-body-emphasis">Pricing</h2>
            <p class="fs-5 text-body-secondary">Quickly build an effective pricing table for your potential customers with this Bootstrap example. It’s built with default Bootstrap components and utilities with little customization.</p>
        </div>

        <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
            <div class="col">
                <div class="card mb-4 rounded-3 shadow-sm">
                    <div class="card-header py-3">
                        <h4 class="my-0 fw-normal">Free</h4>
                    </div>
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title">$0<small class="text-body-secondary fw-light">/mo</small></h1>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>10 users included</li>
                            <li>2 GB of storage</li>
                            <li>Email support</li>
                            <li>Help center access</li>
                        </ul>
                        <button type="button" class="w-100 btn btn-lg btn-outline-primary">Sign up for free</button>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card mb-4 rounded-3 shadow-sm">
                    <div class="card-header py-3">
                        <h4 class="my-0 fw-normal">Pro</h4>
                    </div>
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title">$15<small class="text-body-secondary fw-light">/mo</small></h1>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>20 users included</li>
                            <li>10 GB of storage</li>
                            <li>Priority email support</li>
                            <li>Help center access</li>
                        </ul>
                        <button type="button" class="w-100 btn btn-lg btn-primary">Get started</button>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card mb-4 rounded-3 shadow-sm border-primary">
                    <div class="card-header py-3 text-bg-primary border-primary">
                        <h4 class="my-0 fw-normal">Enterprise</h4>
                    </div>
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title">$29<small class="text-body-secondary fw-light">/mo</small></h1>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>30 users included</li>
                            <li>15 GB of storage</li>
                            <li>Phone and email support</li>
                            <li>Help center access</li>
                        </ul>
                        <button type="button" class="w-100 btn btn-lg btn-primary">Contact us</button>
                    </div>
                </div>
            </div>
        </div>

        <h2 class="display-6 text-center mb-4">Compare plans</h2>

        <div class="table-responsive">
            <table class="table text-center">
                <thead>
                <tr>
                    <th style="width: 34%;"></th>
                    <th style="width: 22%;">Free</th>
                    <th style="width: 22%;">Pro</th>
                    <th style="width: 22%;">Enterprise</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row" class="text-start">Casting Business</th>
                    <td><svg class="bi" width="24" height="24"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path d="M21.03 5.72a.75.75 0 0 1 0 1.06l-11.5 11.5a.747.747 0 0 1-1.072-.012l-5.5-5.75a.75.75 0 1 1 1.084-1.036l4.97 5.195L19.97 5.72a.75.75 0 0 1 1.06 0Z"></path></svg></td>
                    <td><svg class="bi" width="24" height="24"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path d="M21.03 5.72a.75.75 0 0 1 0 1.06l-11.5 11.5a.747.747 0 0 1-1.072-.012l-5.5-5.75a.75.75 0 1 1 1.084-1.036l4.97 5.195L19.97 5.72a.75.75 0 0 1 1.06 0Z"></path></svg></td>
                    <td><svg class="bi" width="24" height="24"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path d="M21.03 5.72a.75.75 0 0 1 0 1.06l-11.5 11.5a.747.747 0 0 1-1.072-.012l-5.5-5.75a.75.75 0 1 1 1.084-1.036l4.97 5.195L19.97 5.72a.75.75 0 0 1 1.06 0Z"></path></svg></td>
                </tr>
                <tr>
                    <th scope="row" class="text-start">Private</th>
                    <td><svg class="bi" width="24" height="24"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path d="M21.03 5.72a.75.75 0 0 1 0 1.06l-11.5 11.5a.747.747 0 0 1-1.072-.012l-5.5-5.75a.75.75 0 1 1 1.084-1.036l4.97 5.195L19.97 5.72a.75.75 0 0 1 1.06 0Z"></path></svg></td>
                    <td><svg class="bi" width="24" height="24"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path d="M21.03 5.72a.75.75 0 0 1 0 1.06l-11.5 11.5a.747.747 0 0 1-1.072-.012l-5.5-5.75a.75.75 0 1 1 1.084-1.036l4.97 5.195L19.97 5.72a.75.75 0 0 1 1.06 0Z"></path></svg></td>
                    <td><svg class="bi" width="24" height="24"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path d="M21.03 5.72a.75.75 0 0 1 0 1.06l-11.5 11.5a.747.747 0 0 1-1.072-.012l-5.5-5.75a.75.75 0 1 1 1.084-1.036l4.97 5.195L19.97 5.72a.75.75 0 0 1 1.06 0Z"></path></svg></td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <th scope="row" class="text-start">Permissions</th>
                    <td></td>
                    <td><svg class="bi" width="24" height="24"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path d="M21.03 5.72a.75.75 0 0 1 0 1.06l-11.5 11.5a.747.747 0 0 1-1.072-.012l-5.5-5.75a.75.75 0 1 1 1.084-1.036l4.97 5.195L19.97 5.72a.75.75 0 0 1 1.06 0Z"></path></svg></td>
                    <td><svg class="bi" width="24" height="24"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path d="M21.03 5.72a.75.75 0 0 1 0 1.06l-11.5 11.5a.747.747 0 0 1-1.072-.012l-5.5-5.75a.75.75 0 1 1 1.084-1.036l4.97 5.195L19.97 5.72a.75.75 0 0 1 1.06 0Z"></path></svg></td>
                </tr>
                <tr>
                    <th scope="row" class="text-start">Sharing</th>
                    <td></td>
                    <td><svg class="bi" width="24" height="24"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path d="M21.03 5.72a.75.75 0 0 1 0 1.06l-11.5 11.5a.747.747 0 0 1-1.072-.012l-5.5-5.75a.75.75 0 1 1 1.084-1.036l4.97 5.195L19.97 5.72a.75.75 0 0 1 1.06 0Z"></path></svg></td>
                    <td><svg class="bi" width="24" height="24"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path d="M21.03 5.72a.75.75 0 0 1 0 1.06l-11.5 11.5a.747.747 0 0 1-1.072-.012l-5.5-5.75a.75.75 0 1 1 1.084-1.036l4.97 5.195L19.97 5.72a.75.75 0 0 1 1.06 0Z"></path></svg></td>
                </tr>
                <tr>
                    <th scope="row" class="text-start">Unlimited members</th>
                    <td></td>
                    <td></td>
                    <td><svg class="bi" width="24" height="24"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path d="M21.03 5.72a.75.75 0 0 1 0 1.06l-11.5 11.5a.747.747 0 0 1-1.072-.012l-5.5-5.75a.75.75 0 1 1 1.084-1.036l4.97 5.195L19.97 5.72a.75.75 0 0 1 1.06 0Z"></path></svg></td>
                </tr>
                <tr>
                    <th scope="row" class="text-start">Extra security</th>
                    <td></td>
                    <td></td>
                    <td><svg class="bi" width="24" height="24"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path d="M21.03 5.72a.75.75 0 0 1 0 1.06l-11.5 11.5a.747.747 0 0 1-1.072-.012l-5.5-5.75a.75.75 0 1 1 1.084-1.036l4.97 5.195L19.97 5.72a.75.75 0 0 1 1.06 0Z"></path></svg></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</section>



<!-- Contact Us Section -->
<section class="contact-section" id="contact-section">
    <div class="container" style="background-color:#ffd6d6"><br>
        <h2>Contact Us</h2>
        <h4 class="text-center"><p>Contact for Inquiries or Demo Requests.</p></h4><br>
        <form>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputEmail4">Email</label>
                    <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputPassword4">Phone Number</label>
                    <input type="number" class="form-control" id="inputPassword4" placeholder="Phone Number">
                </div>
            </div>
            <div class="form-group">
                <label for="inputAddress">Message</label>
                <input type="text" class="form-control" id="inputAddress" placeholder="Write Here">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form> <br>
    </div>
</section>

<!-- Footer Section -->
<footer class="footer-section" id="footer-section">
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
<script src="https://code.jquery.com/jquery-3.1.0.js"></script>
<script>
    $('a[href*="#"]')
        // Remove links that don't actually link to anything
        .not('[href="#"]')
        .not('[href="#0"]')
        .click(function(event) {
            // On-page links
            if (
                location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '')
                &&
                location.hostname == this.hostname
            ) {
                // Figure out element to scroll to
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                // Does a scroll target exist?
                if (target.length) {
                    // Only prevent default if animation is actually gonna happen
                    event.preventDefault();
                    $('html, body').animate({
                        scrollTop: target.offset().top-100
                    }, 1000, function() {
                        // Callback after animation
                        // Must change focus!
                        var $target = $(target);
                        $target.focus();
                        if ($target.is(":focus")) { // Checking if the target was focused
                            return false;
                        } else {
                            $target.attr('tabindex','-1'); // Adding tabindex for elements not focusable
                            $target.focus(); // Set focus again
                        };
                    });
                }
            }
        });
</script>


</body>
</html>