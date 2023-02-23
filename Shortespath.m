s = []; %source nodes
t= []; %target nodes
w = []; %edge weights

G = graph(s,t, w);
p = plot(G, 'EdgeLabel', G.Edges.Weight, 'layout', 'layered');
[PATH, D] = shortestpath(G,1,5);% specify i and j for source and target node respectively
highlight(p, PATH, 'Edgecolor', 'r')
display(D)