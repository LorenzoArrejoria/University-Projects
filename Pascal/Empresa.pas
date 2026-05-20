{
Una empresa de almacenamiento de granos esta implementando un sistema de monitoreo remoto en silos utilizando sensores conectados a una red de telecomunicaciones para controlar las condiciones de los granos almacenados. 
Cada sensor instalado emn los silos registra la siguiente info
*ID del sensor *Numero de silo en el que esta instalado (1,2,3,4) *Temperatura registrada en grados celsius *Humedad registrada en porcentaje *Nivel de carbono detectado (Ideal, normal, alto y peligroso) 
*Fecha de instalacion del sensor *Si el sensor se encuentra activo o en mantenimiento.

Se pide desarrollar un programa para procesar la informacion y determinar: 
1) Temperatura promedio registrada por sensores. LISTO
2) Porcentaje de sensores activos dentro del sistema. LISTO
3) Cantidad de sensores que cumplen simultaneamente las siguientes condiciones: LISTO
+ Activo con una humedad mayor a 65% y una temperatura mayor a 30 grados celsius. LISTO
4) Cantidad de sensores en mantenimiento en el silo 2. LISTO
5) Porcentaje de sensores con nivel de carbono detectado como alto y peligroso. LISTO
6) Al finalizar los items anteriores, imprimir por pantalla los resultados obtenidos.
}

program Empresa;
uses Crt;

var ID_sensor, numero_silo, niv_carbono, estado_silo, cont_mant2, cont_acti, cont_hum_temp, cont_carbono : integer;
    temperatura, humedad, prom_temp, total_temp, porc_activos, porc_carbono  : Real;
    fecha_instalacion, respuesta : string;
begin

    ID_sensor := 0;
    cont_acti := 0;
    cont_hum_temp := 0;
    cont_mant2 := 0;
    cont_carbono := 0;
    total_temp := 0;

    repeat

        inc(ID_sensor);
        writeln('ID del sensor: ', ID_sensor);
        writeln('Ingrese el Numero de silo en el que esta instalado (1, 2, 3, 4): ');
        read(numero_silo);
        writeln('Ingrese la temperatura registrada en grados celsius: ');
        read(temperatura);
        writeln('Humedad registrada: %');
        read(humedad);
        writeln('Nivel de carbono detectado (1. Ideal 2. Normal 3. Alto 4. Peligroso');
        read(niv_carbono);
        writeln('Fecha de instalacion del sensor: ');
        read(fecha_instalacion);
        writeln('Estado del sensor (1. Activo 2. Mantenimiento)');
        read(estado_silo);

        total_temp := total_temp + temperatura; {Punto 1}

        if(estado_silo = 1) then {Punto 2}
            inc(cont_acti);

        if((numero_silo = 2) and (estado_silo = 2)) then {Punto 4}
            inc(cont_mant2);

        if((temperatura > 30) and (humedad > 65) and (estado_silo = 1)) then {Punto 3}
            inc(cont_hum_temp);

        if((niv_carbono = 3) or (niv_carbono = 4)) then {Punto 5}
            inc(cont_carbono);

        writeln('Desea ingresar otro sensor? (S/N): ');
        read(respuesta);

    until((respuesta = 'n') or (respuesta = 'N'));

    prom_temp := total_temp / ID_sensor; {Punto 1}
    porc_activos := (cont_acti * 100) / ID_sensor; {Punto 2}
    porc_carbono := (cont_carbono *100) / ID_sensor; {Punto 5}

    writeln('El promedio de temperatura es de: ', prom_temp);
    writeln('El porcentaje de sensores activos es de: %', porc_activos);
    writeln('Cantidad de sensores con humedad mayor a 65% y una temperatura mayor a 30 grados celsius es: ', cont_hum_temp);
    writeln('La cantidad de sensores del silo 2 que estan en mantenimiento son: ', cont_mant2);
    writeln('El porcentaje de sensores con niveles altos y peligrosos son: %', porc_carbono);

end.