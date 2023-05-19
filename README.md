# TectonicStrains
Computing tectonic strains in tectonically active areas using the min horizontal stress
%%%% This script is used to find the tectonic strains using the min Sh values found from the field tests such as minifrac testing, DFIT,LOT/XLOT etc.
%%%% The eqn used for this purpose is linear poroelastic eqn for horzontal stresses with vertical stress set equal to overburden stress
%%%% The eqn is as follows:
%     sh = (v/(1-v))*(Sv - a*Pp) + a*Pp + (v*E/(1-v^2))* ex + (E/(1-v^2))* ey
