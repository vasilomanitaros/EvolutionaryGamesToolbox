function move = Per_CD(history)
%periodically cooperate defect
    l = size(history, 1);

    if mod(l, 2) == 0
        move = 1;
    else
        move = 2; 
    end
end