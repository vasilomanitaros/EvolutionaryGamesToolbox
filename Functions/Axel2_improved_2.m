function Scores_per_Group= Axel2_improved_2(B,Strategies,Pop,T)
    Re_matrix=Reward_str(B,Strategies,T);

    Score_per_category=(Re_matrix*Pop'-diag(Re_matrix))';

    Pop_check= Pop>0;

    Scores_per_Group=Score_per_category.*Pop_check;
end

