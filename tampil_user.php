<?php 

require_once "app/user.php";

$user = new user();
$rows = $user->tampil();

?>

<h2>DATA USER</h2>


	<table>
		<tr class="baris">
			<td>ID</td>
			<td>EMAIL</td>
			<td>PASSWORD</td>
			<td>NAMA</td>
			<td>ALAMAT</td>
			<td>HP</td>
			<td>POS</td>
			<td>ROLE</td>
			<td>AKTIF</td>
			<td>CREATE</td>
			<td>UPDATE</td>

		</tr>

		<?php foreach ($rows as $row) { ?>

			<tr>
				<td><?php echo $row['user_id']; ?></td>
				<td><?php echo $row['user_email']; ?></td>
				<td><?php echo $row['user_password']; ?></td>
				<td><?php echo $row['user_nama']; ?></td>
				<td><?php echo $row['user_alamat']; ?></td>
				<td><?php echo $row['user_hp']; ?></td>
				<td><?php echo $row['user_pos']; ?></td>
				<td><?php echo $row['user_role']; ?></td>
				<td><?php echo $row['user_aktif']; ?></td>
				<td><?php echo $row['created_at']; ?></td>
				<td><?php echo $row['updated_at']; ?></td>

			</tr>

		<?php } ?>
	</table>
