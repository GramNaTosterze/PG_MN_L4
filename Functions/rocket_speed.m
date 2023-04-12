function [value] = rocket_speed( t )
m0 = 150000;
q = 2700;
u = 2000;
g = 9.81;
v = 750;
value = u*log(m0/(m0 - q*t)) - g*t - v;
end