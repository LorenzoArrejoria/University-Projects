{
Una empresa de internet desea analizar el uso de su red durante varios dias. AL empezar el monitoreo, debe ingresar la cantidad de dias a analizar, por cada dia, ingresa la
cantidad de conexiones registradas.
Para cada conexion se debe ingresar:
Cantidad de datos consumidos (en MB).
Tipo de conexion: 1 streaming, 2 videollamada, 3 navegacion web.
Se pide:
A) Calcular el total de datos consumidos por dias
B) Determinar que tipo de conexion consume mas datos en cada dia
C) Contar cuantas conexiones de videollamada superaron los 500 MB en todo el periodo
D) Determinar el dia con mayor consumo total de datos
}

Program EmpresaInternet;
uses crt, sysutils;

var cant_dias, cant_conex, tipo_conexion, i, j, cont_videollamada500, dia_mayorMB, cont_web, cont_streaming, cont_videollamada : Integer;
    MB_consumidos, cant_MB, mayorMB : Real;

begin

    cant_dias := 0;
    mayorMB := 0;

    write('Ingrese la cantidad de dias a analizar: ');
    read(cant_dias);

    for i := 1 to cant_dias do
    begin

        cont_streaming := 0;
        cont_videollamada := 0;
        cont_web := 0;
        cant_MB := 0;

        writeln('Dia numero ', i);
        writeln('----------------------');
        write('');

        writeln('Ingrese la cantidad de conexiones registradas este dia: ');
        read(cant_conex);

        for j := 1 to cant_conex do
        begin

            writeln('Conexion numero ', j);
            writeln('----------------------');
            write('');

            writeln('Cantidad de datos consumidos (MB): ');
            read(MB_consumidos);
            writeln('Ingrese el tipo de conexion (1. Streaming 2. Videollamada 3. Navegacion Web): ');
            read(tipo_conexion);
            cant_MB := cant_MB + MB_consumidos;

            case tipo_conexion of
                1:
                    begin
                        inc(cont_streaming);
                        if(MB_consumidos > 500)then
                            inc(cont_videollamada500);
                    end;
                2: inc(cont_videollamada);
                3: inc(cont_web);
                else
                writeln('Opcion Incorrecta.');
            end;

        end;

        if(cant_MB > mayorMB)then
        begin
            dia_mayorMB := i;
            mayorMB := cant_MB;
        end;

            if((cont_streaming > cont_videollamada) and (cont_streaming > cont_web))then
                writeln('La conexion que mas datos consumio en este dia fue el streaming')
            else if(cont_videollamada > cont_web)then
                writeln('La conexion que mas datos consumio en este dia fue la videollamada')
            else
                writeln('La conexion que mas datos consumio en este dia fue la navegacion WEB');


        writeln('La cantidad de MB consumidos en este dia fueron: ', cant_MB);

    end;

    writeln('El dia que mas MB fueron consumidos fue el dia: ', dia_mayorMB);

end.