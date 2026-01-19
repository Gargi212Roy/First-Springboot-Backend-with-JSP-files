<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.gargi.JobApplication.model.JobPost" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Job Posted Successfully | Job Portal</title>

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
        <a class="navbar-brand fw-semibold fs-4" href="home">
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
                    <a class="nav-link" href="home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewalljobs">All Jobs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#">Job Details</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<%
    JobPost myJobPost = (JobPost) request.getAttribute("jobPost");
%>

<!-- Page Content -->
<div class="container my-5">
    <div class="row justify-content-center">
        <div class="col-lg-7">

            <div class="card">
                <div class="card-body">

                    <h3 class="text-center mb-4"
                        style="color:#003153; font-weight:600;">
                        Job Posted Successfully 🎉
                    </h3>

                    <hr class="mb-4">

                    <h5 class="mb-3">
                        <strong>Profile:</strong>
                        <span class="text-primary">
                            <%= myJobPost.getPostProfile() %>
                        </span>
                    </h5>

                    <p class="mb-3">
                        <strong>Description:</strong><br>
                        <%= myJobPost.getPostDesc() %>
                    </p>

                    <p class="mb-4">
                        <strong>Experience Required:</strong>
                        <%= myJobPost.getReqExperience() %> years
                    </p>

                    <div class="mb-4">
                        <strong>Tech Stack:</strong>
                        <div class="mt-2">
                            <% for (String tech : myJobPost.getPostTechStack()) { %>
                                <span class="badge bg-secondary me-1 mb-1">
                                    <%= tech %>
                                </span>
                            <% } %>
                        </div>
                    </div>

                    <div class="form-submit mt-4">
                        <a href="/viewjobs" class="btn btn-primary">
                            View All Jobs
                        </a>
                    </div>

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
