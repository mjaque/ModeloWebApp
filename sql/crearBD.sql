USE modelowebapp;
CREATE TABLE IF NOT EXISTS usuario (id INT AUTO_INCREMENT PRIMARY KEY, nombre VARCHAR(100), clave VARCHAR(50));

INSERT INTO usuario VALUES(1, "admin", MD5("admin"));