<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JobApp</title>
    <link rel="stylesheet" href="style.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
   <style>
    .row{
        row-gap: 15px;
    }
   </style>
</head>
<body class="bg-primary">

    <nav class="navbar navbar-expand-lg navbar-light bg-warning p-4">
        <div class="container">
          <a class="navbar-brand fs-1 fw-medium" href="/home">JobApp</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
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
                <a class="nav-link" href="https://aplusinternational.in/contact/" target="_blank">Contact</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>

      <div class="container mt-5">
        <h2 class="mb-4 text-center text-light font-weight-bold">Job Post List</h2>

        <div class="row">
          <c:forEach var="jobPost" items="${jobPosts}">
            <div class="col-sm-6 col-mb-4">
              <div class="card border-dark bg-dark text-white">
                <div class="card-body">
                  <h5 class="card-title">${jobPost.postProfile}</h5>
                  <p class="card-text">
                    <strong>Description : </strong>
                      ${jobPost.postDesc}
                  </p>
                  <p class="card-text">
                    <strong>Experience Required : </strong>
                      ${jobPost.reqExperience} years
                  </p>
                  <p class="card-text">
                    <strong>Tech Stack :</strong>
                    <ul>
                      <c:forEach var="tech" items="${jobPost.postTechStack}">
                        <li>${tech}</li>
                      </c:forEach>
                    </ul>
                  </p>
                </div>
                <div class="card-footer">
                  <!-- optional -->
                </div>
              </div>
            </div>
          </c:forEach>
        </div>
        <div class="text-center my-4">
            <a href="/home" class="btn btn-danger">Home</a>
        </div>
      </div>

</body>
</html>