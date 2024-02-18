def dfs(g):
    explored = []
    tree = []

    def explore(g, s):
        explored.append(s)
        tree.append(s)
        for n in (g.neighbors(s)):
            if not(n in explored):
                explore(g, n)

    for v in g.vertices():
        if not(v in explored):
            explore(g, v)
    return tree

def tri_topo(g):
    result = []
    grey = []
    white = []
    black = []
    def dfs_topo(g, result, v):
        grey.append(v)
        white.remove(v)
        for n in g.neighbors(v):
            if (n in white):
                dfs_topo(g, result, n)
        black.append(v)
        grey.remove(v)
        result.append(v)

    for i in range(0, len(g.vertices())):
        white.append(g.vertices()[i])
    for v in g.vertices():
        if (v in white):
            dfs_topo(g, result, v)
    return result

def iter_dfs(g):
    s = g.vertices()[0]
    result = []
    visited = []
    stack = []
    stack.append(s)
    while(len(stack)):
        s = stack[-1]
        stack.pop(-1)
        if not(s in visited):
            result.append(s)
            visited.append(s)
        for n in g.neighbors(s):
            if not(n in visited):
                stack.append(n)

g = Graph(4)
g.add_edges([[0,1], [1,2], [2,3], [3,0]])
g.show()
print(iter_dfs(g))









