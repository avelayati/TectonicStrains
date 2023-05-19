%%
%%% Arian Velayati, PhD
%%%% This script is used to find the tectonic strains using the min Sh
%%%% values found from the field tests such as minifrac testing, DFIT,LOT/XLOT etc.
%%%% The eqn used for this purpose is linear poroelastic eqn for horzontal
%%%% stresses with vertical stress set equal to overburden stress
%%%% The eqn is as follows:

%     sh = (v/(1-v))*(Sv - a*Pp) + a*Pp + (v*E/(1-v^2))* ex + (E/(1-v^2))* ey

clc;close;clear;

%% Input Data for two consecutive depths

v = [ 0.23;0.25 ] ; % Poisson's ratio
E = [ 20;25 ]; % Young's modulus; MPa
sh = [ 63;62 ]; % Total stress; MPa
a = [ 1;1 ]; % Biot's coefficient
Pp = [38 ;40 ]; % Pore Pressure; MPa
sv = [ 101;103 ]; % Vertical Stress; MPa


%% Calculation at two concecutive depths with provided sh values

A = ((1-v(1)^2)/E(1))*(sh(1)-(v(1)/(1-v(1)))*(sv(1)-a(1)*Pp(1))-a(1)*Pp(1));
B = ((1-v(2)^2)/E(2))*(sh(2)-(v(2)/(1-v(2)))*(sv(2)-a(2)*Pp(2))-a(2)*Pp(2));
ey = B / (1+(v(2)/v(1))*(A-1))
ex = (A - ey)/v(1)

%% Calculation of sh and SH

sh = (v(1)/(1-v(1)))*(sv(1) - a(1)*Pp(1)) + a(1)*Pp(1) + (v(1)*E(1)/(1-v(1)^2))* ex + (E(1)/(1-v(1)^2))* ey
sH = (v(1)/(1-v(1)))*(sv(1) - a(1)*Pp(1)) + a(1)*Pp(1) + (v(1)*E(1)/(1-v(1)^2))* ey + (E(1)/(1-v(1)^2))* ex