function  move = Tit_f_Tat(history)
    l=size(history,1);
      
    if l==0 %no moves yet
        move=1;
        return;
    end

    move=history(l,2); %opponent's move last turn

end

