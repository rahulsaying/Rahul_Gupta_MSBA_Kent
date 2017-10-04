/* x1, x2, x3,x4 = stock bought till 200 for the each month. 
s1, s2, s3, s4 = discounted stock bought over 200 for the each month.
y1, y2, y3, y4 = stock left for next months. 

b1,b2,b3,b4 are binary variables which are forcing stock bought (x1, x2, x3,x4) under 200 or equal to 200, if b1 is 0 then x1 is more than zero but less or equal to 200. In this case we dont need to buy discounted s1, s2.. stock and s1,s2... are zero. 

And If b1 is 1 then x1 is 200 and s1 is non zero positive number.  

After solving the problem it was found that this solution is OPTIMAL. Sensitivity analysis is Optimal. 

It is suggested to buy all the stocks in first month. 200 units at regular rate and 550 at the discounted rate. 

Predicted minimum cost is 10200. 

*/


min: 12x1 + 14x2 + 16x3 + 18x4 + 10s1 + 12s2+ 14s3 + 16s4 + 2y1 + 2y2 + 2y3 + 2y4;

x1 + s1 - y1 = 150;
y1 + x2 + s2 - y2 = 200; 
y2 + x3 + s3 - y3 = 250;
y3 + x4 + s4 - y4 = 150;

0 <= x1 <= 200;
0 <= x2 <= 200;
0 <= x3 <= 200;
0 <= x4 <= 200;


x1 >= 200b1;
x2 >= 200b2;
x3 >= 200b3;
x4 >= 200b4;

s1 <= 1000b1;
s2 <= 1000b2;
s3 <= 1000b3;
s4 <= 1000b4;


bin b1,b2, b3, b4;
