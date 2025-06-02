addpath('./Strategies');
addpath('./TheFitPlots');
addpath('./Modes');
addpath('./TheImiPlots');
addpath('./Functions');
clear;

% === Payoff Matrix ===
% B is the standard matrix for IPD: [R S; T P] (Reward, Sucker, Temptation, Punishment)
B = [3 0; 5 1];      

% === Available Strategies ===
% 
% All_C           - Always cooperates
% All_D           - Always defects
% TfT             - Tit for Tat
% Grim            - Cooperates until defected, then always defects
% Per_CD          - Periodic: Cooperate then Defect
% Willing         - Starts defecting, cooperates if opponent does
% Tf2T            - Tit for Two Tats
% Soft_Major      - Soft majority: cooperates if opponent mostly cooperates
% Slow_TfT        - Delayed Tit for Tat
% Reverse_Pavlov  - Opposite of Pavlov: switches if rewarded
% Per_nasty       - Periodic nasty pattern
% Per_kind        - Periodic kind pattern
% Mistrust        - Starts defecting, tests opponent
% Hard_TfT        - Defects more aggressively than TfT
% Pavlov          - Win-stay, lose-switch
% Hard_Major      - Hard majority: cooperates only if majority cooperated
% Gradual         - Punishes gradually for defection
% Per_CCCCD       - Periodic strategy: CCCCD...
% Prober          - Tests opponent, then exploits if weak

Strategies = ["Soft_Major", "Per_nasty", "Per_kind"];

% === Initial Population ===
% Each element corresponds to the number of players using the respective strategy in the Strategies array.
Pop = [10, 10, 10];

% === Simulation Parameters ===
T = 100;     % Number of rounds in each Iterated Prisoner's Dilemma game
J = 100;     % Number of generations for evolutionary modes (e.g., TourTheFit)
K = 1;       % Mutation or learning step size (used in some imitation modes)

% === Simulation Modes ===
% Supported modes:
% - 'TourTheImi'
% - 'TourTheImi2'
% - 'TourSimImi' 
% - 'TourTheFit'
% - 'TourTheFit2'
% - 'TourSimFit'

mode = 'TourTheImi';

% === Run Simulation and Plot Results ===
% This function will select the correct simulation and plotting logic
plots(B, Strategies, Pop, mode, T, J, K);
% Else pick a ready example from TheFitPlots or TheImiPlots
%defectors_may_be_strong