function [df,intf] = dfint(f,dt)
    df=zeros(1,length(f));
    intf=zeros(1,length(f));
    % iterate over the f array and for each time value,
    for i=2:length(f)
        % Calculate the integral by keeping a running sum of the f
        % values and multiplying by dt
        intf(i)=(sum(f(1:i))) * dt;
     
        % calculate the derivative value by taking the current value
        % of f, subtracting the previous value and dividing by dt
        df(i) =(f(i) - f(i-1)) / dt;
    end
return

