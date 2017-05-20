% Week 4 Assignment
% Kathleen Williams
% Set Input data

% Objective Function
f = [0 0 -1 0 0]';

% Quantity
Aeq = [];
beq = []';

lb = [0 0 -10 0 0]';
ub = [5 5 15 1 1]';

A = [-1 -1 1 15 0;
    1 1 -1 20 0;
    -3 2 1 0 25;
    3 -2 -1 0 25;
    0 0 0 -1 -1];
b = [15 20 25 25 -1]';

xint=[0 0 0 1 1]'; %specifying whether a variable is integer: 1->integer, 0->continuous

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