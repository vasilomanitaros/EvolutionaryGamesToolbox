clear

Strategies=["TfT","Per_CD","Gradual"];

B=[3 1;4 2]; % Payoff matrix

T=10; %number of rounds for each game
J=10;
K=1;
Pop=[5,5,5];

[POP, BST] = TourSimImi(B, Strategies, Pop, K, T, J)

figure;
plot(0:J, POP, 'LineWidth', 2);
legend(strrep(Strategies, '_', ' '), 'Location', 'best');
xlabel('Generation');
ylabel('Number of Players');
title('Strategy Frequencies Over Time (TourSimImi)');
grid on;