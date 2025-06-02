function move = Slow_TfT(history)
l=size(history,1);

if l<=1
    move = 1;
else
    if history(l,2) == 2 && history(l-1,2)== 2 % two consecutive defects
        move = 2;
    elseif history(l,2) == 1 && history(l-1,2)== 1 %two consecutive cooperations
        move = 1;
    else
        move = history(l,1); % copy last move
    end
end
return;

end