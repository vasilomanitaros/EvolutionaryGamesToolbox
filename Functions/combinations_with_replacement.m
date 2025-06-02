function combs = combinations_with_replacement(n, k)
    % Generate combinations with replacement of 1:n, taken k at a time
    if k == 1
        combs = (1:n)';
    else
        prev = combinations_with_replacement(n, k - 1);
        combs = [];
        for i = 1:n
            % Only keep combinations that are non-decreasing
            valid_rows = all(prev <= i, 2);
            new_rows = [prev(valid_rows, :) repmat(i, sum(valid_rows), 1)];
            combs = [combs; new_rows];
        end
    end
end
