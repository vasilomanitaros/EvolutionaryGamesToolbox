function [POP, BST] = TourSimImi2(B, Strategies, POP0, K, T, J)
% TourSimImi - K-player imitation simulation over J generations
% Inputs and outputs same as before

    N = length(Strategies);
    total_pop = sum(POP0);

    POP = zeros(J+1, N);
    POP(1, :) = POP0;

    BST = zeros(J, 1);  % Track best strategy index per generation

    for gen = 1:J
        current_counts = POP(gen, :);
        current_pop = Assign_str(Strategies, current_counts);  % Get full strategy list

        % Compute scores for each strategy group
        score_str = Axel2_improved_2(B, Strategies, current_counts, T);

        % Identify best-performing strategies
        [best_strats, rest_strats] = find_best_inf_str(score_str, Strategies);
        best_idx = find(strcmp(Strategies, best_strats{1}));
        a=randi(length(best_strats));

            if (length(best_strats)) > 1
                a=randi(length(best_strats));
                BST(gen) = a;
            else 
                BST(gen) = best_idx;
            end

        % Identify which individuals are using non-best strategies
        rest_idx = find(ismember(current_pop, rest_strats));

        % If not enough, allow some best to "reconsider"
        if length(rest_idx) < K
            bst_idx = find(ismember(current_pop, best_strats));
            needed = K - length(rest_idx);
            rest_idx = [rest_idx; bst_idx(randperm(length(bst_idx), needed))];
        else
            rest_idx = rest_idx(randperm(length(rest_idx), K));
        end

        % Choose new strategies for these K individuals
        new_pop = current_pop;
        for i = 1:K
            % Randomly choose one of the best strategies to imitate
           
            new_pop(rest_idx(i)) = best_strats(a);
        end

        
        POP(gen+1,:) = r2s_state(new_pop,Strategies);
    end
end