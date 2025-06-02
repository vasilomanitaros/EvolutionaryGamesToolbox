function G = Graph_Markov(P_table,comb,pop_size)


    G = digraph(P_table);

	G = rmedge(G, 1:numnodes(G), 1:numnodes(G));

    l1= State2Num([pop_size 0 0],comb);

	l2= State2Num([0 pop_size 0],comb);

	l3= State2Num([0 0 pop_size],comb);



    PP=P_table^10000;

    SC=PP(:,[l2 l1 l3]);

    for l=1:3

		SC(l,:)=SC(l,:)/(sum(SC(l,:)+0.01));

    end

	


    plot(G,'XData',comb(:,2),'Ydata',comb(:,3),'NodeColor',SC);

end

