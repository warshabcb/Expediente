CREATE TABLE EstadosCivil (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Estado_Civil VARCHAR(50) NOT NULL unique
);

INSERT INTO `Clientes`.`EstadosCivil` (`Estado_Civil`) VALUES ('Soltero');
INSERT INTO `Clientes`.`EstadosCivil` (`Estado_Civil`) VALUES ('Casado');
INSERT INTO `Clientes`.`EstadosCivil` (`Estado_Civil`) VALUES ('Union Libre');
INSERT INTO `Clientes`.`EstadosCivil` (`Estado_Civil`) VALUES ('Divorciado');
INSERT INTO `Clientes`.`EstadosCivil` (`Estado_Civil`) VALUES ('Viudo');