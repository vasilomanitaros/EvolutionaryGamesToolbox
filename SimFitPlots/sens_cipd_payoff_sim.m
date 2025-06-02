Strategies = ["All_C","All_D","TfT","Grim","Per_CD","Willing","Tf2T","Soft_Major", ...
              "Slow_TfT","Reverse_Pavlov","Per_nasty","Per_kind","Mistrust", ...
              "Hard_TfT","Pavlov","Hard_Major", "Gradual", "Per_CCCCD", "Prober"];
Pop10 = [0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 244, 300, 0, 0, 0, 0, 0, 0, 0]; J=500; T = 1000;
o=find(Pop10>0);
str=Strategies(o);
Pop10=Pop10(o);
B2 =[3 0;4.6, 1];
[POP3, BST, FIT] = TourSimFit(B2, str, Pop10, T, J);
J=1000;
B2 =[3 0;4.7, 1];
[POP4, BST, FIT] = TourSimFit(B2, str, Pop10, T, J);
figure;
J=500;
subplot(1,2,1); % First subplot
plot(0:J, POP3, 'LineWidth', 2);
legend(strrep(str,'_',' '), 'Location', 'best');
xlabel('Generation');
ylabel('Number of Players');
title('Strategy Frequencies Over Time');
grid on
J=1000;
% Second plot
subplot(1,2,2); % Second subplot
plot(0:J, POP4, 'LineWidth', 2); 
legend(strrep(str,'_',' '), 'Location', 'best');
xlabel('Generation');
ylabel('Number of Players');
title('Strategy Frequencies Over Time');
grid on
B2= [3 0;5 1];