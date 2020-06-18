<?php 

require_once "app/order.php";

$order = new order();
$rows = $order->tampil();

?>
<h2>DATA ORDER</h2>

	
	<table>
		<tr class="baris">
			<td>ID</td>
			<td>ID USER</td>
			<td>TGL ORDER</td>
			<td>KODE</td>
			<td>TTL ORDER</td>
			<td>KURIR</td>
			<td>ONGKIR</td>
			<td>BAYAR</td>
			<td>BATAL</td>
			<td>UPDATE</td>

		</tr>

		<?php foreach ($rows as $row) { ?>

			<tr>
				<td><?php echo $row['order_id']; ?></td>
				<td><?php echo $row['order_id_user']; ?></td>
				<td><?php echo $row['order_tgl']; ?></td>
				<td><?php echo $row['order_kode']; ?></td>
				<td><?php echo $row['order_ttl']; ?></td>
				<td><?php echo $row['order_kurir']; ?></td>
				<td><?php echo $row['order_ongkir']; ?></td>
				<td><?php echo $row['order_byr_deadline']; ?></td>
				<td><?php echo $row['order_batal']; ?></td>
				<td><?php echo $row['updated_at']; ?></td>

			</tr>

		<?php } ?>
	</table>