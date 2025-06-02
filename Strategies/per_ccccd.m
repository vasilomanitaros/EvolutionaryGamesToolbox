function move = per_ccccd(history)

    l = size(history,1);
    
    % This strategy cooperates 3 times, then defects once, in a cycle.
    % So the pattern is: [C, C, C, D, C, C, C, D, ...]
    
    pattern = [1 1 1 1 2]; % 1 = cooperate, 2 = defect
    cycle_length = length(pattern);
    
    if l == 0
        move = 1; % Start with cooperate
    else
        index = mod(l, cycle_length);
        if index == 0
            index = cycle_length;
        end
        move = pattern(index);
    end

end