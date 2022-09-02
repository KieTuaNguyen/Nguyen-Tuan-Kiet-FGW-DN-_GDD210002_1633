<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if (!isset($user_id)) {
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About | Highland Coffee</title>
   <link rel="icon" href="img/logo.png" type="image/x-icon">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
   <link rel="stylesheet" href="css/style.css">

</head>

<body>

   <?php include 'header.php'; ?>

   <div class="heading">
      <h3>about us</h3>
      <p> <a href="home.php">Home</a> / About </p>
   </div>

   <section class="about">

      <div class="flex">

         <div class="image">
            <img src="img/background.banner.jpg" alt="">
         </div>

         <div class="content">
            <h3>ORIGIN</h3>
            <p>From the love to Vietnam and the passion of coffee, in 1999,
               the brand named Highlands Coffee® was born with the passion
               of raising the café heritage of Vietnam and spreading the spirit
               of Viet pride, connecting harmoniously between tradition and
               modernity.</p>
            <p>Originating as a packaged coffee business in Hanoi in 2000,
               we've quickly grown into a chain of well-known coffee shops
               that have been expanding throughout Vietnam and abroad since
               2002.</p>
            <a href="contact.php" class="btn">Contact us</a>
         </div>
      </div>

   </section>

   <?php include 'footer.php'; ?>

   <script src="js/script.js"></script>

</body>

</html>