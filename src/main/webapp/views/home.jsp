<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Job Portal Web App</title>

    <!-- Bootstrap CSS -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
        crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="style.css">
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark"
     style="background-color: #003153;">
    <div class="container">
        <a class="navbar-brand fw-semibold fs-4" href="#">
            Job Portal
        </a>

        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNav"
                aria-controls="navbarNav"
                aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/viewjobs">All Jobs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="https://portfolio-website-six-lovat.vercel.app/">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Main Content -->
<div class="container">
    <h2 class="page-title">Welcome to the Job Portal</h2>

    <div class="row g-4">
        <!-- View Jobs -->
        <div class="col-md-6">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title mb-3">Browse Opportunities</h5>
                    <p class="card-text text-muted mb-4">
                        View all available job openings in one place.
                    </p>
                    <a href="/viewjobs" class="btn btn-primary">
                        View All Jobs
                    </a>
                </div>
            </div>
        </div>

        <!-- Add Job -->
        <div class="col-md-6">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title mb-3">Post a New Job</h5>
                    <p class="card-text text-muted mb-4">
                        Add new job listings for potential candidates.
                    </p>
                    <a href="/addjob" class="btn btn-primary">
                        Add Job
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous">
</script>

</body>
</html>
