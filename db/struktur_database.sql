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
