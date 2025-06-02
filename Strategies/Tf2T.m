function move = Tf2T(history)
l=size(history,1);
      
    if l<=1 %cooperate on the first two moves
        move=1;
        return;
    end

    if history(l,2) == 2 && history(l-1,2) == 2 %defects if the opponent defects two consecutive times else cooperate

        move = 2;
    else
        move =1;
    end
        return;
        

end