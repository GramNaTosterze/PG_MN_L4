function [xvect,xdif,fx,it_cnt] = bisection(fun,a,b,eps)
% fun - funkcja, ktorej miejsce zerowe bedzie poszukiwane
% [a,b] - przedzial poszukiwania miejsca zerowego
% eps - prog dokladnosci obliczen
% 
% xvect - wektor kolejnych wartosci przyblizonego rozwiazania
% xdif - wektor roznic pomiedzy kolejnymi wartosciami przyblizonego rozwiazania
% fx - wektor wartosci funkcji dla kolejnych elementow wektora xvect
% it_cnt - liczba iteracji wykonanych przy poszukiwaniu miejsca zerowego

xvect = zeros(1, 1000);
fx = zeros(1, 1000);

for i = 1:1000
    c = (a + b)/2;
    fc = fun(c); % wartosci funkcji fun dla wartosci c
    xvect(i) = c;
    fx(i) = fc;
    if abs(fc) < eps || abs(b - a) < eps
        xvect = xvect(1:i);
        fx = fx(1:i);
        xdif = abs(diff(xvect));
        it_cnt = i;
        return
    elseif fun(a)*fc <= 0
        b = c;
    else
        a = c;
    end

end
xdif = abs(diff(xvect));
it_cnt = 1000;

end

