<?php 

require_once "app/kategori.php";

$kategori = new kategori();
$rows = $kategori->tampil();

?>
<h2>DATA KATEGORI</h2>

	
	<table>
		<tr class="baris">
			<td>ID</td>
			<td>NAMA KATEGORI</td>
			<td>KETERANGAN</td>
			<td>CREATE</td>
			<td>UPDATE</td>

		</tr>

		<?php foreach ($rows as $row) { ?>

			<tr>
				<td><?php echo $row['kat_id']; ?></td>
				<td><?php echo $row['kat_nama']; ?></td>
				<td><?php echo $row['kat_keterangan']; ?></td>
				<td><?php echo $row['created_at']; ?></td>
				<td><?php echo $row['updated_at']; ?></td>
			</tr>
			
		<?php } ?>
	</table>