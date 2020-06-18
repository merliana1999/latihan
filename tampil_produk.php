<?php 

require_once "app/produk.php";

$produk = new produk();
$rows = $produk->tampil();

?>

<h2>DATA PRODUK</h2>

	
	<table>
		<tr class="baris">
			<td>ID</td>
			<td>ID KATEGORI</td>
			<td>ID USER</td>
			<td>KODE</td>
			<td>NAMA</td>
			<td>HARGA</td>
			<td>KETERANGAN</td>
			<td>STOCK</td>
			<td>PHOTO</td>
			<td>CREATE</td>
			<td>UPDATE</td>

		</tr>

		<?php foreach ($rows as $row) { ?>

			<tr>
				<td><?php echo $row['produk_id']; ?></td>
				<td><?php echo $row['produk_id_kat']; ?></td>
				<td><?php echo $row['produk_id_user']; ?></td>
				<td><?php echo $row['produk_kode']; ?></td>
				<td><?php echo $row['produk_nama']; ?></td>
				<td><?php echo $row['produk_hrg']; ?></td>
				<td><?php echo $row['produk_keterangan']; ?></td>
				<td><?php echo $row['produk_stock']; ?></td>
				<td><?php echo $row['produk_photo']; ?></td>
				<td><?php echo $row['created_at']; ?></td>
				<td><?php echo $row['updated_at']; ?></td>

			</tr>

		<?php } ?>
	</table>