function move = Grim(history)
    l=size(history,1);

    if l==0
        move=1;
        return;
    end

    
    check= history(:,2)== 2; % find if the opponent has played move 2(Defect) at least one time

    if sum(check) >0 %if it had happened at least one time
        move=2;
    else
        move=1;
    end
end

