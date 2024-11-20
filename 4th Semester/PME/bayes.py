def bias(Pm, Pf, pc_m, pc_f):
    return pc_m*Pm/(pc_m*Pm+pc_f*Pf)

ans = bias(0.55, 0.45, 0.10, 0.02)

print(ans)
