# Host: localhost  (Version 5.5.5-10.4.11-MariaDB)
# Date: 2022-01-25 13:52:40
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "keranjang"
#

DROP TABLE IF EXISTS `keranjang`;
CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namamenu` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `harga` bigint(1) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `idmenu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

#
# Data for table "keranjang"
#

INSERT INTO `keranjang` VALUES (2,'Coklat','1','1323432',1323432,'dimas123',11),(3,'3423','1','10000',10000,'dimas123',6),(6,'3423','1','10000',10000,'rafli',6);

#
# Structure for table "m_user"
#

DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(150) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

#
# Data for table "m_user"
#

INSERT INTO `m_user` VALUES (11,'admin','d033e22ae348aeb5660fc2140aec35850c4da997','admin','admin','jalan sini','0867327723'),(12,'hafid','948e7581e16d1b630743de9a29b9ddf360100817','user','hafid','jalan alsut','08458454544'),(13,'user','12dea96fec20593566ab75692c9949596833adc9','user','user','jalan user','08349349`');

#
# Structure for table "menu"
#

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `harga` int(20) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `diskon` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

#
# Data for table "menu"
#

INSERT INTO `menu` VALUES (15,'Kaos Hitam',200000,'Pria','menu_220113120609.jpeg',10),(16,'Hoodie Lillac',150000,'Unisex','menu_220113120829.jpeg',10);

#
# Structure for table "pesanan"
#

DROP TABLE IF EXISTS `pesanan`;
CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `subtotal` bigint(20) DEFAULT NULL,
  `item` longtext DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `ongkir` int(11) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

#
# Data for table "pesanan"
#

INSERT INTO `pesanan` VALUES (1,'Kaos Hitam','2022-01-24',200000,'\"[{\\\"id\\\":\\\"39\\\",\\\"namamenu\\\":\\\"Kaos Hitam\\\",\\\"qty\\\":\\\"1\\\",\\\"subtotal\\\":\\\"200000\\\",\\\"harga\\\":\\\"200000\\\",\\\"user\\\":\\\"admin\\\",\\\"idmenu\\\":\\\"15\\\"}]\"','admin','admin',1,200000,'sdfsd',8000,'JABODETABEK','fsd');
