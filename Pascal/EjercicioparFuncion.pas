//Escribir una funcion tal que indique si un numero es par o impar

program Funcionpar;

var numero : integer;

    function par(num : integer) : boolean;
        begin
            if (num mod 2 = 0)then
                par := True
            else
                par := False;
        end;

begin

    write('Ingrese el numero: ');
    read(numero);

    if(par(numero))then
        writeln('El numero es par.')
    else    
        writeln('El numero es impar.');

end.