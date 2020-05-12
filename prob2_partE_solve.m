X = []; Y = []; Z = [];
global SE
 SE = 105; 
    SS = @prob2_partE_funct;
    x0 = [0,0,0]; % inital conditions
    x = fsolve(SS,x0);
    
% steady state values 
x(1) % X
x(2) % Y
x(3) % Z
