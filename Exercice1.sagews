def est_eulerien(g):
    if (len(g.vertices()) == 1):
        return True
    v_edges = []
    h = 0

    def hierholzer(a):
        neig = g.neighbors(g.vertices()[a])
        n = neig[0]
        while ([a,n] in v_edges):
            n += 1
        if (n < len(neig)):
            v_edges.append([a,n])
            yield n
        yield False

    e = hierholzer(h)
    while (e):
        e = hierholzer(h)
    if (len(v_edges) == len(g.vertices())):
        return True
    else:
        return False

g = Graph(4)
g.add_edges([[0,1], [1,2], [2,3], [3,0]])
g.show()
print(est_eulerien(g))









