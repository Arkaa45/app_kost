CREATE TABLE tb_penghuni (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(100),
    no_ktp VARCHAR(50),
    no_hp VARCHAR(20),
    tgl_masuk DATE,
    tgl_keluar DATE
);

CREATE TABLE tb_barang (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(100),
    harga DECIMAL(12,2)
);
CREATE TABLE tb_brng_bawaan (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_penghuni INT,
    id_barang INT,
    FOREIGN KEY (id_penghuni) REFERENCES tb_penghuni(id),
    FOREIGN KEY (id_barang) REFERENCES tb_barang(id)
);
CREATE TABLE tb_kamar (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nomor VARCHAR(10),
    harga DECIMAL(12,2)
);

CREATE TABLE tb_kmr_penghuni (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_kamar INT,
    id_penghuni INT,
    tgl_masuk DATE,
    tgl_keluar DATE,
    FOREIGN KEY (id_kamar) REFERENCES tb_kamar(id),
    FOREIGN KEY (id_penghuni) REFERENCES tb_penghuni(id)
);
CREATE TABLE tb_tagihan (
    id INT PRIMARY KEY AUTO_INCREMENT,
    bulan VARCHAR(20),
    id_kmr_penghuni INT,
    jml_tagihan DECIMAL(12,2),
    FOREIGN KEY (id_kmr_penghuni) REFERENCES tb_kmr_penghuni(id)
);
