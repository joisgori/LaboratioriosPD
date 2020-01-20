/*
Encuentre aproximaciones a los valores de las siguientes constantes matemáticas, por medio de
la aplicación de la fórmula que se plantea en cada caso. La cantidad de términos a sumar puede
ser uno de los argumentos de la función, o puede darse en
*/

%Fórmula para aproximación de Euler:

%Necesito primero el factorial
factorial(0, 1).

factorial(X, N):-
  is(Y, -(X, 1) ),
  factorial(Y, Res),
  is(N, *(X, Res)),!.

%Luego, debo preparar la función a ser recursiva:
aproxDeEuler(TotalIteraciones,Iterador,RespuestaFinal):-
  =\=(TotalIteraciones,Iterador),
  factorial(Iterador, RespuestaFact),
  is(Algo, +(/(1,RespuestaFact),RespuestaFinal)),
  is(NuevoIterador, +(Iterador,1)),
  aproxDeEuler(TotalIteraciones,NuevoIterador,Algo),!.

aproxDeEuler(TotalIteraciones,Iterador,RespuestaFinal):-
    =:=(TotalIteraciones,Iterador),
    writeln(RespuestaFinal).
