CREATE TABLE Fisico (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Identificacion VARCHAR(20) NOT NULL,
    Nombre VARCHAR(100) NOT NULL,
    PrimerApellido VARCHAR(100) NOT NULL,
    SegundoApellido VARCHAR(100),
    FechaNacimiento DATE,
    Sexo VARCHAR(50),
    Nacionalidad VARCHAR(100),
    EstadoCivil VARCHAR(100),
    Ocupacion VARCHAR(100),
    CasadoVeces INT,
    FechaCreacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    Audit VARCHAR(255)
);

CREATE TABLE Tipos_ID (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Tipo VARCHAR(50) NOT NULL,
);
ALTER TABLE Fisicos
MODIFY COLUMN Ocupacion VARCHAR(100) NOT NULL DEFAULT 'No especificado';

ALTER TABLE Fisicos
MODIFY COLUMN CasadoVeces int NOT NULL DEFAULT 0;


ALTER TABLE Fisicos
ADD COLUMN Tipo_Identificacion VARCHAR(100) NOT NULL DEFAULT 'Cedula Identificacion';

 