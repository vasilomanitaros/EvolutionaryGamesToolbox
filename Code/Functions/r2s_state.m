function s_state=r2s_state(r_state,Strategies)

    s_state=zeros(1,length(Strategies));

    for i=1:length(Strategies)

        temp=r_state == Strategies(i);

        s_state(i)=sum(temp);

    end


end

