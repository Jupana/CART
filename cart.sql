# Host: localhost  (Version 5.5.5-10.1.36-MariaDB)
# Date: 2018-12-04 19:35:28
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "addresses"
#

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "addresses"
#

INSERT INTO `addresses` VALUES (1,'Vilar de Donas','','Madrid','28050','2018-12-04 19:33:48','2018-12-04 19:33:48');

#
# Structure for table "customers"
#

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "customers"
#

INSERT INTO `customers` VALUES (1,'Nicol','nicol@yahoo.com','2018-12-04 19:33:48','2018-12-04 19:33:48');

#
# Structure for table "orders"
#

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `address_id` varchar(255) DEFAULT NULL,
  `paid` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "orders"
#

INSERT INTO `orders` VALUES (1,'750a48833e639b75ed13ad37a24ea4a6e75a20fcea76a7a87d5d9665e4159d27','507','1','1','1','2018-12-04 19:33:48','2018-12-04 19:33:51');

#
# Structure for table "orders_products"
#

DROP TABLE IF EXISTS `orders_products`;
CREATE TABLE `orders_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "orders_products"
#

INSERT INTO `orders_products` VALUES (1,1,1,'2'),(2,1,3,'1');

#
# Structure for table "payments"
#

DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `failed` varchar(255) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "payments"
#

INSERT INTO `payments` VALUES (1,1,'0',0,'2018-12-04 19:33:51','2018-12-04 19:33:51');

#
# Structure for table "products"
#

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `stock` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "products"
#

INSERT INTO `products` VALUES (1,'Produs1','img1.jpg','201','Basarabia','Christmas Beauty\r\n\r\n \r\n- Turta dulce Lambertz-Gingerbread cu interior fructat, glazurata cu ciocolata, 200g;  \r\n- Praline ciocolata Socado, 115g; \r\n- Segafredo Cafea Intermezzo 250g ;\r\n- Ciocolata Schogetten, 100g ;\r\n- Trianon Sticksuri /foite ciocolata 75g ;\r\n- Vin Rosu Vincon, 750ml ;\r\n- Vas Metalic Tematic;','8',NULL,'2018-12-04 19:33:51'),(2,'Produs 2','img2.jpg','301','Transilvania','Christmas Beauty\r\n\r\n \r\n- Turta dulce Lambertz-Gingerbread cu interior fructat, glazurata cu ciocolata, 200g;  \r\n- Praline ciocolata Socado, 115g; \r\n- Segafredo Cafea Intermezzo 250g ;\r\n- Ciocolata Schogetten, 100g ;\r\n- Trianon Sticksuri /foite ciocolata 75g ;\r\n- Vin Rosu Vincon, 750ml ;\r\n- Vas Metalic Tematic;','5',NULL,NULL),(3,'Produs 3','img3.jpg','100','Muntenia','Christmas Beauty\r\n\r\n \r\n- Turta dulce Lambertz-Gingerbread cu interior fructat, glazurata cu ciocolata, 200g;  \r\n- Praline ciocolata Socado, 115g; \r\n- Segafredo Cafea Intermezzo 250g ;\r\n- Ciocolata Schogetten, 100g ;\r\n- Trianon Sticksuri /foite ciocolata 75g ;\r\n- Vin Rosu Vincon, 750ml ;\r\n- Vas Metalic Tematic;','1',NULL,'2018-12-04 19:33:51'),(4,'Produs 4','img4.jpg','50','Craiova','Christmas Beauty\r\n\r\n \r\n- Turta dulce Lambertz-Gingerbread cu interior fructat, glazurata cu ciocolata, 200g;  \r\n- Praline ciocolata Socado, 115g; \r\n- Segafredo Cafea Intermezzo 250g ;\r\n- Ciocolata Schogetten, 100g ;\r\n- Trianon Sticksuri /foite ciocolata 75g ;\r\n- Vin Rosu Vincon, 750ml ;\r\n- Vas Metalic Tematic;','6',NULL,NULL),(5,'Produs 5','img5.jpg','150','Constanta','Christmas Beauty\r\n\r\n \r\n- Turta dulce Lambertz-Gingerbread cu interior fructat, glazurata cu ciocolata, 200g;  \r\n- Praline ciocolata Socado, 115g; \r\n- Segafredo Cafea Intermezzo 250g ;\r\n- Ciocolata Schogetten, 100g ;\r\n- Trianon Sticksuri /foite ciocolata 75g ;\r\n- Vin Rosu Vincon, 750ml ;\r\n- Vas Metalic Tematic;','5',NULL,NULL);
