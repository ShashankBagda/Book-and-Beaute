


<!-- for jstl tag -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- end of jstl tag -->

<%@page isELIgnored="false"%>
<header id="header">
    <nav class="navbar navbar-expand-lg fixed-top navbar-default navbar-light bg-light">
        <div class="container">
            <!-- Logo Image -->
            <a class="navbar-brand" href="index.jsp">
                <img src="../img/logo.png" alt="Book & Beaute Logo" height="100">
            </a>

            <!-- Brand Name -->
            <a class="navbar-brand" href="index.jsp">Book & Beaute</a>
            <!-- Navbar Toggler -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Navbar Links -->
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
				<!-- original ul <ul class="navbar-nav me-auto mb-2 mb-lg-0"> -->
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index.jsp"><i class="fa fa-home"></i>
							HOME</a></li>
	
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="client.jsp"><i
							class="fa fa-user"></i> CLIENT</a></li>
				</ul>
	
				<div class="dropdown">
					<button class="btn btn-outline-dark dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">
						<i class="fa-solid fa-user-saloon"></i> ${ saloonObj.fullName}
					</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="edit_profile.jsp">Edit
								Profile</a></li>
						<li><a class="dropdown-item" href="../saloonLogout">Logout</a></li>
	
					</ul>
				</div>
	
	
			</div>
        </div>
    </nav>
</header>