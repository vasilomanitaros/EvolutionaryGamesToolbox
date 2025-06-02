clear

Strategies=["Per_CD","Soft_Major","Per_nasty"];

B=[3 1;4 2]; % Payoff matrix

T=10; %number of rounds for each game

Pop=[5,5,5];

n=length(Strategies);
m=sum(Pop);
K=1;

combos = all_combinations_sum_m(n, m);
P_table=TourTheImi2(B,Strategies,Pop,K,T);

figure(1);


G=Graph_Markov(P_table,combos,m);