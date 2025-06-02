function move = Willing(history)
    l=size(history,1);

    if l==0 %no moves yet
        move=1;
        return;
    end

    if history(l,1)==2 || history(l,2)==2 %if both players defected
        move=2;
    else
        move=1;
    end
end

