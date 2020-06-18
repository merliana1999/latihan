<!DOCTYPE html>

<head>

    <title>Sistem Informasi Penjualan</title>

	<link rel="stylesheet" type="text/css" href="layout/assets/css/style.css">


  </head>
<body>
	
	<div class="content">
	<header>
		<h1 class="judul">ONLINE SHOP</h1>
		<h3 class="deskripsi">SISTEM INFORMASI PENJUALAN SEPATU</h3>
	</header>

		<div class="menu">
		<ul>
			<li><a href="index.php?halaman=home">HOME</a></li>
			<li><a href="index.php?halaman=user">DATA USER</a></li>
			<li><a href="index.php?halaman=kategori">DATA KATEGORI</a></li>
			<li><a href="index.php?halaman=produk">DATA PRODUK</a></li>
			<li><a href="index.php?halaman=order">DATA ORDER</a></li>
			<li><a href="index.php?halaman=detail">DATA DETAIL ORDER</a></li>
			<li><a href="index.php?halaman=keranjang">DATA KERANJANG</a></li>

		</ul>
	</div>
 
	<div class="badan">
 
 
	<?php 
	if(isset($_GET['halaman'])){
		$page = $_GET['halaman'];
 
		switch ($page) {
			case 'home':
				include "utama.php";
				break;
			case 'user':
				include "tampil_user.php";
				break;
			case 'kategori':
				include "tampil_kategori.php";
				break;
			case 'produk':
				include "tampil_produk.php";
				break;
			case 'order':
				include "tampil_order.php";
				break;
			case 'detail':
				include "tampil_order_detail.php";
				break;
			case 'keranjang':
				include "tampil_keranjang.php";
				break;		
			
		}
	}else{
		include "utama.php";
	}
 
	 ?>

</div>
</body>