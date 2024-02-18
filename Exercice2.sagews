def bfs(g):
    if (len(g.vertices()) == 1):
        return g
    grey_v = []
    black_v = []
    tree = []
    s = g.vertices()[0]
    grey_v.append(s)
    while (len(grey_v)):
        s = grey_v.pop(0)
        tree.append(s)
        for n in (g.neighbors(s)):
            if not(n in grey_v and n in black_v):
                grey_v.append(n)
        black_v.append(s)
    return tree

g = Graph(4)
g.add_edges([[0,1], [1,2], [2,3], [3,0]])
g.show()
print(bfs(g))









