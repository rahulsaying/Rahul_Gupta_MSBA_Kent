max: 13.4x1g1 + 10.2x2g1 + 8.6x3g1 + 13.2x4g1 + 18x5g1 + 16.6x6g1 + 15.4x7g1 + 16.8x8g1 + 12x9g1 + 13.4x10g1 + 14x11g1 +
13.4x1g2 + 10.2x2g2 + 8.6x3g2 + 13.2x4g2 + 18x5g2 + 16.6x6g2 + 15.4x7g2 + 16.8x8g2+ 12x9g2 + 13.4x10g2 + 14x11g2 +
13.4x1g3 + 10.2x2g3 + 8.6x3g3 + 13.2x4g3 + 18x5g3 + 16.6x6g3 + 15.4x7g3 + 16.8x8g3+ 12x9g3 + 13.4x10g3 + 14x11g3;

x1g1+x1g2+x1g3=1;
x2g1+x2g2+x2g3=1;
x3g1+x3g2+x3g3=1;
x4g1+x4g2+x4g3=1;
x5g1+x5g2+x5g3=1;
x6g1+x6g2+x6g3=1;
x7g1+x7g2+x7g3=1;
x8g1+x8g2+x8g3=1;
x9g1+x9g2+x9g3=1;
x10g1+x10g2+x10g3=1;
x11g1+x11g2+x11g3=1;


x1g1+x2g1+x3g1+x4g1+x5g1+x6g1+x7g1+x8g1+x9g1+x10g1+x11g1 <= 4;
x1g1+x2g1+x3g1+x4g1+x5g1+x6g1+x7g1+x8g1+x9g1+x10g1+x11g1 >= 3;

x1g2+x2g2+x3g2+x4g2+x5g2+x6g2+x7g2+x8g2+x9g2+x10g2+x11g2 <= 4;
x1g2+x2g2+x3g2+x4g2+x5g2+x6g2+x7g2+x8g2+x9g2+x10g2+x11g2 >= 3;

x1g3+x2g3+x3g3+x4g3+x5g3+x6g3+x7g3+x8g3+x9g3+x10g3+x11g3 <= 4; 
x1g3+x2g3+x3g3+x4g3+x5g3+x6g3+x7g3+x8g3+x9g3+x10g3+x11g3 >= 3;




/*

x1g1+x1g2+x1g3=13.4;
x2g1+x2g2+x2g3=10.2;
x3g1+x3g2+x3g3=8.6;
x4g1+x4g2+x4g3=13.2;
x5g1+x5g2+x5g3=18;
x6g1+x6g2+x6g3=16.6;
x7g1+x7g2+x7g3=15.4;
x8g1+x8g2+x8g3=16.8;
x9g1+x9g2+x9g3=12;
x10g1+x10g2+x10g3=13.4;
x11g1+x11g2+x11g3=14;

 x1g1+x2g1+x3g1+x4g1+x5g1+x6g1+x7g1+x8g1+x9g1+x10g1+x11g1 >= 30.8;
 x1g1+x2g1+x3g1+x4g1+x5g1+x6g1+x7g1+x8g1+x9g1+x10g1+x11g1 <= 66.8; 
 
 group1<- c('x1g1','x2g1','x3g1','x4g1','x5g1','x6g1','x7g1','x8g1','x9g1','x10g1','x11g1'); 
 length(group1)<=4;
 length(group1)>=3;
 
 group2<- c('x1g2','x2g2','x3g2','x4g2','x5g2','x6g2','x7g2','x8g2','x9g2','x10g2','x11g2'); 
 length(group2)<=4;
 length(group2)>=3;
 
 group3<- c('x1g3','x2g3','x3g3','x4g3','x5g3','x6g3','x7g3','x8g3','x9g3','x10g3','x11g3'); 
 length(group3)<=4;
 length(group3)>=3;
 

x1g2+x2g2+x3g2+x4g2+x5g2+x6g2+x7g2+x8g2+x9g2+x10g2+x11g2 >= 30.8;
x1g2+x2g2+x3g2+x4g2+x5g2+x6g2+x7g2+x8g2+x9g2+x10g2+x11g2 <= 66.8;

x1g3+x2g3+x3g3+x4g3+x5g3+x6g3+x7g3+x8g3+x9g3+x10g3+x11g3 >= 30.8;
x1g3+x2g3+x3g3+x4g3+x5g3+x6g3+x7g3+x8g3+x9g3+x10g3+x11g3 <= 66.8;

*/







