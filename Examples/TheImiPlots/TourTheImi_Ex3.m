clear

Strategies=["Soft_Major","Per_nasty","Per_kind"];

B=[3 1;4 2]; % Payoff matrix

T=10; %number of rounds for each game

Pop=[3,2,1];

n=length(Strategies);
m=sum(Pop);
K=1;

combos = all_combinations_sum_m(n, m);
P_table=TourTheImi(B,Strategies,Pop,K,T);

figure(1);


G=Graph_Markov(P_table,combos,m);