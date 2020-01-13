function [p] = pd(k,x,px)
%Calcula probabilidad (p) de que salga un  número en un solo dado, que
%despues utilizaremos en el apartado 1
%introduciendo su soporte (x) y la probabilidad de los casos del soporte (px)


indice= find(x==k) %con el comando indice buscamos si k se encuentra en el 
%soporte, en este caso en x
    if(length(indice)==0)%si no encontramos k en el soporte, la probabilidad 
        %de que salga k es cero
        p=0;
    else %en caso contrario, k si que lo encontramos en el soporte
    p=px(indice) %la probabilidad de k se relaciona con el vector 
    %probabilidades (px), se corresponde con el componente de la
    %posición del índice.
    end
end