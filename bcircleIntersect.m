%         c1 and c2 are 2-vectors specifying the centres of the two circles.
%         r1 and r2 are the radii of the two circles.
%         lr is a character 'l' or 'r' indicating whether one wants the solution
%         to the left or right of the line from c1 to c2
%         P is desired one of the two 2D intersection points (if they exist)

function P = bcircleIntersect(c1, r1, c2, r2, lr)
x=c1(1)-c2(1);
y=c1(2)-c2(2);
distance = sqrt((x)^2+(y)^2);
sum=r1+r2;
if sum>distance 
    cal=(distance^2+r1^2-r2^2)/(2*r1*distance);
    % this is the angle between r1 and distance line between two circle
    anglRP=acos(cal);
   
    cal=acos((c2(1)-c1(1))/distance);
    % angle between two center point
    angl=acos(cal);
    fangl=anglRP+angl;
    sangl=abs(anglRP-angl);
    P(1,1)=c1(1)+(r1*cos(fangl));
    P(1,2)=c1(2)+(r1*sin(fangl));
    P(2,1)=c1(1)+(r1*cos(sangl));
    P(2,2)=c1(2)+(r1*sin(sangl));
 
end
end