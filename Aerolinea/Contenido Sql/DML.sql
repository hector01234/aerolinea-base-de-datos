INSERT INTO `aerolinea`.`aviones` (`modelo`, `fabricante`, `capacidad`, `angar`) VALUES ('A20', 'Fiat', 'baja', '4');
INSERT INTO `aerolinea`.`aviones` (`modelo`, `fabricante`, `capacidad`, `angar`) VALUES ('A700', 'Chevrolet', 'media', '5');

INSERT INTO `aerolinea`.`vuelos` (`nro`, `fecha`, `hora`, `ciudad`, `nro_avion`) VALUES ('A52', '2022-10-28', '07:00', 'Bogota', '1');
INSERT INTO `aerolinea`.`vuelos` (`nro`, `fecha`, `hora`, `ciudad`, `nro_avion`) VALUES ('B05', '2022-10-30', '15:00', 'España', '2');

INSERT INTO `aerolinea`.`pasajeros` (`pasaporte`, `nro_vuelo`) VALUES ('ABC468', 'A52');
INSERT INTO `aerolinea`.`pasajeros` (`pasaporte`, `nro_vuelo`) VALUES ('ABD418', 'B05');
INSERT INTO `aerolinea`.`pasajeros` (`pasaporte`, `nro_vuelo`) VALUES ('ABJ438', 'A52');
INSERT INTO `aerolinea`.`pasajeros` (`pasaporte`, `nro_vuelo`) VALUES ('ABE448', 'A52');
INSERT INTO `aerolinea`.`pasajeros` (`pasaporte`, `nro_vuelo`) VALUES ('ABJ418', 'B05');
INSERT INTO `aerolinea`.`pasajeros` (`pasaporte`, `nro_vuelo`) VALUES ('ABK488', 'B05');

INSERT INTO `aerolinea`.`personales` (`dni`, `nombre`, `apellido`, `area_asignada`, `nro_vuelo`) VALUES ('34587125', 'Sergio', 'Mendoza', 'soporte', 'A52');
INSERT INTO `aerolinea`.`personales` (`dni`, `nombre`, `apellido`, `area_asignada`, `nro_vuelo`) VALUES ('38457654', 'Gustavo', 'Ceratti', 'piloto', 'B05');
INSERT INTO `aerolinea`.`personales` (`dni`, `nombre`, `apellido`, `area_asignada`, `nro_vuelo`) VALUES ('34568795', 'Mario', 'Ledezma', 'piloto', 'A52');
