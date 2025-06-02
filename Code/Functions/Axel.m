function Scores = Axel(B,Strategies,Pop,T)
    sum_players=sum(Pop);
    Scores=zeros(1,sum_players);
    Str_assign=Assign_str(Strategies,Pop); % Call the function to assign the strategies

    for i=1:sum_players
        for j=i+1:sum_players
           memory_game=[]; %The memory for each game
           player_1_type=Str_assign(i);
           player_2_type=Str_assign(j); % assign players based on Str_assign we did earlier
           for k=1:T
                p1_move=move(memory_game,player_1_type);
                if isempty(memory_game)
                    p2_move=move(memory_game,player_2_type);
                else
                    memory_game2=memory_game(:,[2 1]); % change the perspective of the memory so the 2nd column is the opponent
                    p2_move=move(memory_game2,player_2_type);
                end

                Scores(i)=Scores(i)+B(p1_move,p2_move);
                Scores(j)=Scores(j)+B(p2_move,p1_move); %assign scores based on the player accordingly

                memory_game=[memory_game;p1_move p2_move]; %#ok<AGROW> % put the new moves into memory


                
            end

        end

    end

end

