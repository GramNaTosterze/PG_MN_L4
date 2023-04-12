function [xvect,xdif,fx,it_cnt] = secant(fun,a,b,eps)
% fun - funkcja, ktorej miejsce zerowe bedzie poszukiwane
% [a,b] - przedzial poszukiwania miejsca zerowego
% eps - prog dokladnosci obliczen
% 
% xvect - wektor kolejnych wartosci przyblizonego rozwiazania
% xdif - wektor roznic pomiedzy kolejnymi wartosciami przyblizonego rozwiazania
% fx - wektor wartosci funkcji dla kolejnych elementow wektora xvect
% it_cnt - liczba iteracji wykonanych przy poszukiwaniu miejsca zerowego


xvect = zeros(1, 1000);
xvect(1) = a;
xvect(2) = b;
fx = zeros(1, 1000);
fx(1) = fun(a);
fx(2) = fun(b);
for i = 3:1000
    xvect(i) = xvect(i-1) - (fx(i-1)*(xvect(i-1) - xvect(i-2)))/(fx(i-1) - fx(i-2));
    fx(i) = fun(xvect(i));
    if abs(fx(i)) < eps
        it_cnt = i;
        xvect = xvect(3:i);
        fx = fx(3:i);
        xdif = abs(diff(xvect));
        return
    end
end


end

