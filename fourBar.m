
%     "LinkLength": is a cell array of four strings, each string is a valid MATLAB
%     expression for the lengths of links 1 to 4. These expressions can simply be
%     strings representing a constant, say, '2.3', or they can be expressions
%     defined in terms of a time variable, t, (say '3*t').

%     "AngL1 and AngL4": are strings providing valid MATLAB expressions for the
%     angles of Link 1 and Link 4 with respect to the horizontal.

%     "lr": is a character 'l' or 'r' indicating whether one wants
%     the joint J3 to be placed to the left or right of the line from J2 to J4.

%     "PoI": is also a string, it specifies a valid MATLAB statement defining the
%     2D coordinates of a particular point of interest on the mechanism. PoI
%     must be an expression defined in terms of any combination of the
%     variables J1, J2, J3, and J4.

%     "dt": specifies the time increment.

%     "tMax": specifies the maximum time,in the time simulation of the mechanism.

%     The function returns a Nx2 array, P. Each row of P holds the x and y
%     coordinates of the position of PoI at each increment in time.
%     At each 'time step' the function must draw the configuration of the
%     mechanism and plot the current position of the 'point of interest', 
%     along with a line (in contrasting colour) marking all the previous 
%     positions of the point of interest so far. 
function P = fourBar(LinkLength, AngL1, AngL4, lr, PoI, dt, tMax)
  for t = 0:dt:tMax   % 'time' loop 

    % Evaluate the numeric values of the link lengths from the strings
    % stored in LinkLength using the eval function.
    linkLength=evaluateNumericValues(LinkLength);
   
    
    % Evaluate the numeric values of the angles of Link 1 and Link4    
    % from the strings AngL1 and AngL4
    
    angl1=evaluateNumericValues(AngL1);
    angl2=evaluateNumericValues(AngL4);

    % Solve the geometry of the mechanism using rotateLink and circleIntersect
    
    

    % Evaluate PoI and append to the Nx2 matrix P

    % Draw the mechanism and mark the position of PoI


  end      % time loop
end
function numbers=evaluateNumericValues(string)
max=size(string);
numbers=zeros(max);
for i=1:1:max(2)    
    k=char(string(i));
    s=eval(k);
    numbers(i)=s;
end
end