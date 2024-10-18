<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
        <div class="row justify-content-center">
          <div class="col-md-6">
            <div class="card">
              <div class="card body p-3">
                <h2 class="mb-3 text-center fs-3 font-weight-bold">Post a new Job</h2>

                <form action="handleForm" method="post">
                  <div class="mb-1">
                    <label for="postId" class="form-label">Post ID</label>
                    <input type="text" class="form-control" id="postId" name="postId" required>
                  </div>

                  <div class="mb-1">
                    <label for="postProfile" class="form-label">Post Profile</label>
                    <input type="text" class="form-control" id="postProfile" name="postProfile" required>
                  </div>

                  <div class="mb-1">
                    <label for="postDesc" class="form-label">Post Description</label>
                    <textarea class="form-control" id="postDesc" name="postDesc" rows="2" required></textarea>
                  </div>

                  <div class="mb-1">
                    <label for="reqExperience" class="form-label">Required Experience</label>
                    <input type="number" class="form-control" id="reqExperience" name="reqExperience" required>
                  </div>

                  <div class="mb-2">
                    <label for="postTechStack" class="form-label">Tech Stack</label>
                    <select multiple class="form-select" id="postTechStack" name="postTechStack" required>
                      <option value="HTML">HTML</option>
                      <option value="CSS">CSS</option>
                      <option value="JavaScript">JavaScript</option>
                      <option value="BootStrap">BootStrap</option>
                      <option value="ReactJs">ReactJs</option>
                      <option value="Angular">Angular</option>
                      <option value="Java">Java</option>
                      <option value="SpringBoot">SpringBoot</option>
                      <option value="PHP">PHP</option>
                      <option value="Node.js">Node.js</option>
                      <option value="JQuery">JQuery</option>
                      <option value="SQL">SQL</option>
                      <option value="Apache Kafka">Apache Kafka</option>
                      <option value="Vue.js">Vue.js</option>
                      <option value="Laravel">Laravel</option>
                      <option value="Google Cloud">Google Cloud</option>
                    </select>
                  </div>
                  <button type="submit" class="btn btn-primary">Submit</button>
                </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    
</body>
</html>