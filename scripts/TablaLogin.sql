CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_identificacion VARCHAR(20) UNIQUE NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    passwd VARCHAR(255) NOT NULL,
    email VARCHAR(100),
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    ultimo_acceso DATETIME
);
