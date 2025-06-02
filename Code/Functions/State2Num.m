function N = State2Num(s_state,comb)
    temp= comb==s_state;

    check= sum(temp,2)==size(comb,2);

    

    N=find(check);
end

