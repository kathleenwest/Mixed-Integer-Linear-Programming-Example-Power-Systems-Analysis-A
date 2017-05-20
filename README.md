# Mixed-Integer-Linear-Programming-Example-Power-Systems-Analysis-A
The objective function is the sum of the unit price of the MW multiplied by the quantity to be accepted added to the other ranges and their respective products plus the no-load cost. 


1. Two generators (G1 and G2) are competing to supply a 60MW load. The bidding information of the two generators is shown in Table 1 for G1 and in Table 2 for G2. The minimum and maximum capacities for G1 are 15MW and 65MW, respectively. The minimum and maximum capacities for G2 are 10MW and 80MW, respectively.  

Assume each unit has a no-load cost. No-load cost for G1 is $100. No-load cost for G2 is $200.  

Table 1. G1 Bidding Information Quantity (MW) Price ($/MWh) 20 20 30 25 15 30  

Table 2. G2 Bidding Information Quantity (MW) Price ($/MWh) 15 28 40 26 25 32  

Please find the minimum cost to supply the load and the accepted quantities for G1 and G2. You are required to formulate the problem using mixed-integer linear programming. 

Submission • Complete MILP formulation (variables, objective function, constraints, bounds) • Optimal solutions (commitment of units, accepted quantities, cost to supply the load)  

Hints 

• It’s possible that only one unit is needed to supply the load. 

• If a unit is committed, a no-load cost will be incurred. 
• Cost curve for G1 is convex when it’s committed. Cost curve for G2 is non-convex when it’s committed.
