function F = prob2_partE_funct(x)
global SE
% solving for steady state values of X Y and Z
ax = 3.9e-2; ay = 4.3e-3; Bx = 6.1; By = 5.7; 
deltay = 1.05; deltaz = 1.04; zx = 1.3e-5;
yz = 11e-3; xz = 12e-2; xy = 7.9e-4; 
nzx = 2.32; nxy = 2; nyz = 2; nxz = 2;
F(1) = ((ax + (Bx*SE))/(1+SE+(x(3)/zx)^nzx)) - x(1); % dX/dt
F(2) = ((ay+(By*SE))/(1+SE+(x(1)/xy)^nxy))-(deltay*x(2)); % dY/dt
F(3) = (1/(1+((x(1)/xz)^nxz)+(x(2)/yz)^nyz))-(deltaz*x(3)); % dZ/dt
end
% x(1) = X 
% x(2) = Y
% x(3) = Z