<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add Job | Job Portal</title>

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
                    <a class="nav-link" href="/viewjobs">All Jobs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#">Add Job</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Content -->
<div class="container my-5">
    <div class="row justify-content-center">
        <div class="col-lg-7">

            <div class="card shadow-lg border-0">
                <div class="form-card">

                    <h3 class="text-center mb-4"
                        style="color:#003153; font-weight:600;">
                        Post a New Job
                    </h3>

                    <form action="handleForm" method="post">

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Post ID</label>
                                <input type="text" class="form-control" name="postId" required>
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">Post Profile</label>
                                <input type="text" class="form-control" name="postProfile" required>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Post Description</label>
                            <textarea class="form-control"
                                      name="postDesc"
                                      rows="3"
                                      required></textarea>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Required Experience (Years)</label>
                            <input type="number"
                                   class="form-control"
                                   name="reqExperience"
                                   min="0"
                                   required>
                        </div>

                        <div class="mb-4">
                            <label class="form-label">Tech Stack</label>
                            <select class="form-select"
                                    name="postTechStack"
                                    multiple
                                    size="6"
                                    required>
                                <option>Java</option>
                                <option>Spring Boot</option>
                                <option>JavaScript</option>
                                <option>React</option>
                                <option>Angular</option>
                                <option>Node.js</option>
                                <option>Express.js</option>
                                <option>Vue.js</option>
                                <option>React Native</option>
                                <option>Flutter</option>
                                <option>Python</option>
                                <option>Django</option>
                                <option>Flask</option>
                                <option>Ruby on Rails</option>
                                <option>Laravel</option>
                                <option>PHP</option>
                                <option>HTML5</option>
                                <option>CSS3</option>
                                <option>TypeScript</option>
                                <option>Swift</option>
                                <option>Kotlin</option>
                                <option>Go</option>
                                <option>Rust</option>
                                <option>C++</option>
                                <option>C#</option>
                                <option>Unity</option>
                                <option>Game Development</option>
                                <option>TensorFlow</option>
                                <option>PyTorch</option>
                                <option>Kubernetes</option>
                                <option>Docker</option>
                                <option>Jenkins</option>
                                <option>AWS</option>
                                <option>Azure</option>
                                <option>Google Cloud</option>
                                <option>DevOps</option>
                                <option>Blockchain</option>
                                <option>Machine Learning</option>
                                <option>Artificial Intelligence</option>
                                <option>Cybersecurity</option>
                                <option>CISSP (Certified Information Systems Security Professional)</option>
                                <option>CompTIA Security+</option>
                                <option>Certified Ethical Hacker (CEH)</option>
                                <option>Scrum</option>
                                <option>Agile</option>
                                <option>Kanban</option>
                                <option>IoT (Internet of Things)</option>
                                <option>Raspberry Pi</option>
                                <option>Arduino</option>
                                <option>Apache Kafka</option>
                                <option>Elasticsearch</option>
                                <option>GraphQL</option>

                            </select>
                            <small class="text-muted">
                                Hold <b>Ctrl</b> (Windows) or <b>Cmd</b> (Mac) to select multiple
                            </small>
                        </div>

                       <div class="form-submit">
                           <button type="submit" class="btn btn-primary">Submit Job</button>
                       </div>

                    </form>

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
