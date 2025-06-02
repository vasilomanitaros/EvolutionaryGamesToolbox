function combos = all_combinations_sum_m(n, m)
    % This function returns all combinations of non-negative integers
    % of length n that sum to m

    % Total number of places (m stars + n - 1 bars)
    total = m + n - 1;

    % Generate all combinations of n - 1 bar positions
    bar_positions = nchoosek(1:total, n - 1);

    num_combos = size(bar_positions, 1);
    combos = zeros(num_combos, n);

    for i = 1:num_combos
        % The positions of bars split m stars into n parts
        % Add 0 and total+1 to make it easier to compute differences
        positions = [0, bar_positions(i,:), total + 1];
        combos(i, :) = diff(positions) - 1;
    end
end

