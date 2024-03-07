<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Book & Beaute</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        /* Add your custom CSS styles here */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        .login-section {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px 0px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 30px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .btn-login {
            background-color: #37c432;
            border-color: #37c432;
            padding: 10px 30px;
            font-size: 18px;
            width: 100%;
        }
        .btn-login:hover {
            background-color: #60d35b;
            border-color: #60d35b;
        }
        .btn-SignUp {
            background-color: #cd4538;
            border-color: #ff6f61;
            padding: 10px 30px;
            font-size: 18px;
            width: 100%;
        }
        .btn-SignUp:hover {
            background-color: #e2594e;
            border-color: #e2594e;
        }
    </style>
</head>
<body>

<!-- Login Section -->
<section class="login-section" >
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body text-center">
                        <h2>Login</h2>
                        <form>
                            <img class="mb-4" src="images/logo.png" alt="" width="150" height="150">
                            <h1 class="h3 mb-3 fw-normal">Enter Your Details</h1>

                            <div class="form-floating">
                                <input type="number" class="form-control" id="floatingInput" placeholder="Phone Number">
                                <label for="floatingInput"></label>
                            </div>
                            <div class="form-floating">
                                <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                            </div>

                            <div class="form-check text-start my-3">
                                <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                    Remember me
                                </label>
                            </div>
                            <a href="signup.jsp" class="btn btn-primary w-100 py-2" type="submit">Log In</a>
                            <div>
                                <br></br>
                                <h1 class="h3 mb-3 fw-normal">New User? Sign Up Now!</h1>
                                <a href="signup.jsp" class="btn btn-primary w-100 py-2" type="submit">Sign Up</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Bootstrap JS and other scripts -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
