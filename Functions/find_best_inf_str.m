function [best_str,rest_str]=find_best_inf_str(Score_per_str,Strategies)

     m=max(Score_per_str);

     temp= Score_per_str==m;

     temp2= ~temp;

     best_str=Strategies(temp);

     rest_str=Strategies(temp2);

end

