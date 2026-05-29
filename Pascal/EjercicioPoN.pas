//Escribir una función que tenga un parámetro de tipo entero y que devuelva la letra P si el No es positivo y N si es negativo o cero.

program EjercicioPoN;

var numero : integer;

    function PosNeg(num : integer) : boolean;
        begin
            if (num > 0)then
                PosNeg := true
            else
                PosNeg := false;
        end;

begin

    write('Ingrese el numero: ');
    read(numero);

    if(PosNeg(numero))then
        writeln('P')
    else
        writeln('N');

end.