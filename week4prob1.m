% Week 4 Assignment
% Kathleen Williams
% Set Input data

% Objective Function
f = [20 25 30 0 200 620 1660 2460 28 26 32 0 100 200]';

% Quantity
Aeq = [1 1 1 -1 0 0 0 0 0 0 0 0 0 0;
       0 0 0 0 1 1 1 1 1 1 1 -1 0 0;
       0 0 0 1 0 0 0 0 0 0 0 1 0 0];
beq = [0 0 60]';

lb = [0 0 0 0 0 0 0 0 0 0 0 0 0 0]';
ub = [20 30 15 65 1 1 1 1 inf inf inf 80 1 1]';

A = [0 0 0 0 15 0 0 0 -1 0 0 0 0 0;
     0 0 0 0 0 40 0 0 0 -1 0 0 0 0;
     0 0 0 0 0 0 25 0 0 0 -1 0 0 0;
     0 0 0 1 0 0 0 0 0 0 0 0 -15 0;
     0 0 0 0 0 0 0 0 0 0 0 1 0 -10;
     0 0 0 -1 0 0 0 0 0 0 0 0 65 0;
     0 0 0 0 0 0 0 0 0 0 0 -1 0 80];
A = -A;
 b = [0 0 0 0 0 0 0]';

xint=[0 0 0 0 1 1 1 1 0 0 0 0 1 1]'; %specifying whether a variable is integer: 1->integer, 0->continuous

% call MIP solver
[x,fval,exitflag,output,lambda]=mipprog(f,A,b,Aeq,beq,lb,ub,xint);


% Output results
%1. Optimal solution
x
%2. Objective function value
fval
%3. Shadow price for inequality constraints
lambda.ineqlin
%4. Reduced cost for lower bounds and upper bounds
lambda.lower
lambda.upper