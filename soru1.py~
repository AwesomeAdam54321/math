def solve():
    digits = list(range(10))
    min_val = float('inf')
    best_abc = None
    for a in digits:
        for b in digits:
            if b == a: continue
            for c in digits:
                if c == a or c == b: continue
                val = a - 2*b + 3*c
                if val < min_val:
                    min_val = val
                    best_abc = (a, b, c)
    print(f"Min value: {min_val}, a={best_abc[0]}, b={best_abc[1]}, c={best_abc[2]}")

solve()
