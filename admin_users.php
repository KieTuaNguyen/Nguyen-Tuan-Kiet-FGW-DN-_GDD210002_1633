<?php

include 'config.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if (!isset($admin_id)) {
   header('location:login.php');
}

if (isset($_GET['delete'])) {
   $delete_id = $_GET['delete'];
   mysqli_query($conn, "DELETE FROM `users` WHERE id = '$delete_id'") or die('Query failed');
   header('location:admin_users.php');
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Admin.Accounts | Highlands Coffee</title>
   <link rel="icon" href="img/logo.admin.png" type="image/x-icon">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
   <link rel="stylesheet" href="css/admin_style.css">

</head>

<body>

   <?php include 'admin_header.php'; ?>

   <section class="users">

      <h1 class="title"> user accounts </h1>

      <div class="box-container">
         <?php
         $select_users = mysqli_query($conn, "SELECT * FROM `users`") or die('Query failed');
         while ($fetch_users = mysqli_fetch_assoc($select_users)) {
         ?>
            <div class="box">
               <p> User id : <B><?php echo $fetch_users['id']; ?></b> </p>
               <p> Username : <b><?php echo $fetch_users['name']; ?></b> </p>
               <p> Email : <b><?php echo $fetch_users['email']; ?></b> </p>
               <p> User type : <b style="color:<?php if ($fetch_users['user_type'] == 'admin') {
                                                   echo 'var(--orange)';
                                                } ?>"><?php echo $fetch_users['user_type']; ?></b> </p>
               <a href="admin_users.php?delete=<?php echo $fetch_users['id']; ?>" onclick="return confirm('Delete this user?');" class="delete-btn">Delete user</a>
            </div>
         <?php
         };
         ?>
      </div>

   </section>









   <script src="js/admin_script.js"></script>

</body>

</html>