% solve ODEs to get X,Y, or Z vs time plots 
w0 = [-0.0047 0.0137 0.3738];  % initial conditions 
tspan = [0 200];
[t,w] = ode45(@prob2_partD_funct, tspan, w0);

plot(t,w(:,3),'k')
title('Z vs. Time for Cell 1 (S = 100)')
xlabel('t')
ylabel('Z')

% w(1) = X
% w(2) = Y
% w(3)= Z