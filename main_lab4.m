clc
clear all
close all

%% Zad B
% A
[bis_xvect, bis_xdif, ~, ~] = bisection(@computing_time,1,60000,1e-3);
[sec_xvect, sec_xdif, ~, ~] = secant(@computing_time,1,60000,1e-3);

figure
plot(bis_xvect)
hold on
plot(sec_xvect)
hold off
legend("Bisekcja", "Metoda Siecznych")
title("Przybliżone wartości rozwiązania dla Wyznaczania czasu wykonywania programu")
ylabel("wartości rozwiązania")
xlabel("kolejne iteracje")
print -dpng Plots/computing_time

figure
semilogy(bis_xdif)
hold on
semilogy(sec_xdif)
hold off
legend("Bisekcja", "Metoda Siecznych")
title("Zmiana wartości przybliżonego rozwiązania")
ylabel("różnice rozwiązań")
xlabel("kolejne iteracje")
print -dpng Plots/computing_time_difference

% B
[bis_xvect, bis_xdif, ~, ~] = bisection(@compute_impedance,0,50,1e-12);
[sec_xvect, sec_xdif, ~, ~] = secant(@compute_impedance,0,50,1e-12);

figure
plot(bis_xvect)
hold on
plot(sec_xvect)
hold off
legend("Bisekcja", "Metoda Siecznych")
title("Przybliżone wartości rozwiązania dla obliczania impedencji obwodu")
ylabel("wartości rozwiązania")
xlabel("kolejne iteracje")
print -dpng Plots/compute_impendance

figure
semilogy(bis_xdif)
hold on
semilogy(sec_xdif)
hold off
legend("Bisekcja", "Metoda Siecznych")
title("Zmiana wartości przybliżonego rozwiązania")
ylabel("różnice rozwiązań")
xlabel("kolejne iteracje")
print -dpng Plots/compute_impendance_difference


% C
[bis_xvect, bis_xdif, ~, ~] = bisection(@rocket_speed,0,50,1e-12);
[sec_xvect, sec_xdif, ~, ~] = secant(@rocket_speed,0,50,1e-12);

figure
plot(bis_xvect)
hold on
plot(sec_xvect)
hold off
legend("Bisekcja", "Metoda Siecznych")
title("Przybliżone wartości rozwiązania dla obliczania prętkości rakiety")
ylabel("wartości rozwiązania")
xlabel("kolejne iteracje")
print -dpng Plots/rocket_speed

figure
semilogy(bis_xdif)
hold on
semilogy(sec_xdif)
hold off
legend("Bisekcja", "Metoda Siecznych")
title("Zmiana wartości przybliżonego rozwiązania")
ylabel("różnice rozwiązań")
xlabel("kolejne iteracje")
print -dpng Plots/rocket_speed_difference


%% Zad C
options = optimset('Display', 'iter');
fzero(@tan, 4.5, options)
fzero(@tan, 6, options)
