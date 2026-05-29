//Se desea procesar estudiantes que participaron en las 3 competencias de matemáticas a nivel
//nacional. Por cada estudiante se ingresa: Nombre y apellido, Ciudad de origen, Puntuación
//obtenida, Nivel de estudios (Primario, Secundario, Terciario / Universitario), Edad y Disciplina.

//  A. Se pide realizar la declaración completa del ámbito y la carga de los mismos.
//  B. Mostrar total de puntos realizados por competencia y en total.
//  C. Calcule el porcentaje que representan los estudiantes del Terciario / Universitario sobre el
//      total de los participantes de todas las competencias.
//  D. Determinar el participante con menor edad por competencia.
//  E. Determinar si una persona leída previamente participó de alguna competencia, si es así
//      mostrar los datos.
//  F. Mostrar la cantidad de estudiantes en la Disciplina álgebra de la competencia.


program Parcial;
uses SysUtils;

var Nombre_apellido, Ciudad, Nivel_estudio, Disciplina, Persona_Buscada : string;
    Puntuacion, acum_puntuacion_total, acum_punt1, acum_punt2, acum_punt3, porc_terc : real;
    Edad, i, cont_total, cont_terc, menor_edad1, menor_edad2, menor_edad3, cont_algebra: integer;
    condicion : char;

begin
  
    //Declarar los contadores en 0
    acum_punt1 := 0;
    acum_punt2 := 0;
    acum_punt3 := 0;
    cont_algebra := 0;
    acum_puntuacion_total := 0;
    cont_total := 0;

    for i := 1 to 3 do      //Ciclo por la cantidad de competencias de matematicas
    begin

    //Pregunta por el while
    write('Desea Ingresar un alumno?(S/N): ');
    read(condicion);
    condicion := UpCase(condicion);
    write('Ingrese el nombre de la persona a buscar: ');
    read(Persona_Buscada);

        while condicion <> 'N' do
            inc(cont_total);

            //Declaracion de datos del estudiante
            write('Ingrese el nombre y apellido del estudiante: ');
            read(Nombre_apellido);
            write('Ingrese la ciudad de origen del estudiante: ');
            read(Ciudad);
            write('Ingrese la edad del estudiante: ');
            read(Edad);
            write('Ingrese la puntuacion del estudiante: ');
            read(Puntuacion);
            write('Ingrese la disciplina: ');
            read(Disciplina);
            Disciplina := Upcase(Disciplina);
            write('Ingrese el nivel de estudio: ');
            read(Nivel_estudio);
            Nivel_estudio := UpCase(Nivel_estudio);

            acum_puntuacion_total := acum_puntuacion_total + Puntuacion;

            case i of
            begin
                1: 
                begin
                    acum_punt1:= acum_punt1 + Puntuacion;
                    if(edad < menor_edad1) then
                        menor_edad1 := edad;
                end;
                2: 
                begin
                    acum_punt2:= acum_punt2 + Puntuacion;
                    if(edad < menor_edad2) then
                        menor_edad2 := edad;
                end;
                3: 
                begin
                    acum_punt3:= acum_punt3 + Puntuacion;
                    if(edad < menor_edad3) then
                        menor_edad3 := edad;
                end;
            end;

            if(Nivel_estudio = 'TERCIARIO') or (Nivel_estudio = 'UNIVERSITARIO') then
                inc(cont_terc);

            if(Persona_Buscada = Nombre_apellido)then
            begin
                write(Nombre_apellido);
                write(Ciudad);
                write(Edad);
                write(Ciudad);
                write(Puntuacion);
                write(Disciplina);
                write(Nivel_estudio);
            end;

            if(Disciplina = 'ALGEBRA')then
                inc(cont_algebra);

            write('Desea Ingresar un alumno?(S/N): ');
            read(condicion);

        end;

    end;

    porc_terc := (cont_terc * 100)/cont_total;

    write('La puntuacion total de la competencia 1 es: ', acum_punt1);
    write('La puntuacion total de la competencia 2 es: ', acum_punt2);
    write('La puntuacion total de la competencia 3 es: ', acum_punt3);
    write('El porcentaje de la cantidad de estudiantes de nivel terciario es: ', porc_terc);
    write('El estudiante con menor edad de la competencia 1 es: ', menor_edad1);
    write('El estudiante con menor edad de la competencia 2 es: ', menor_edad2);
    write('El estudiante con menor edad de la competencia 3 es: ', menor_edad3);
    write('La cantidad de estudiantes de algebra son: ', cont_algebra);
end.