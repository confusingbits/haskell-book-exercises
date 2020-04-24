order of operations for beta reduction. ch1.5, is not clear

in particular,

this `[𝑥 ∶= 𝑧],` syntax is confusing...wellm they whole thing is, but why does this get substited in the head, but not in the body, and then the next step the whole thing disappears with the final substitution of `z` in place of `x`

also what is this bracket notation called?

`(𝜆𝑥𝑦.𝑥𝑥𝑦)(𝜆𝑥.𝑥𝑦)(𝜆𝑥.𝑥𝑧)` is particularly challenging, `(𝜆𝑥.𝜆𝑦.𝜆𝑧.𝑥𝑧(𝑦𝑧))(𝜆𝑚.𝜆𝑛.𝑚)(𝜆𝑝.𝑝)` in rewritten form, it is also not clear why all the `x`'s and `y`'s in the first form do not all refer to the same things

but moving along `(𝜆𝑦.𝜆𝑧.(𝜆𝑚.𝜆𝑛.𝑚)𝑧(𝑦𝑧))(𝜆𝑝.𝑝)` is not clear why we are 'pulling' the `(𝜆𝑚.𝜆𝑛.𝑚)` out first since the `(𝑦𝑧)` is more deeply nested, the only precidence in this notation is left to right?


ok, my mind is officially blown now. I've always understood that functional programming is treating programming like mathematics with full rigor. The opening paragraph ins 1.7 just made it hit home that pure functional languages are abstrating programs or just 'running' functions as a method of evaluating values. since evaluating expressions is reduction in haskell...

# reducing expresssions IS the running program

just like you did algebra and calculus, simplifying is the act of computation. functional programming isn't just leveraging mathematical properties like associativity, identity, etc....these mathematical properties lead to computation while being reduced, and when you can fully reduce the expression, the program halts

# this is all math, everything, the whole thing

it seems so obvious now, of course I was 'running a program' in my head when I simplifed an algebraic expression, used the foil method or integrated/derived a function, and computers can behave in the same exact way as long as the process is formalized in a particular way for the language to understand this symbolic/abstract manipulation instead of only moving/changing bits of memory

the algorythm of function programming is mathematical reduction vs imperative's memory manipulation

more reading:

1. Raul Rojas. A Tutorial Introduction to the Lambda Calculus.
http://www.inf.fu-berlin.de/lehre/WS03/alpi/lambda.pdf
2. Henk Barendregt and Erik Barendsen. Introduction to Lambda
Calculus.
http://www.cse.chalmers.se/research/group/logic/TypesSS05/
Extra/geuvers.pdf
3. Jean-Yves Girard, P. Taylor, and Yves Lafon. Proofs and Types.
http://www.paultaylor.eu/stable/prot.pdf