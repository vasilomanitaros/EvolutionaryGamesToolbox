function [POP,BST,FIT] = TourTheFit2(B,Strategies,Pop0,T,J)
    Re_matrix=Reward_str(B,Strategies,T);

    l_str=length(Strategies);

    P=sum(Pop0);

    POP=zeros(J,l_str);
    FIT=zeros(J-1,l_str);
    BST=cell(J-1,1);

    POP(1,:)=Pop0;


    for i=1:J
        disp(i);
        FIT(i,:)=(Re_matrix*POP(i,:)'-diag(Re_matrix))';

        t=FIT(i,:)*POP(i,:)';

        m=max(FIT(i,:));

        temp= FIT(i,:)==m;

        BST{i}=Strategies(temp);
        
        %P=sum(POP(i,:));

        POP(i+1,:)=POP(i,:).*FIT(i,:)*(P/t);
        
        POP(i+1,:)= floor(POP(i+1,:));
        

    end
end