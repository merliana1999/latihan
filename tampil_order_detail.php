<?php 

require_once "app/order_detail.php";

$order_detail = new order_detail();
$rows = $order_detail->tampil();

?>
<h2>DATA DETAIL PRODUK</h2>

	
	<table>
		<tr class="baris">
			<td>ID DETAIL</td>
			<td>ID PRODUK</td>
			<td>DETAIL HARGA</td>
			<td>DETAIL JUMLAH</td>

		</tr>

		<?php foreach ($rows as $row) { ?>

			<tr>
				<td><?php echo $row['detail_id_order']; ?></td>
				<td><?php echo $row['detail_id_produk']; ?></td>
				<td><?php echo $row['detail_harga']; ?></td>
				<td><?php echo $row['detail_jml']; ?></td>

			</tr>

		<?php } ?>
	</table>