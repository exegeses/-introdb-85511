-- Script de inserción de 20 registros de prueba para la tabla "clientes"
-- No se incluye idCliente para que continúe el AUTO_INCREMENT
-- (asumiendo que ya existen 5 registros cargados)

INSERT INTO clientes
    (nombre, apellido, dni, telefono, email, fechaAlta)
VALUES
     ('Martina', 'Gómez', 32145678, 1145678901, 'martina.gomez@gmail.com', '2023-02-15'),
     ('Lucas', 'Fernández', 30456789, 1156789012, 'lucas.fernandez@hotmail.com', '2023-03-22'),
     ('Sofía', 'Rodríguez', 35678901, 1167890123, 'sofia.rodriguez@yahoo.com', '2023-04-10'),
     ('Mateo', 'López', 28901234, 1178901234, 'mateo.lopez@gmail.com', '2023-05-05'),
     ('Valentina', 'Martínez', 33456789, 1189012345, 'valentina.martinez@outlook.com', '2023-06-18'),
     ('Joaquín', 'García', 31234567, 1190123456, 'joaquin.garcia@gmail.com', '2023-07-01'),
     ('Camila', 'Pérez', 29876543, 1101234567, 'camila.perez@hotmail.com', '2023-08-12'),
     ('Benjamín', 'Sánchez', 36789012, 1112345678, 'benjamin.sanchez@gmail.com', '2023-09-25'),
     ('Isabella', 'Romero', 27654321, 1123456789, 'isabella.romero@yahoo.com', '2023-10-30'),
     ('Thiago', 'Torres', 34567890, 1134567890, 'thiago.torres@gmail.com', '2023-11-14'),
     ('Emilia', 'Flores', 30219876, 1145678902, 'emilia.flores@outlook.com', '2023-12-03'),
     ('Santiago', 'Díaz', 32987654, 1156789013, 'santiago.diaz@gmail.com', '2024-01-20'),
     ('Julieta', 'Acosta', 28765432, 1167890124, 'julieta.acosta@hotmail.com', '2024-02-08'),
     ('Bautista', 'Suárez', 35123456, 1178901235, 'bautista.suarez@gmail.com', '2024-03-17'),
     ('Renata', 'Molina', 31987654, 1189012346, 'renata.molina@yahoo.com', '2024-04-26'),
     ('Agustín', 'Ortiz', 29345678, 1190123457, 'agustin.ortiz@gmail.com', '2024-05-09'),
     ('Catalina', 'Silva', 36234567, 1101234568, 'catalina.silva@outlook.com', '2024-06-21'),
     ('Nicolás', 'Rojas', 27890123, 1112345679, 'nicolas.rojas@gmail.com', '2024-07-15'),
     ('Delfina', 'Castro', 33654321, 1123456780, 'delfina.castro@hotmail.com', '2024-08-02'),
     ('Ignacio', 'Vega', 30765432, 1134567891, 'ignacio.vega@gmail.com', '2024-09-11');
