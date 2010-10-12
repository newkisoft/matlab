function clTester
c1=[1,1];
r1=2;
c2=[3,3];
r2=2;
p=circleIntersect(c1,r1,c2,r2,'r');
hold on;
circle(c1,r1,1000,'-');

circle(c2,r2,1000,'-');
display(p);
x=[p(1,1),p(1,2)];
y=[p(2,1),p(2,2)];
line(x,y);
hold off;
end