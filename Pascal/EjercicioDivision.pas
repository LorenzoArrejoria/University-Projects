//Escribir una función lógica de dos parámetros enteros que devuelva True si uno divide al otro y False en caso contrario.

program EjercicioDivision;

var numero1, numero2 : integer;

    function Division(num1, num2 : integer):boolean;
        begin
            if(num1 <> 0) and (num2 <> 0)then
                if (num1 mod num2 = 0) and (num2 <> 0) then
                    Division := True
                else
                    Division := False;
        end;
begin
  
    write('Ingrese el numero 1: ');
    read(numero1);
    write('Ingrese el numero 2: ');
    read(numero2);
    if(numero2 <> 0) then
    begin

        if(Division(numero1, numero2))then
        begin
            write('True')
        end
        else
        begin
            write('False');
        end
    end

    else
    begin
        write('La division no esta definida');
    end;
end.
