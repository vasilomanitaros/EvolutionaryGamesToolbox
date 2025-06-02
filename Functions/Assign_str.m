function str_assign= Assign_str(Strategies,Pop)
    sum_Pop=sum(Pop); %Find the size of the population

    Pop2=[0 Pop];

    Pop2=cumsum(Pop2); % The Pop2 helps by defining the limits between the population of one Strategy and another

    str_assign=strings(1,sum_Pop); %Initialize the string array

    for i=1:length(Strategies)
        str_assign(Pop2(i)+1:Pop2(i+1))=Strategies(i); % since the populations and strategies are well organized we use Pop2 to assign the Strategies

    end

    
end

