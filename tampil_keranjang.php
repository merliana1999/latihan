<?php 

require_once "app/keranjang.php";

$keranjang = new keranjang();
$rows = $keranjang->tampil();

?>
<h2>DATA KERANJANG</h2>

	
	<table>
		<tr class="baris">
			<td>ID</td>
			<td>ID USER</td>
			<td>ID PRODUK</td>
			<td>HARGA</td>
			<td>JUMLAH</td>

		</tr>

		<?php foreach ($rows as $row) { ?>

			<tr>
				<td><?php echo $row['ker_id']; ?></td>
				<td><?php echo $row['ker_id_user']; ?></td>
				<td><?php echo $row['ker_id_produk']; ?></td>
				<td><?php echo $row['ker_harga']; ?></td>
				<td><?php echo $row['ker_jml']; ?></td>

			</tr>

		<?php } ?>
	</table>