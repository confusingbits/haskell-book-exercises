-- https://old.reddit.com/r/csharp/comments/hcmrrt/the_fp_vs_oop_choice_can_directly_affect_the/

class Eval a where
    eval :: a -> Int

class Stringify a where
    stringify :: a -> String

instance Eval Expression where
    eval (MyInt a) = a
    eval (Addition e1 e2) = eval e1 + eval e2
    eval (Negation e1 e2) = eval e1 - eval e2

instance Stringify Expression where
    stringify (MyInt a) = show a
    stringify (Addition e1 e2) = show (stringify e1) ++ " + " ++ (stringify e2)
    stringify (Negation e1 e2) = show (stringify e1) ++ " - " ++ (stringify e2)

data MyInt = Int

data Expression = MyInt Int
    | Addition Expression Expression
    | Negation Expression Expression

-- eval :: a -> a
-- eval (MyInt i) = i
-- eval (Addition op1 op2) = eval op1 + eval op2

-- expression = Addition(MyInt 3,
--                           Addition(MyInt 4, MyInt 5))
-- asString = stringify expression
-- result = eval expression
-- print(asString + " = " + result.ToString()) // 3 + 4 + 5 = 12

