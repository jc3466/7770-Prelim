% this function contains the ODES that need to be solved 
function dwdt = prob2_partD_funct(t,w)
S =100; % input value
% parameter values %%
ax = 3.9e-2; ay = 4.3e-3; Bx = 6.1; By = 5.7; 
deltay = 1.05; deltaz = 1.04; zx = 1.3e-5;
yz = 11e-3; xz = 12e-2; xy = 7.9e-4; 
nzx = 2.32; nxy = 2; nyz = 2; nxz = 2;
dwdt = zeros(3,1);
dwdt(1) = ((ax + (Bx*S))/(1+S+(w(3)/zx)^nzx)) - w(1); % dX/dt
dwdt(2) = ((ay+(By*S))/(1+S+(w(1)/xy)^nxy))-(deltay*w(2)); % dY/dt
dwdt(3) = (1/(1+((w(1)/xz)^nxz)+(w(2)/yz)^nyz))-(deltaz*w(3)); % dZ/dt
end 

% w(1) = X
% w(2) = Y
% w(3) = Z