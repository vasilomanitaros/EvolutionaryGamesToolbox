function P_table=TourTheImi2(B,Strategies,PoP0,K,T)
    combos=all_combinations_sum_m(length(Strategies),sum(PoP0));

    P_table=zeros(size(combos,1));

    for i=1:size(combos,1)
        Score_str=Axel2_improved_2(B,Strategies,combos(i,:),T);

        [bstr, rest]= find_best_inf_str(Score_str,Strategies);

        Popr=Assign_str(Strategies,combos(i,:));

        idx_r= find(ismember(Popr,rest));
        
        idx_bst=find(ismember(Popr,bstr));

        if length(idx_r)<K
            idx_r=[idx_r idx_bst];
        end

        comb_pick=nchoosek(idx_r,K);

        
        poss_ch=combinations_with_replacement(length(bstr),K);

        New_st=cell(size(comb_pick,1),size(poss_ch,1));
        
        p=numel(New_st);
        
        %
        for j=1:size(comb_pick)
            for k=1:size(poss_ch,1)
                temp=Popr;
        
                temp(comb_pick(j,:))=bstr(poss_ch(k,:));
        
        
                New_st{j,k}=r2s_state(temp,Strategies);


                check= sum(combos == New_st{j,k},2) == size(combos,2);

                check=find(check);

                P_table(i,check)=P_table(i,check)+1/p;


            end
        
        
        end

        

    end

    
    
end

