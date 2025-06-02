function Matrix = Reward_str(B,Strategies,T)
    l=length(Strategies);

    Matrix=zeros(l);

    for i=1:l
        for j=i:l
            memory_game=[]; %The memory for each game
            for k=1:T
                p1_move=move(memory_game,Strategies(i));
                if isempty(memory_game)
                    p2_move=move(memory_game,Strategies(j));
                else
                    memory_game2=memory_game(:,[2 1]); % change the perspective of the memory so the 2nd column is the opponent
                    p2_move=move(memory_game2,Strategies(j));
                end

                Matrix(i,j)=Matrix(i,j)+B(p1_move,p2_move);
                if i ~= j
                    Matrix(j,i)=Matrix(j,i)+B(p2_move,p1_move);
                end

                memory_game=[memory_game;p1_move p2_move]; %#ok<AGROW> % put the new moves into memory


            end

        end

    end
end

