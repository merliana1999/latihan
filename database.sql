CREATE DATABASE dbproduk;

CREATE TABLE tb_users (
	user_id INT(11) NOT NULL AUTO_INCREMENT,
	user_email VARCHAR(50) NOT NULL,
	user_password VARCHAR(100) NOT NULL,
	user_nama VARCHAR(100) NOT NULL,
	user_alamat TEXT,
	user_hp VARCHAR(25) NOT NULL,
	user_pos VARCHAR(5) NOT NULL,
	user_role TINYINT(2) NOT NULL,
	user_aktif TINYINT(2) NOT NULL,
	created_at TIMESTAMP,
	updated_at DATETIME,
	PRIMARY KEY(user_id)
);

CREATE TABLE tb_kategori (
	kat_id TINYINT(3) NOT NULL AUTO_INCREMENT,
	kat_nama VARCHAR(50) NOT NULL,
	kat_keterangan TEXT,
	created_at TIMESTAMP,
	updated_at DATETIME,
	PRIMARY KEY(kat_id)
);

CREATE TABLE tb_order (
	order_id INT(11) NOT NULL AUTO_INCREMENT,
	order_id_user INT(11) NOT NULL,
	order_tgl TIMESTAMP,
	order_kode VARCHAR(50) NOT NULL,
	order_ttl DOUBLE,
	order_kurir VARCHAR(100) NOT NULL,
	order_ongkir INT(11) NOT NULL,
	order_byr_deadline DATETIME NOT NULL,
	order_batal TINYINT(1) NOT NULL,
	updated_at DATETIME,
	PRIMARY KEY(order_id),
	FOREIGN KEY(order_id_user) REFERENCES tb_users(user_id)
);

CREATE TABLE tb_order_detail (
	detail_id_order INT(11) NOT NULL AUTO_INCREMENT,
	detail_id_produk INT(11) NOT NULL,
	detail_harga DOUBLE,
	detail_jml INT(11) NOT NULL,
	PRIMARY KEY(detail_id_order),
	FOREIGN KEY(detail_id_produk) REFERENCES tb_produk(produk_id),
	FOREIGN KEY(detail_id_order) REFERENCES tb_order(order_id)
);

CREATE TABLE tb_produk (
	produk_id INT(11) NOT NULL AUTO_INCREMENT,
	produk_id_kat TINYINT(3) NOT NULL,
	produk_id_user INT(11) NOT NULL,
	produk_kode VARCHAR(50) NOT NULL,
	produk_nama VARCHAR(256) NOT NULL,
	produk_hrg DOUBLE NOT NULL,
	produk_keterangan TEXT,
	produk_stock INT(11) NOT NULL,
	produk_photo VARCHAR(100) NOT NULL,
	created_at TIMESTAMP,
	updated_at DATETIME,
	PRIMARY KEY(produk_id),
	FOREIGN KEY(produk_id_kat) REFERENCES tb_kategori(kat_id),
	FOREIGN KEY(produk_id_user) REFERENCES tb_users(user_id)

);

CREATE TABLE tb_keranjang (
	ker_id INT(11) NOT NULL AUTO_INCREMENT,
	ker_id_user INT(11) NOT NULL,
	ker_id_produk INT(11) NOT NULL,
	ker_harga DOUBLE,
	ker_jml INT(11) NOT NULL,
	PRIMARY KEY(ker_id),
	FOREIGN KEY(ker_id_user) REFERENCES tb_users(user_id),
	FOREIGN KEY(ker_id_produk) REFERENCES tb_produk(produk_id)
);
