/*
Elaborar la cláusula de Horn se_pueden_casar/2, la cual recibirá como argumentos los nombres de dos personas
y responderá afirmativa o negativamente. La cláusula también podrá recibir solo uno de los argumentos y responder
con el otro las posibilidades que tiene la persona para la que se hace la consulta. Entre las consideraciones a
tomar debe incluirse que ambas sean de sexo distinto, y que tanto ame la primera a la segunda, como la segunda
a la primera. Elabore también otros hechos que considere necesarios.
*/
%Ejercicio 12:

sexo('Carlos', masculino).
sexo('Eduardo', masculino).
sexo('Rubén', masculino).
sexo('Ricardo', masculino).
sexo('Romeo', masculino).
sexo('Roberto', masculino).
sexo('Mario', masculino).
sexo('Irving', masculino).
sexo('Javier', masculino).
sexo('Alejandro', masculino).

sexo('Elizabeth', femenino).
sexo('Karla', femenino).
sexo('María', femenino).
sexo('Carmen', femenino).
sexo('Elena', femenino).
sexo('Flor', femenino).
sexo('Rocío', femenino).
sexo('Ana', femenino).
sexo('Elsa', femenino).
sexo('Sara', femenino).

ama('Carlos', 'María').
ama('María', 'Carlos').
ama('Roberto', 'Sara').
ama('Sara', 'Roberto').
ama('Irving', 'Ana').
ama('Ana', 'Irving').
ama('Romeo', 'Carmen').
ama('Carmen', 'Romeo').
ama('Javier', 'Romeo').
ama('Romeo', 'Javier').

se_pueden_casar(Pareja1,Pareja2):-
  sexo(Pareja1, SexoP1),
  sexo(Pareja2, SexoP2),
  \==(SexoP1, SexoP2),
  ama(Pareja1, Pareja2),
  ama(Pareja2, Pareja1).
