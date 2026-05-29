//Escribir una función que dados 2 números, calcule el porcentaje que el primero representa respecto del segundo.

program FuncionPorcentaje;

var numero1, numero2 : integer;

    function Porcentaje(num1, num2 : integer) : real;
    begin
        Porcentaje := (num1 * 100) / num2;
    end;

begin

    Write('Ingrese el primer numero: ');
    read(numero1);
    Write('Ingrese el segundo numero: ');
    read(numero2);

    Write(Porcentaje(numero1, numero2):0:2);
end.