program uno;
type

    persona = record
        edad : string;
        nombre : string;
        altura : string;
    end;

var
    buscador : string;
    i,n,ii : integer ;
    on_off : char ;

    personas : array [1..3] of persona;
begin
    
    n := 0;
    {Cargamos los datos}
    repeat
        begin
            {contador para cada persona}
            n := n + 1; 
            
            
            {Limpiamos}
            for i := 1 to 30 do
                begin   
                    writeln;
                end;

            writeln('Ingrese el nombre');
            readln(personas[n].nombre);

            {Limpiamos}
            for i := 1 to 30 do
                begin   
                    writeln;
                end;
            
            writeln('Ingrese la altura');
            readln(personas[n].altura);

            {Limpiamos}
            for i := 1 to 30 do
                begin   
                    writeln;
                end;
            
            writeln('Ingrese la edad');
            readln(personas[n].edad);

            {Limpiamos}
            for i := 1 to 30 do
                begin   
                    writeln;
                end;

            {Preguntamos}
            writeln('Sumas otro? S/N');
            readln(on_off);
            
        end;
    until (on_off = 'N') or (on_off = 'n');
    
    {Limpiamos}
    for i := 1 to 30 do
        begin   
            writeln;
        end;
   
   
    {Ingrese el dato a buscar}
    writeln('Ingrese un dato a buscar');
    readln(buscador);
    
    
    {Buscador}
    for ii := 1 to n do
        begin
            if (buscador = personas[ii].nombre) or (buscador = personas[ii].altura) or (buscador = personas[ii].edad) then
                begin
                    for i := 1 to 30 do
                        begin   
                            writeln;
                        end;        
                    
                    {Resultado}
                    writeln('------------------');
                    writeln('nombre: ',personas[ii].nombre);
                    writeln('altura: ',personas[ii].altura);
                    writeln('edad  : ',personas[ii].edad);
                    writeln('------------------');
                end;

        end; 
    readln();     
end.