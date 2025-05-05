<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Services</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        .service-card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            transition: transform 0.2s;
            background: #f9f9f9;
        }
        .service-card:hover {
            transform: scale(1.05);
        }
        .pricing-card {
            border-radius: 8px;
            height: 350px;
            color: #000; /* Updated font color for better readability */
        }
        .pricing-card h4, .pricing-card h5 {
            font-weight: bold;
        }
        .btn-light {
            color: #007bff;
            border: 1px solid #fff;
        }
        .btn-light:hover {
            color: #fff;
            background-color: #007bff;
            border-color: #0056b3;
        }
        .info-card {
            border: 2px dashed #007bff;
            border-radius: 8px;
            padding: 20px;
            background: rgba(0, 123, 255, 0.1);
        }
        .footer {
            background: #333;
            color: #fff;
        }
        /* Unique Colors for Packages */
        .starter-package {
            background: linear-gradient(135deg, #FFDDC1, #FFC1A6);
        }
        .trial-package {
            background: linear-gradient(135deg, #CDE7FF, #A6C8FF);
        }
        .silver-package {
            background: linear-gradient(135deg, #F4F4F4, #C0C0C0);
        }
        .gold-package {
            background: linear-gradient(135deg, #FFF4C1, #FFD700);
        }
        .diamond-package {
            background: linear-gradient(135deg, #E0F7FF, #B9F2FF);
        }
    </style>
</head>
<body>

<!-- Header -->
<div class="container-fluid bg-info text-white text-center py-5">
    <h1 class="display-2 fw-bold">Our Services</h1>
    <p class="lead">Premium Maid Hiring Services & Grocery Delivery</p>
</div>

<!-- Services Section -->
<div class="container my-5">
    <div class="text-center mb-4">
        <h2 class="fw-bold">What We Offer</h2>
        <p>Choose from a wide range of premium services to make your life easier.</p>
    </div>
    <div class="row g-4">
        <!-- Service Cards -->
        <div class="col-md-4">
            <div class="card service-card">
                <div class="card-body text-center">
                    <i class="fas fa-toilet fa-3x text-primary mb-3"></i>
                    <h5 class="card-title">Toilet Cleaning</h5>
                    <p class="card-text">Keep your toilets sparkling clean with our professional cleaning service.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card service-card">
                <div class="card-body text-center">
                    <i class="fas fa-feather-alt fa-3x text-primary mb-3"></i>
                    <h5 class="card-title">Dusting</h5>
                    <p class="card-text">Say goodbye to dust and allergens with our efficient dusting service.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card service-card">
                <div class="card-body text-center">
                    <i class="fas fa-broom fa-3x text-primary mb-3"></i>
                    <h5 class="card-title">Mopping</h5>
                    <p class="card-text">Experience spotless floors with our thorough mopping service.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card service-card">
                <div class="card-body text-center">
                    <i class="fas fa-utensils fa-3x text-primary mb-3"></i>
                    <h5 class="card-title">Utensil Cleaning</h5>
                    <p class="card-text">Leave the dishwashing to us and enjoy sparkling clean utensils.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card service-card">
                <div class="card-body text-center">
                    <i class="fas fa-blender fa-3x text-primary mb-3"></i>
                    <h5 class="card-title">Cooking</h5>
                    <p class="card-text">Delicious home-cooked meals prepared by our skilled maids.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card service-card">
                <div class="card-body text-center">
                    <i class="fas fa-tshirt fa-3x text-primary mb-3"></i>
                    <h5 class="card-title">Cloth Washing</h5>
                    <p class="card-text">Ensure fresh and clean clothes with our washing service.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Grocery Info -->
<div class="container my-5">
    <div class="info-card text-center">
        <h4 class="text-primary fw-bold">Special Grocery Service Offer!</h4>
        <p>If you purchase any of our maid services, you get <strong>free grocery delivery</strong> for the first 3 orders.</p>
        <p>After that, a delivery fee of <strong>40 BDT</strong> applies per grocery order.</p>
    </div>
</div>

<!-- Pricing Section -->
<div class="container my-5">
    <div class="text-center mb-4">
        <h2 class="fw-bold">Subscription Packages</h2>
        <p>Select the perfect package to match your needs and budget.</p>
    </div>
    <div class="row g-4">
        <div class="col-md-4">
            <div class="card pricing-card starter-package text-center p-4">
                <h4>Starter Package</h4>
                <h5>1 Day</h5>
                <p class="display-6 fw-bold">299 BDT</p>
                <ul class="list-unstyled">
                    <li>Choose 2 services</li>
                    <li>Maid visits 1 time a day</li>
                </ul>
                <a href="maid-hiring.php" class="btn btn-light">Subscribe</a>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card pricing-card trial-package text-center p-4">
                <h4>Trial Package</h4>
                <h5>7 Days</h5>
                <p class="display-6 fw-bold">1799 BDT</p>
                <p class="text-success">Save 294 BDT</p>
                <ul class="list-unstyled">
                    <li>Choose 3 services</li>
                    <li>Maid visits 2 times a day</li>
                </ul>
                <a href="maid-hiring.php" class="btn btn-light">Subscribe</a>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card pricing-card silver-package text-center p-4">
                <h4>Silver Package</h4>
                <h5>30 Days</h5>
                <p class="display-6 fw-bold">7499 BDT</p>
                <p class="text-success">Save 1471 BDT</p>
                <ul class="list-unstyled">
                    <li>Choose 4 services</li>
                    <li>Maid visits 2 times a day</li>
                </ul>
                <a href="maid-hiring.php" class="btn btn-light">Subscribe</a>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card pricing-card gold-package text-center p-4">
                <h4>Gold Package</h4>
                <h5>6 Months</h5>
                <p class="display-6 fw-bold">39999 BDT</p>
                <p class="text-success">Save 4999 BDT</p>
                <ul class="list-unstyled">
                    <li>Choose 5 services</li>
                    <li>Maid visits 2 times a day</li>
                </ul>
                <a href="maid-hiring.php" class="btn btn-light">Subscribe</a>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card pricing-card diamond-package text-center p-4">
                <h4>Diamond Package</h4>
                <h5>1 Year</h5>
                <p class="display-6 fw-bold">69999 BDT</p>
                <p class="text-success">Save 9999 BDT</p>
                <ul class="list-unstyled">
                    <li>Choose 5 services</li>
                    <li>Maid visits 2 times a day</li>
                </ul>
                <a href="maid-hiring.php" class="btn btn-light">Subscribe</a>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="footer text-center py-3">
    <p>© 2024 Your Company Name. All rights reserved.</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
