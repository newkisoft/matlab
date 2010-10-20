%         c1 and c2 are 2-vectors specifying the centres of the two circles.
%         r1 and r2 are the radii of the two circles.
%         lr is a character 'l' or 'r' indicating whether one wants the solution
%         to the left or right of the line from c1 to c2
%         P is desired one of the two 2D intersection points (if they exist)

function P = circleIntersect(c1, r1, c2, r2, lr)
a=c1(1);
b=c1(2);
c=c2(1);
d=c2(2);
e=c2(1)-c1(1);
f=c2(2)-c1(2);
p = sqrt((e)^2+(f)^2);
k = (p^2 + r1^2 - r2^2)/(2*p);
x1 = a + e*k/p + (f/p)*sqrt(r1^2 - k^2);
y1 = b + f*k/p - (e/p)*sqrt(r1^2 - k^2);
x2 = a + e*k/p - (f/p)*sqrt(r1^2 - k^2);
y2 = b + f*k/p + (e/p)*sqrt(r1^2 - k^2);

P(1,1)=x1;
P(1,2)=y1;
P(2,1)=x2;
P(2,2)=y2;
end