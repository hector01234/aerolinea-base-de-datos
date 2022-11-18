-- Traeme el horario del primer vuelo
select min(hora) from vuelos;

-- Trame el horario del primer vuelo y su destino
select ciudad, hora from vuelos where hora = (
	select min(hora) from vuelos
);

-- Trame el horario del primer vuelo, su destino y la cantidad del avion
select vuelos.ciudad, min(vuelos.hora), aviones.capacidad from vuelos 
join aviones on aviones.nro = vuelos.nro_avion;

-- Traeme la cantidad de pasajeros que hay en el avion
select pasajeros.pasaporte, vuelos.nro_avion from vuelos 
join pasajeros on pasajeros.nro_vuelo = vuelos. nro
where nro_avion = 1 ;
                 


-- Traeme los pasajeros que van a la ciudad "x"

select pasajeros.pasaporte, vuelos.ciudad from vuelos 
join pasajeros on pasajeros.nro_vuelo = vuelos. nro
where ciudad = 'españa' ;

-- Traeme los pasajeros del modelo de avion "x"
select pasajeros.pasaporte, aviones.modelo from vuelos 
join pasajeros on pasajeros.nro_vuelo = vuelos. nro
join aviones   on  aviones.nro = vuelos.nro_avion 
where modelo = 'A20' ;

-- Traeme el porcentaje de los pasajeros que van a "x" distino
select pasajeros.pasaporte, vuelos.ciudad from vuelos 
join pasajeros on pasajeros.nro_vuelo = vuelos. nro
group by ciudad = 'españa'
having avg (ciudad = 'españa');
