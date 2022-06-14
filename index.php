<?php require_once("conn.php");
    if (!isset($_SESSION)) {
        session_start();
    } ?>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Home</title>
        <link rel="stylesheet" href="tes.css" type="text/css">
		<link rel="stylesheet" href="tes1.css">
        <link rel="stylesheet" href="nav.css">
		
	
	</head>
	
	<body>
    <nav class="nav">
		<div class="nav-area">
			<a class="brand" href="index.php">
				<!-- Text -->
				<span>RM. Hopeless</span>

				<!-- IMG -->
				<!-- <img src="" alt=""> -->
			</a>

			<svg class="nav-burger" fill="none" stroke="currentColor" viewbox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path d="M4 6h16M4 12h16m-7 6h7" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></path></svg>

			<div class="nav-menu">
				<a href="about.php">About Us</a>
				<a href="menu.php">Menu</a>
				<!-- Jika ingin 2 menu, atur script css nya pada mode dekstop ukuran 968px 
				 agar displaynya menjadi block dengan memberi komentar css .nav-menu-dekstop -->
				 <a href="regeister.php">Sign Up</a>
				<a href="login.php">Login</a>

			<!-- Jika ingin 2 menu di navbar, beri komentar script html yang ini -->
			<div class="nav-menu-dekstop">
				<a href="register.php">Sign Up</a>
				<a href="login.php">Login</a>
			</div>
		</div>
		
	</nav>
	<script src="main.js"></script>
	</section>
    <section class="product-list ">
      <div>
        <h1 class="align-center">
          Products
        </h1>
      </div>

      <div class="product-container">
     
<!--       First Product -->

		<?php
            $sql = mysqli_query($koneksi, "SELECT * FROM produk ORDER BY kode DESC limit 6");
             while($data = mysqli_fetch_array($sql)){
        ?>
      <div class="card">
        <div class="content"> 
        <div class="title"><h3><?php echo $data['nama']; ?></h3></div>
        <div class="image">
          <img
            	src="customer/<?php echo $data['gambar']; ?>" style="border: 2px solid grey; border-radius: 5px; width: 250px; height: 200px;"  />
        </div>
        <div class="text">
          <h3>Rp.<?php echo number_format($data['harga'],2,",","."); ?></h3>
        </div>
         </div>
		 <div class="nav-menu">
			<a href="login.php">Buy</a>
		</div>
     
      </div>
	  <?php
			 }
		?>
    </section>

	
	</body>
</html>