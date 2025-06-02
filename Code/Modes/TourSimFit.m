function [POP,BST,FIT]=TourSimFit(B,Strategies,Pop0,T,J)
    l_str=length(Strategies);

    P=sum(Pop0);

    POP=zeros(J,l_str);
    FIT=zeros(J-1,l_str);
    BST=cell(J-1,1);

    POP(1,:)=Pop0;

    for i=1:J
        disp(i);
        Scores=Axel2_improved(B,Strategies,POP(i,:),T);

        %FIT(i,:)=Sum_scores(Scores,Strategies,POP(i,:));
        
        FIT(i,:) = Axel2_improved(B,Strategies,POP(i,:),T);

        m=max(FIT(i,:));

        temp= FIT(i,:)==m;

        BST{i}=Strategies(temp);

        prc=FIT(i,:)/sum(FIT(i,:));

        POP(i+1,:)=P*prc;

        alive_str=find(POP(i+1,:)>0);



        POP(i+1,alive_str(1:end))=Close_int_v(POP(i+1,alive_str(1:end)));



    end
end

