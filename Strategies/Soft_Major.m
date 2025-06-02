function move = Soft_Major(history)
    l=size(history,1);
      
    if l==0 %no moves yet
        move=1;
        return;
    end

    count_c=0; %counter for moves C

    for i=1:l
        if history(i,2)==1
            count_c=count_c+1;
        end
    end

    if count_c>=l/2 % C is majority
        move=1;
    else
        move=2; % C is minority
    end
end