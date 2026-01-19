<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>All Jobs | Job Portal</title>

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
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #003153;">
    <div class="container">
        <a class="navbar-brand fw-semibold fs-4" href="home">
            Job Portal
        </a>

        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="/viewjobs">All Jobs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"
                       href="https://portfolio-website-six-lovat.vercel.app/">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Main Content -->
<div class="container my-4">
    <h2 class="page-title mb-4">Available Job Openings</h2>

    <div class="row g-4">
        <c:forEach var="jobPost" items="${jobPosts}">
            <div class="col-md-6">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title mb-3">
                            ${jobPost.postProfile}
                        </h5>

                        <p class="card-text text-muted">
                            ${jobPost.postDesc}
                        </p>

                        <p class="mb-2">
                            <strong>Experience Required:</strong>
                            ${jobPost.reqExperience} years
                        </p>

                        <p class="mb-2"><strong>Tech Stack:</strong></p>
                        <ul class="mb-4">
                            <c:forEach var="tech" items="${jobPost.postTechStack}">
                                <li>${tech}</li>
                            </c:forEach>
                        </ul>

                        <div class="text-center">
                            <a href="#" class="btn btn-primary apply-btn">
                                Apply Now
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<!-- Toast -->
<div class="position-fixed bottom-0 end-0 p-3" style="z-index: 1055;">
    <div id="applyToast"
         class="toast custom-toast align-items-center border-0"
         role="alert" aria-live="assertive" aria-atomic="true">

        <div class="d-flex">
            <div class="toast-body text-dark fw-semibold">
                🚧 Apply feature is yet to be implemented!
            </div>
            <button type="button"
                    class="btn-close me-2 m-auto"
                    data-bs-dismiss="toast"></button>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous">
</script>

<!-- Toast Script -->
<script>
    document.querySelectorAll('.apply-btn').forEach(button => {
        button.addEventListener('click', function (e) {
            e.preventDefault();
            const toastEl = document.getElementById('applyToast');
            const toast = new bootstrap.Toast(toastEl, {
                delay: 3000
            });
            toast.show();
        });
    });
</script>

</body>
</html>
