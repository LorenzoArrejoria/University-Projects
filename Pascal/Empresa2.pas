{
Se tiene los datos de los empleados de una empresa, que tiene 3 sucursales, para cada sucursal se lee la cantidad de empleados previamente al iniciar el proceso.
Se pide: 
A) Cargar los datos por sucursal, de cada empleado se lee: Apellido y nombre, sueldo y area en la cual se desempeña. 
B) Cantidad de empleados de la empresa.
C) Cantidad de empleados que trabajan en el area de calidad por sucursal.
D) Determinar si la empresa tiene un area de capital humano. Si es asi, muestre el total de sueldos abonado para dicha area.
E) Mostrar los datos del empleado con mayor sueldo y determinar a que sucursal pertenece (suponer que es 1).
F) Indique que modificacion haria si no conoce previamente la cantidad de empleados.
G) Mostrar todos los datos calculados.
}

program Empresa2;
uses crt, sysutils;


var cant_empleados, sucursal, i, j, cont_empleados, cont_calidad, sucursal_mayor : integer;
    apellido_nombre, area, area_mayus, apellido_nombre_mayor, area_mayor : string;
    sueldo, sueldo_RHumanos, mayor_sueldo : real;

begin

    cont_empleados := 0;
    sucursal := 3;
    mayor_sueldo := -1000000;
    sueldo_RHumanos := 0;
    area_mayor := '';
    area_mayus := '';

    for i := 1 to sucursal do 
    begin

        writeln('Ingrese la cantidad de empleados en la sucursal ',i,': ');
        read(cant_empleados);
        cont_calidad := 0;

        for j := 1 to cant_empleados do
        begin

            writeln('Ingrese el apellido y nombre del empleado: ');
            read(apellido_nombre);
            writeln('Ingrese el sueldo del empleado: ');
            read(sueldo);
            writeln('Ingrese el area donde trabaja el empleado: ');
            read(area);
            inc(cont_empleados);
            area_mayus := UpperCase(area);

            if(area = 'CALIDAD')then
                inc(cont_calidad);

            if((area = 'CAPITAL HUMANO'))then
                sueldo_RHumanos := sueldo_RHumanos + sueldo;

            if(sueldo > mayor_sueldo)then
            begin
                apellido_nombre_mayor := apellido_nombre;
                area := area_mayor;
                mayor_sueldo := sueldo;
                sucursal_mayor := i;
            end;

        end;

    writeln('La cantidad de empleados que trabajan en el area de calidad de la sucursal', i ,' son: ', cont_calidad);

    end;

    writeln('La cantidad de empleados de la empresa son: ', cont_empleados);
    writeln('El sueldo total de los empleados que trabajan en el area de capital humano es: ', sueldo_RHumanos:0:2);
    writeln('El empleado con mayor sueldo es: ', apellido_nombre_mayor, '. Del area de: ', area_mayor, ' En la sucursal: ', sucursal_mayor,'. Con un sueldo de: $', mayor_sueldo:0:2);

end.

{
program Empresa2;
uses crt;
uses sysutils;

var Respuesta, sucursal, i, j, cont_empleados, cont_calidad : integer;
    apellido_nombre, area, apellido_nombre_mayor, area_mayor : string;
    sueldo, sueldo_RHumanos, mayor_sueldo : real;

begin

    sucursal := 3;
    mayor_sueldo := -1000000;

    for i := 1 to sucursal do 
    begin

        repeat

            writeln('Ingrese el apellido y nombre del empleado: ');
            read(apellido_nombre);
            writeln('Ingrese el sueldo del empleado: ');
            read(sueldo);
            writeln('Ingrese el area donde trabaja el empleado: ');
            read(area);
            inc(cont_empleados);

            area = UpCase(area);

            if(area = 'CALIDAD')then
                inc(cont_calidad);

            if((area = 'CAPITAL HUMANO'))then
                sueldo_RHumanos = sueldo_RHumanos + sueldo;

            if(sueldo > mayor_sueldo)then
            begin
                apellido_nombre_mayor := apellido_nombre;
                area := area_mayor;
                mayor_sueldo = sueldo;
            end;

            writeln('Desea ingresar otro empleado? (S/N): ');
            read(respuesta);

            respuesta = UpCase(respuesta);

        until(respuesta = 'N');
    end;

    writeln('La cantidad de empleados de la empresa son: ', cont_empleados);
    writeln('La cantidad de empleados que trabajan en el area de calidad son: ', cont_calidad);
    writeln('El sueldo total de los empleados que trabajan en el area de capital humano es: ', sueldo_RHumanos:(0:2));
    writeln('El empleado con mayor sueldo es: ', apellido_nombre_mayor, '. Del area de: ', area_mayor, '. Con un sueldo de: $', mayor_sueldo:(0:2));

end.
}