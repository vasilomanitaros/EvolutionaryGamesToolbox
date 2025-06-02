Strategies = ["All_C","All_D","TfT","Grim","Per_CD","Willing","Tf2T","Soft_Major", ...
              "Slow_TfT","Reverse_Pavlov","Per_nasty","Per_kind","Mistrust", ...
              "Hard_TfT","Pavlov","Hard_Major", "Gradual", "Per_CCCCD", "Prober"];
Pop11 = [0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 200, 300, 0, 0, 0, 0, 0, 0, 0]; J=1000;
o=find(Pop11>0);
str=Strategies(o);
Pop11=Pop11(o);
[POP3, BST, FIT] = TourTheFit2(B, str, Pop11, T, J);
[POP4, BST, FIT] = TourTheFit(B, str, Pop11, T, J);
figure;
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
plot(0:J-1, POP4, 'LineWidth', 2); 
legend(strrep(str,'_',' '), 'Location', 'best');
xlabel('Generation');
ylabel('Number of Players');
title('Strategy Frequencies Over Time');
grid on