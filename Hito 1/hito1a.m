%HITO 1 PARTADO 1

%Introducimos los datos
a=[1 2 3 4 5 6];
b=[1 2 3 4 5 6];
pa=[1/6,1/6,1/6,1/6,1/6,1/6];
pb=[1/6,1/6,1/6,1/6,1/6,1/6];
%Llamamos a la función para que nos devuelva el soporte y probabilidad de
%dos dados
[ab,pab]= suma_variables (a,pa,b,pb);
plot(ab,pab,'o');