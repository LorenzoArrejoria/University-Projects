Program ej_bec;
uses Crt;

var apellido_y_nombre, DNI, direccion, carrera : string;
    respuesta : char;
    cont_total, cont_MB, cont_Ipro, cont_uader, cont_sist, edad, suma_edad_sist, beca : integer;
    monto_total, monto_MB, monto_Ipro, monto_uader, monto_sist, porc_sist, prom_edad_sist : Real;

begin

     cont_MB := 0;
     cont_Ipro := 0;
     cont_uader := 0;
     cont_total := 0;
     cont_sist := 0;

     repeat
     begin
          writeln('Ingrese apellido y nombre del becario: ');
          read(apellido_y_nombre);
          writeln('Ingrese edad del becario: ');
          readln(edad);
          writeln('Ingrese DNI del becario: ');
          readln(DNI);
          writeln('Ingrese direccion del becario: ');
          readln(direccion);
          writeln('Ingrese carrera del becario: ');
          readln(carrera);
          writeln('Ingrese la beca del becario... ');
          writeln('1. Manuel Belgrano  2. Inaubepro  3. Uader');
          writeln('Respuesta: ');
          read(beca);

          case beca of
               1:
               begin
               
                    monto_MB := monto_MB + 81685;
                    inc(cont_MB);
                    if((carrera = 'sistemas') or (carrera = 'Sistemas')) then
                         begin
                                inc(cont_sist);
                                monto_sist := monto_sist + monto_MB;
                                suma_edad_sist := suma_edad_sist + edad;
                         end;
               2:
               begin
               
                    monto_Ipro := monto_Ipro + 80000;
                    inc(cont_Ipro);
                    if((carrera = 'sistemas') or (carrera = 'Sistemas')) then
                    begin
                                inc(cont_sist);
                                monto_sist := monto_sist + monto_Ipro;
                                suma_edad_sist := suma_edad_sist + edad;
                    end;
               3:
               begin
               
                    monto_uader := monto_uader + 12000;
                    inc(cont_uader);
                    if((carrera = 'sistemas') or (carrera = 'Sistemas')) then
                                inc(cont_sist);
                                monto_sist := monto_sist + monto_uader;
                                suma_edad_sist := suma_edad_sist + edad;
               end;
               else
                   write('Opcion incorrecta');
               end;

               writeln('Desea ingresar otro becario? (S/N): ');
               read(respuesta);
     end;
     until((respuesta = 'N') or (respuesta = 'n'));

     monto_total := monto_uader + monto_MB + monto_Ipro;
     cont_total := cont_uader + cont_MB + cont_Ipro;
     porc_sist := (monto_sist * 100) / monto_total;
     prom_edad_sist := suma_edad_sist / cont_total;

     writeln('La cantidad de becarios en Manuel Belgrano es: ', cont_MB);
     writeln('La cantidad de becarios en Inaubepro es: ', cont_Ipro);
     writeln('La cantidad de becarios en UADER es: ', cont_uader);
     writeln('La cantidad de becarios totales es de: ', cont_total);
     writeln('La cantidad de becarios totales en la carrera "Licenciatura en Sistemas de Informacion" es de: ', cont_sist);
     writeln('El monto total de becas es de: ', monto_total);
     writeln('El porcentaje del monto percibido para la "Lic. en Sistemas de Informacion" es de: %', porc_sist);
     writeln('El promedio de edad de los becarios en "Lic. en Sistemas de Informacion" es de: ', prom_edad_sist);

     writeln('Press any key to close...');
     ReadKey();

end.