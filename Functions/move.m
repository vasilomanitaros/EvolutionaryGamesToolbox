function move_p = move(history,player_type)
% Just an if-else statement with every strategy(will be updated with the
% new strategies in the next deliverable
    if player_type == "All_C"
        move_p= All_C(history);
    elseif player_type == "All_D"
        move_p= All_D(history);
    elseif player_type =="TfT"
        move_p = Tit_f_Tat(history);
    elseif player_type == "Grim"
        move_p = Grim(history);
   elseif player_type == "Per_CD"
        move_p = Per_CD(history);
    elseif player_type == "Willing"
        move_p = Willing(history);
    elseif player_type == "Tf2T"
        move_p = Tf2T(history);
    elseif player_type == "Soft_Major"
        move_p = Soft_Major(history);
    elseif player_type == "Slow_TfT"
        move_p = Slow_TfT(history);
    elseif player_type == "Reverse_Pavlov"
        move_p = Reverse_Pavlov(history);
    elseif player_type == "Per_nasty"
        move_p = Per_nasty(history);
    elseif player_type == "Per_kind"
        move_p = Per_kind(history);
    elseif player_type == "Mistrust"
        move_p = Mistrust(history);
    elseif player_type == "Hard_TfT"
        move_p = Hard_TfT(history);
    elseif player_type == "Pavlov"
        move_p = Pavlov(history);
    elseif player_type == "Hard_Major"
        move_p = Hard_Major(history);
    elseif player_type == "Gradual"
        move_p = Gradual(history);
    elseif player_type == "Per_CCCCD"
        move_p = per_ccccd(history);
    elseif player_type == "Prober"
        move_p = prober(history);
    end

end




