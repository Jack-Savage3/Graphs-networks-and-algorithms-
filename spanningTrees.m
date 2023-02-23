s = [6 6 8 7 7 6 5 4 4 5 4 1 1 2 1 2 2 3 3 2];
t = [7 9 9 8 9 8 6 5 9 9 6 8 2 9 9 8 3 4 9 4];
w = [2 16 6 10 14 17 18 12 9 11 5 3 8 1 20 13 15 4 7 19];



G = graph(s,t,w);
[T,pred] = minspantree(G, 'Method', 'sparse'); %Kurskals
O = T.Edges.Weight;
kur = sort(O)
p = plot(G, 'EdgeLabel', G.Edges.Weight, 'Layout','circle');
highlight(p, T)

[T_Prim,pred] = minspantree(G, 'Method', 'dense','Type', 'tree', 'Root',9);
highlight(p, T_Prim);
O_prim = T_Prim.Edges.Weight;
Prim = sort(O_prim)
rootedTree = digraph(pred(pred~=0), find(pred~=0), findnode(G, 9));
h = rootedTree;

