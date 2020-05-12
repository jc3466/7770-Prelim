% function that contains the expressions for part c that need to be solved
% using fsolve
function F = steadystate_problem2_partc(x)
global SC
% solving for steady state values of X and Z
ax = 1.5; Bx = 5.0; zx = 0.4; nzx = 2.7; xz = 1.5; nxz = 2.7; deltaz = 1.0;
F(1) =  ((ax + Bx.*SC)./(1+SC+(x(2)/zx).^nzx)) - x(1); 
F(2) =  (1/(1+(x(1)./xz)^nxz))-(deltaz.*x(2));  
end
% x(1) = X 
% x(2) = Z
