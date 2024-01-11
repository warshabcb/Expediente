-- Creación de la tabla Telefonos
CREATE TABLE Telefonos (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Identificacion VARCHAR(20) NOT NULL,
    Tipo ENUM('Trabajo', 'Personal', 'Celular', 'Oficina', 'Otro') NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    CONSTRAINT fk_FisicoIdentificacion FOREIGN KEY (Identificacion) REFERENCES Fisicos(Identificacion) -- Llave foránea que conecta con la Identificacion de la tabla Fisico
);

ALTER TABLE Telefonos
ADD COLUMN FechaCreacion DATETIME DEFAULT CURRENT_TIMESTAMP;