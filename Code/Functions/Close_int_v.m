function y= Close_int_v(x)
    fl_x=floor(x); % floor function of all the elements

    fr_x=x-fl_x; % fractional part of all the elements

    r=int64(sum(fr_x)); % the integernumber we need to put back into fl_x

    [~,I]=sort(fr_x); %sorting the numbers based on their fractional part

    fl_x(I(1:r))=fl_x(I(1:r))+1;

    y=fl_x;


end

