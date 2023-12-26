<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>FitZen</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="css/pages/signup.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
  </script>
</head>

<body>
  <div class="d-flex flex-row signup-container">
    <div class="p-4">
      <div class="d-flex flex-column form-container">
        <div>
          <h2>Welcome to fitZen.com</h2>
        </div>
        <div>
          <form id="sign-up">
            <div class="mb-3 mt-3">
              <label for="name" class="form-label">Name:</label>
              <input type="text" class="form-control" id="name" placeholder="Enter your name" name="name" required>
            </div>
            <div class="mb-3">
              <label for="email" class="form-label">Email:</label>
              <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
            </div>
            <div class="mb-3">
              <label for="password" class="form-label">Password:</label>
              <input type="password" class="form-control" id="password" placeholder="Enter password" name="password"
                required>
            </div>
            <div class="mb-3">
              <label for="role" class="form-label">Role:</label>
              <select class="form-select" id="role" name="role" required>
                <option value="" disabled selected>Select role</option>
                <option value="trainer">Trainer</option>
                <option value="user">User</option>
              </select>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
          <p class="mt-3">Already have an account? <a href="/login">Log in</a></p>
        </div>
      </div>
    </div>
    <div class="p- bd-highlight image-container">
      <img src="images/sign-up-image.png" alt="Description of the image" class="sign-up-image">
    </div>
  </div>
  <script type="module" src="js/index.js"></script>
</body>

</html>
