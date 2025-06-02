function plots = plots(B, Strategies, Pop, mode, T, J, K)
    if nargin < 4
        error('At least B, Strategies, Pop, and mode must be provided.');
    end

    % Set default labels
    plots = []; % In case you want to return something later

    switch mode
        case 'TourSimImi'
            if nargin < 7
                error('K is required for TourSimImi.');
            end
            [POP, BST] = TourSimImi(B, Strategies, Pop, K, T, J)
            figure;
            plot(0:J, POP, 'LineWidth', 2);
            legend(strrep(Strategies, '_', ' '), 'Location', 'best');
            xlabel('Generation');
            ylabel('Number of Players');
            title('Strategy Frequencies Over Time (TourSimImi)');
            grid on;
            
            case 'TourSimImi2'
            if nargin < 7
                error('K is required for TourSimImi2.');
            end
            [POP, BST] = TourSimImi2(B, Strategies, Pop, K, T, J)
            figure;
            plot(0:J, POP, 'LineWidth', 2);
            legend(strrep(Strategies, '_', ' '), 'Location', 'best');
            xlabel('Generation');
            ylabel('Number of Players');
            title('Strategy Frequencies Over Time (TourSimImi2)');
            grid on;

        case 'TourTheImi'
            if nargin < 6
                error('T is required for TourTheImi.');
            end
            % Graph-based analysis using TourTheImi2
            m = sum(Pop);
            n = length(Strategies);
            combos = all_combinations_sum_m(n, m);
            P_table = TourTheImi(B, Strategies, Pop, K, T);
            figure;
            G = Graph_Markov(P_table, combos, m);
            title('Markov Transition Graph (TourTheImi)');
            
        case 'TourTheImi2'
            if nargin < 6
                error('T is required for TourTheImi2.');
            end
            % Graph-based analysis using TourTheImi2
            m = sum(Pop);
            n = length(Strategies);
            combos = all_combinations_sum_m(n, m);
            P_table = TourTheImi2(B, Strategies, Pop, K, T);
            figure;
            G = Graph_Markov(P_table, combos, m);
            title('Markov Transition Graph (TourTheImi2)');
            
         

        case 'TourTheFit'
            if nargin < 6
                error('T and J are required for TourTheFit.');
            end
            [POP, BST, FIT] = TourTheFit(B, Strategies, Pop, T, J);
            figure;
            plot(1:J, POP, 'LineWidth', 2); % start from 1
            legend(strrep(Strategies, '_', ' '), 'Location', 'best');
            xlabel('Generation');
            ylabel('Number of Players');
            title('Strategy Frequencies Over Time (TourTheFit)');
            grid on;

        case 'TourTheFit2'
            if nargin < 6
                error('T and J are required for TourTheFit2.');
            end
            [POP, BST, FIT] = TourTheFit2(B, Strategies, Pop, T, J);
            figure;
            plot(0:J, POP, 'LineWidth', 2); % start from 0
            legend(strrep(Strategies, '_', ' '), 'Location', 'best');
            xlabel('Generation');
            ylabel('Number of Players');
            title('Strategy Frequencies Over Time (TourTheFit2)');
            grid on;
            
        case 'TourSimFit'
            if nargin < 6
                error('T and J are required for TourSimFit.');
            end
            [POP, BST, FIT] = TourSimFit(B, Strategies, Pop, T, J);
            figure;
            plot(0:J, POP, 'LineWidth', 2); % start from 0
            legend(strrep(Strategies, '_', ' '), 'Location', 'best');
            xlabel('Generation');
            ylabel('Number of Players');
            title('Strategy Frequencies Over Time (TourSimFit)');
            grid on;
         

        otherwise
            error('Unknown mode: %s', mode);
    end
end