% freq is the frequency of oscillation in cycles per unit time t.
% minval, maxval are the range of values over which the oscillation occurs.
% t is the value of time at which to evaluate the oscillating function.

%The function returns v, the function value at time t. 
function v = oscillate(freq, minval, maxval, t)
counter=1;
loopcounter=freq/(pi*1000);
cnt2=0;
while cnt2<=t
for ang=0:loopcounter:t
    x(counter)=ang;
    v(counter)=sin(ang*freq*2*pi)*(abs(minval-(minval+(maxval-minval)/2)))+minval+(maxval-minval)/2;
    counter=counter+1;
    cnt2=cnt2+loopcounter;
    if(cnt2>t) 
        break;
    end
end
end
plot(x,v);
end