
# Expediente Electronico
## _Control de Clientes Fisicos y Juridicos_
Manejo de datos Basicos de Clientes Fisicos y Juridicos para su administracion.
- Informacion Basica de Contacto.
- Manejo de Bienes Muebles | Inmuebles.

## Características
- Datos Almacenados en MYSQL.
- Amacenamiento de Archivos de Clientes.


# Base Datos

Se utiliza los Siguientes Packages :

1. Mysql.Data.
2. Pomelo.EntityFrameworkCore.MySql.
3. Microsoft.EntityFrameworkCore.

Json Base Datos

```json
 "ConnectionStrings": {
    "Linux": "server=192.168.1.215;port=3306;database=Clientes;user=warco;password=090485"
  },
```


## Tabla usuarios 
| Campo                  | Tipo de Dato       | Características                    | Descripción                             |
|------------------------|--------------------|------------------------------------|-----------------------------------------|
| `id`                   | `INT`              | `AUTO_INCREMENT`, `PRIMARY KEY`    | Identificador único para cada usuario.  |
| `identificacion`       | `VARCHAR(20)`      | `UNIQUE`, `NOT NULL`               | Número de identificación del usuario.   |
| `nombre`               | `VARCHAR(50)`      | `NOT NULL`                         | Nombre del usuario.                     |
| `passwd`               | `VARCHAR(255)`     | `NOT NULL`                         | Contraseña del usuario.                 |
| `email`                | `VARCHAR(100)`     |                                    | Correo electrónico del usuario.         |
| `fecha_creacion`       | `DATETIME`         | `DEFAULT CURRENT_TIMESTAMP`        | Fecha y hora de la creación del usuario.|
| `ultimo_acceso`        | `DATETIME`         |                                    | Fecha y hora del último acceso.         |

## Tabla Fisicos
| Campo             | Tipo de Dato          | Características                 | Descripción                                  |
|-------------------|-----------------------|---------------------------------|----------------------------------------------|
| `Id`              | `INT`                 | `AUTO_INCREMENT`, `PRIMARY KEY` | Identificador único del registro.            |
| `Identificacion`  | `VARCHAR(20)`         | `NOT NULL`                      | Identificación de la persona.                |
| `Nombre`          | `VARCHAR(100)`        | `NOT NULL`                      | Nombre de la persona.                        |
| `PrimerApellido`  | `VARCHAR(100)`        | `NOT NULL`                      | Primer apellido de la persona.               |
| `SegundoApellido` | `VARCHAR(100)`        |                                 | Segundo apellido de la persona.              |
| `FechaNacimiento` | `DATE`                |                                 | Fecha de nacimiento.                         |
| `Sexo`            | `VARCHAR(50)`         |                                 | Sexo de la persona.                          |
| `Nacionalidad`    | `VARCHAR(100)`        |                                 | Nacionalidad de la persona.                  |
| `EstadoCivil`     | `VARCHAR(100)`        |                                 | Estado civil de la persona.                  |
| `Ocupacion`       | `VARCHAR(100)`        |                                 | Ocupación de la persona.                     |
| `CasadoVeces`     | `VARCHAR(50)`         |                                 | Número de veces que ha estado casada/o.      |
| `FechaCreacion`   | `DATETIME`            | `DEFAULT CURRENT_TIMESTAMP`     | Fecha de creación del registro.              |
| `Audit`           | `VARCHAR(255)`        |                                 | Campo de auditoría.                          |

## Tabla Nacionalidades
| Campo            | Tipo                    | Restricciones                | Descripción                                  |
| --------------   |   --------------------- | --------------------------   |--------------------------------------------- |
| `Id`             | `INT`                   | `AUTO_INCREMENT PRIMARY KEY` | Identificador único del registro.            |
| `Nombre_Spanish` | `VARCHAR(60)`           | `NOT NULL UNIQUE`            | Nombre en Español.                           |
| `Nombre_English` | `VARCHAR(60)`           | `NOT NULL UNIQUE`            | Nombre en Ingles.                            |
| `ISO2`           | `VARCHAR(10)`           | `NOT NULL`                   | ISO2 con formato 2 Letras.                   |  
| `ISO3`           | `VARCHAR(10)`           | `NOT NULL`                   | ISO3 con formato 3 Letras.                   |
| `Phone_Code`     | `VARCHAR(10)`           | `NOT NULL`                   | Codigo Telefonico Pais.                      |

### Archivo con nacionbalidades utilizado `/scripts/paises.csv`

## Tabla Generos
| Campo            | Tipo                    | Restricciones                | Descripción                                  |
| --------------   |   --------------------- | --------------------------   |--------------------------------------------- |
| `Id`             | `INT`                   | `AUTO_INCREMENT PRIMARY KEY` | Identificador único del registro.            |
| `Sexo`           | `VARCHAR(20)`           | `NOT NULL UNIQUE`            | Genero Personal                              |


