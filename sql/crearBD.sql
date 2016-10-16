USE modelowebapp;
CREATE TABLE IF NOT EXISTS usuario (id INT AUTO_INCREMENT PRIMARY KEY, nombre VARCHAR(100), clave VARCHAR(50));

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) UNIQUE NOT NULL,
  `clave` varchar(32) NOT NULL,
  PRIMARY KEY (`id`));

INSERT INTO usuario VALUES(1, "admin", MD5("admin"));