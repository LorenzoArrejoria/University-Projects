//Escribir una función lógica vocal que determine si un carácter es una vocal.

program EjercicioVocal;
uses SysUtils;

var caracter : char;

    function Vocal(car : char):boolean;
    begin
        car := UpCase(car); 
        case car of
        'A': Vocal := True;
        'E': Vocal := True;
        'I': Vocal := True;
        'O': Vocal := True;
        'U': Vocal := True;
        else
            Vocal := False;
        end;
    end;

begin
  
    write('Ingrese el caracter: ');
    read(caracter);

    if(Vocal(caracter)) then
        write('El caracter ingresado es una vocal')
    else
        write('El caracter ingresado no es una vocal');

end.