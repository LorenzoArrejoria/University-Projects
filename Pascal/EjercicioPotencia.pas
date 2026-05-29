//Diseñar una funcion que calcule potencias de forma x^n y un programa que haga uso de la misma, para distintos valores de x y n

program Potencia;
Uses Crt, math;

var base, exponente : integer;

    function Potencia (x, n: integer) :integer;

        begin
            Potencia := x ** n;
        end;

begin

    write('Ingrese la base: ');
    Read(base);
    write('Ingrese la potencia: ');
    Read(exponente);
    write('El numero ', base, ' elevado a la ', exponente, ' es: ', Potencia(base, exponente));

end.