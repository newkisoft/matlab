%         c1 and c2 are 2-vectors specifying the centres of the two circles.
%         r1 and r2 are the radii of the two circles.
%         lr is a character 'l' or 'r' indicating whether one wants the solution
%         to the left or right of the line from c1 to c2
%         P is desired one of the two 2D intersection points (if they exist)

function P = circleIntersect(c1, r1, c2, r2, lr)
distance = sqrt((c1(1)-c2(1))^2+(c1(2)^2-c2(2))^2);
sum=r1+r2;
if sum>distance 
    cal=(distance^2+r1^2-r2^2)/2*b*c;
    % this is the angle between r1 and distance line between two circle
    anglRP=acos(cal);
    cal=(distance^2+(c1(1)-c2(1))^2-(c1(2)^2-c2(2))^2)/2*(distance^2)*((c1(1)-c2(1))^2)
    % angle between two center point
    angl=acos(cal);
    angl=anglRP+angl;
    P(0,0)=c1(0)-(c1(0)*cos(anglRP))*cos(angl);
    P(0,1)=c1(1)-(c1(1)*sin(anglRP))*sin(angl);
    P(1,0)=c1(0)-(c1(0)*cos(-anglRP))*sin(angl);
    P(1,1)=c1(1)-(c1(1)*sin(-anglRP))*cos(angl);
end
end