 function move= Mistrust(history)
    l=size(history,1);
      
    if l==0 %no moves yet
        move=2;
        return;
    end

    move=history(l,2); % tit for tat

end
