%Probabilidad n dados

function [soporten, probabilidadn] = probabilidadn(n,a,pa)
% Esta función nos devuelve el vector soporte (soporten) y probabilidad (probabilidad n) 
%de la suma de n variables aleatorias discretas, la llamaremos desde el
%script "mainhito1"

b=a; % El primer caso (para i=1) el soporte de a y b será el mismo 
pb=pa; % el vector de probabilidades será a su vez el mismo en el primer caso

for i=1:n-1 % Creamos un bucle que nos de la probabilidad de la suma de n variables,
    %en este caso dados, nos damos cuenta que hacemos una suma menos que el
    %número n, por esto el bucle va hasta n-1
    
[soporten, probabilidadn] = suma_variables(a,pa,b,pb); %con esto conseguimos 
%el soporte y la probabilidad de una variable más cada vez que realizamos el buvle
b=soporten; % Actualizamos el valor de b igualandolo al nuevo soporte obtenido
pb=probabilidadn; % Realizamos lo mismo con los vectores de probabilidad 
end

% Representamos los vectores de soporte y probabilidad finales, es decir la
% f.d.p
plot (b,pb);
end