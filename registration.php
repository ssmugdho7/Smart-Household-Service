<?php
include('includes/dbconnection.php');

// Get the area name from the URL
$areaName = isset($_GET['area']) ? htmlspecialchars($_GET['area']) : ''; // Fetch the 'area' parameter securely

// Handle the form submission
if (isset($_POST['register'])) {
    $username = htmlspecialchars($_POST['username']);
    $email = htmlspecialchars($_POST['email']);
    $password = htmlspecialchars($_POST['password']); // Store raw password
    $mobile = htmlspecialchars($_POST['mobile']);
    $address = htmlspecialchars($_POST['address']);
    $gender = htmlspecialchars($_POST['gender']);

    $sql = "INSERT INTO tbluser (UserName, UserEmail, UserPassword, UserMobile, UserAddress, Gender) 
            VALUES (:username, :email, :password, :mobile, :address, :gender)";
    $query = $dbh->prepare($sql);
    $query->bindParam(':username', $username, PDO::PARAM_STR);
    $query->bindParam(':email', $email, PDO::PARAM_STR);
    $query->bindParam(':password', $password, PDO::PARAM_STR); // Store raw password
    $query->bindParam(':mobile', $mobile, PDO::PARAM_STR);
    $query->bindParam(':address', $address, PDO::PARAM_STR);
    $query->bindParam(':gender', $gender, PDO::PARAM_STR);

    if ($query->execute()) {
        echo "<script>alert('Registration successful. Please login to continue.');</script>";
        echo "<script>window.location.href='login.php?area=" . urlencode($areaName) . "';</script>";
        exit();
    } else {
        echo "<script>alert('Something went wrong. Please try again later.');</script>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .register-card {
            max-width: 500px;
            width: 100%;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        .card-header {
            font-size: 1.5rem;
            font-weight: bold;
            text-align: center;
            background-color: #28a745;
            color: #fff;
            border-bottom: none;
            padding: 1.5rem;
        }
        .card-body {
            padding: 2rem;
        }
        .btn-primary, .btn-danger {
            width: 100%;
            border-radius: 5px;
            margin-top: 1rem;
        }
    </style>
</head>
<body>
    <div class="card register-card">
        <div class="card-header">Register</div>
        <div class="card-body">
            <form method="POST" action="">
                <div class="form-group mb-3">
                    <label for="username" class="form-label">Full Name</label>
                    <input type="text" name="username" id="username" class="form-control" required>
                </div>
                <div class="form-group mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" name="email" id="email" class="form-control" required>
                </div>
                <div class="form-group mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" name="password" id="password" class="form-control" required>
                </div>
                <div class="form-group mb-3">
                    <label for="mobile" class="form-label">Mobile</label>
                    <input type="text" name="mobile" id="mobile" class="form-control" required>
                </div>
                <div class="form-group mb-3">
                    <label for="address" class="form-label">Address</label>
                    <input type="text" name="address" id="address" class="form-control" required>
                </div>
                <div class="form-group mb-3">
                    <label for="gender" class="form-label">Gender</label>
                    <select name="gender" id="gender" class="form-control" required>
                        <option value="">--Select--</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
                </div>
                <button type="submit" name="register" class="btn btn-primary">Register</button>

                <!-- Login Link with Area -->
                <a href="login.php?area=<?= urlencode($areaName) ?>" class="btn btn-danger">I already have an account</a>
            </form>
        </div>
    </div>

    <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
