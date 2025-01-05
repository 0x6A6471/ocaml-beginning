let non_zeros x y = x <> 0 && y <> 0 in
Printf.printf "non_zeros 0 0: %b\n" (non_zeros 0 0);
Printf.printf "non_zeros 0 1: %b\n" (non_zeros 0 1);
Printf.printf "non_zeros 1 0: %b\n" (non_zeros 1 0);
Printf.printf "non_zeros 1 1: %b\n" (non_zeros 1 1)
