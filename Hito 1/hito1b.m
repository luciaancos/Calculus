%HITO 1 APARTADO 2
%El Teorema Central del límite (TCL) afirma que bajo ciertas hipótesis si 
%sumamos muchas variables aleatorias, la variable aleatoria suma tiene una
%distribución normal, como se ve al ejecutar el siguiente código


clc,clear

% Introducimos los datos iniciales 
a=[1 2 3 4 5 6];
b=[1 2 3 4 5 6];
pa=[1/6,1/6,1/6,1/6,1/6,1/6];
pb=[1/6,1/6,1/6,1/6,1/6,1/6];

%Probabilidad de la suma de 10 dados 
n=10; 
subplot(2,2,1);
[soporten, probabilidadn] = probabilidadn(n,a,pa); %Llamamos a la función
%probabilidadn para que realice su función con los argumentos especificados previamente
clear soporten;
clear probabilidadn;%Vaciamos los vectores de soporte y probabilidad para 
%n valores para que no haya errores para el próximo valor de n
title ('Lanzamiento de 10 dados');
xlabel ('Soporte');
ylabel ('Probabilidad');

%Probabilidad de la suma de 30 dados, repetimos el proceso 
n=30;
subplot(2,2,2)
[soporten, probabilidadn] = probabilidadn(n,a,pa);
clear soporten; 
clear probabilidadn;
title ('Lanzamiento de 30 dados');
xlabel ('Soporte');
ylabel ('Probabilidad');


%Probabilidad de la suma de 100 dados, repetimos el proceso. En este caso,
%hay que esperar a que se represente, ya que al ser un número mayor el programa realiza más operaciones y por tanto le toma más tiempo 
n=100;
subplot(2,2,3)
[soporten, probabilidadn] = probabilidadn(n,a,pa);
title ('Lanzamiento de 100 dados');
xlabel ('Soporte');
ylabel ('Probabilidad');

%Vemos como las probabilidades se asemejan a campanas de Gauss