%HITO 1 PARTADO 1
function [ab,pab]= suma_variables (a,pa,b,pb)
% Esta función Calcula la funciÓn de probabilidad de la suma de dos 
%variable aleatoria y la representa gráficamente. Es decir, nos devuelve 
%el vector soporte (ab) y el vector probabilidad (pab) de la suma de dos 
%variables aleatorias independientes


% Calculamos soporte, para ello vemos que el primer componente de este vector 
%(es decir el valor mínimo que va a tomar) será la suma de los primeros 
%componentes de los soportes introducidos y el último, es la suma de los 
%dos últimos componentes de los soportes introducidos

m = length(a);
c = length(b);

min= a(1)+b(1);
max = a(m) + b(c);

ab=[min:max];

%calculamos probabilidad a partir de la fórmula

n= length(ab);

for i= ab(n):-1:ab(1) %para todo i perteneciente al soporte, desde su último componente hasta el primero
    suma=0; % Iniciamos la suma a cero para correcto funcionamiento del sumatorio
    for k = 0:i % k va desde cero hasta i 
        suma = suma + pd(k,a,pa)* pd(i-k,b,pb); %Conseguimos hacer el sumatorio,
        %la nueva suma será la suma anterior más los siguientes términos 
        %multiplicados. Para ello llamamos a la función PD
    end

pab(i-min+1)= suma; 
%Asignamos el valor de suma a cada componentes del vector de
%probabilidades, como el soporte no empieza en 1, ponemos i-min+1 para que
%en cualquier caso el vector soporte (ab) y el vector de probabilidades (pab) 
%tengan la misma longitud
end


end