Strategies = ["All_C","All_D","TfT","Grim","Per_CD","Willing","Tf2T","Soft_Major", ...
              "Slow_TfT","Reverse_Pavlov","Per_nasty","Per_kind","Mistrust", ...
              "Hard_TfT","Pavlov","Hard_Major", "Gradual", "Per_CCCCD", "Prober"];
Pop4 = [0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 200, 300, 0, 0, 0, 0, 0, 0, 0]; J=1000; T = 1000;
o=find(Pop4>0);
str=Strategies(o);
Pop4=Pop4(o);
[POP, BST, FIT] = TourTheFit2(B, str, Pop4, T, J);
figure;
plot(0:J, POP, 'LineWidth', 2);
legend(strrep(str,'_',' '), 'Location', 'best');
xlabel('Generation');
ylabel('Number of Players');
title('Strategy Frequencies Over Time');
grid on