% solve for steady state values using fsolve
% call steadystate_problem2_partc function 
global SC
 X = [];
 SC = 1; 
for i = 1:11
    SS = @steadystate_problem2_partc;
    x0 = [0,0]; % inital conditions
    x = fsolve(SS,x0);
    X(i) = x(1); % store values of X for plot 
    SC = SC + 1; % counter for S 
end  

S_val = 1:1:11;
scatter(S_val,X,'*','LineWidth',10)  % plot non-dimensional X vs. Input S
xlabel("S")
ylabel("X")
title("Gene X expression vs Input S")

