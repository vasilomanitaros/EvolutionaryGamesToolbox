function move = prober(history)

    l = size(history, 1);

    if l == 0
        move = 2; % First move: Defect
        return;
    elseif l == 1
        move = 1; % Second move: Cooperate
        return;
    elseif l == 2
        move = 1; % Third move: Cooperate
        return;
    end

    % After first 3 moves:
    if history(2,2) == 1 && history(3,2) == 1
        % Opponent cooperated on both move 2 and 3
        move = 2; % Always defect from now on
    else
        % Tit for Tat: Copy opponent’s last move
        move = history(l, 2);
    end

end