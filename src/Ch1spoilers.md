Intemission Equivalence exercises

1. b
2. c
3. b


Combinators

1. yes
2. no, z is free
3. no, x will be free still after reduction
>this is wrong, the expression as is has no free terms
4. no, x will be free after reduction
>this is wrong, again for same reason
5. no, same
this is wrong, i missed the z

>most of the errors are a misunderstanding to not reduce when evaluation if variables are free or not

Normal form or diverge

1. normal, no argument to evaluate
2. diverge, like omega after one iteration, actually, now i kinda >get why the names don't matter now, from above
3. normal, becomes zzz

Beta reduce

1. zz(\wv.w)
>wrong, the zz is evaluated one z at a time, only parens group terms
2. bb
3. qq
4. yy
5. (\y.yyyy)
> wrong, for same grouping terms reason
6. aca
> wrong, for same grouping terms reason
7. a
> wrong, need prioritize unparen variables...i didn't start with the 'free' z in the middle