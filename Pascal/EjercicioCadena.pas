//Escribir una función lógica tal que dadas dos cadenas indique si la primera es más larga que la segunda.

program EjercicioCadena;
uses Crt;

var Texto1, Texto2 : string;

    function longitud(cadena1 : string; cadena2 : string) : boolean;
    begin
        
        longitud := Length(cadena1) > Length(cadena2);

    end;

begin
  
    Write('Ingrese la primer cadena: ');
    read(Texto1);
    Write('Ingrese la segunda cadena: ');
    read(Texto2);
    
    if(longitud(Texto1, Texto2)) then
        write('La primer cadena es mas larga.')
    else
        write('La primer cadena no es mas larga.');

end.