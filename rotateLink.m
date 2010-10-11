%   P0 is a 2-vector defining position of the end of the link about which the rotation is occuring.
%   lngth is the length of the link.
%   ang is the angle of link relative to the horizontal in radians (+ve anti-clockwise).

%   The function returns P, the 2-vector defining the position of the other end of the link. 
function  P = rotateLink(P0, lngth, ang)
x=P0(1);
y=P0(2);
currAngl=atan(y/x);
diff=currAngl-ang;
P(0)=lngth*cos(diff);
P(1)=lngth*sin(diff);
end