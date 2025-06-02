function Scores_per_Group= Axel2_improved(B,Strategies,Pop,T)
    Re_matrix=Reward_str(B,Strategies,T);

    Score_per_category=(Re_matrix*Pop'-diag(Re_matrix))';

    Scores_per_Group=Score_per_category.*Pop;
end

