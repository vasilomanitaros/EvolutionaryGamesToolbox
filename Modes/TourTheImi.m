function P_table=TourTheImi(B,Strategies,PoP0,K,T)
    combos=all_combinations_sum_m(length(Strategies),sum(PoP0)); %all combinations of the population with the same Strategies

    P_table=zeros(size(combos,1));

    for i=1:size(combos,1)
        Score_str=Axel2_improved(B,Strategies,combos(i,:),T); % Scores for each Strategy

        [bstr, rest]= find_best_inf_str(Score_str,Strategies); %find best and rest strategies

        Popr=Assign_str(Strategies,combos(i,:)); % Find the full strategies list

        idx_r= find(ismember(Popr,rest)); 
        
        idx_bst=find(ismember(Popr,bstr));   % find indexes for bstr and rest

        if length(idx_r)<K
            idx_r=[idx_r idx_bst];     %if not enough rest, include all indexes in rest(all players all possible to change)
        end

        comb_pick=nchoosek(idx_r,K);  % combination of how players can change (this works for every K>1)

        
        poss_ch=combinations_with_replacement(length(bstr),K); %combination of what strategies can the picked players adapt to

        New_st=cell(size(comb_pick,1),size(poss_ch,1)); % All possible new r_states (will be converted to s_states later)
        
        p=numel(New_st); %1/p is the probability of moving to a specific r_state
        
        %
        for j=1:size(comb_pick)
            for k=1:size(poss_ch,1)  %loop through every possible picked players to change and every possible way they can change
                temp=Popr;
        
                temp(comb_pick(j,:))=bstr(poss_ch(k,:)); % Make the change to the populati
        
        
                New_st{j,k}=r2s_state(temp,Strategies); % Find the according s_state


                check= sum(combos == New_st{j,k},2) == size(combos,2);  %Find the column that corresponds to that s_state

                check=find(check);

                P_table(i,check)=P_table(i,check)+1/p;  % Add the 1/p probability to the transition matrix accordingly


            end
        
        
        end

        

    end

    
    
end

