Strategies = ["All_C","All_D","TfT","Grim","Per_CD","Willing","Tf2T","Soft_Major", ...
              "Slow_TfT","Reverse_Pavlov","Per_nasty","Per_kind","Mistrust", ...
              "Hard_TfT","Pavlov","Hard_Major", "Gradual", "Per_CCCCD", "Prober"];
Pop1 = [0, 0, 0, 0, 100, 0, 0, 100, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0]; T=1000; J=90;
o=find(Pop1>0);
str=Strategies(o);
Pop1=Pop1(o);
[POP, BST, FIT] = TourTheFit2(B, str, Pop1, T, J);
figure;
plot(0:J, POP, 'LineWidth', 2);
legend(strrep(str,'_',' '), 'Location', 'best');
xlabel('Generation');
ylabel('Number of Players');
title('Strategy Frequencies Over Time');
grid on