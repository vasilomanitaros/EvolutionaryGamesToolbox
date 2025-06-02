Strategies = ["All_C","All_D","TfT","Grim","Per_CD","Willing","Tf2T","Soft_Major", ...
              "Slow_TfT","Reverse_Pavlov","Per_nasty","Per_kind","Mistrust", ...
              "Hard_TfT","Pavlov","Hard_Major", "Gradual", "Per_CCCCD", "Prober"];
Pop8 = [0, 0, 0, 0, 100, 0, 0, 159, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0]; J=120;
o=find(Pop8>0);
str=Strategies(o);
Pop8=Pop8(o);
[POP3, BST, FIT] = TourTheFit2(B, str, Pop8, T, J);
Pop8 = [0, 0, 0, 0, 100, 0, 0, 160, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0]; J=25;
o=find(Pop8>0);
str=Strategies(o);
Pop8=Pop8(o);
[POP4, BST, FIT] = TourTheFit2(B, str, Pop8, T, J);
figure;
J=120;
subplot(1,2,1); % First subplot
plot(0:J, POP3, 'LineWidth', 2);
legend(strrep(str,'_',' '), 'Location', 'best');
xlabel('Generation');
ylabel('Number of Players');
title('Strategy Frequencies Over Time');
grid on
J=25;
% Second plot
subplot(1,2,2); % Second subplot
plot(0:J, POP4, 'LineWidth', 2); 
legend(strrep(str,'_',' '), 'Location', 'best');
xlabel('Generation');
ylabel('Number of Players');
title('Strategy Frequencies Over Time');
grid on