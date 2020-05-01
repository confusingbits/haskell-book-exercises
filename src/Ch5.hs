module Ch5 where

-- 5.3
-- 1. a) c
-- 1. b) d
-- 1. c) b
-- 1. d) b
-- 1. e) e

-- type arguements
-- 1. a
-- 2. d
-- 3. d
-- 4. c
-- 5. a
-- 6. e
-- 7. e
-- 8. e
-- 9. c

-- Exercises: Parametricity
-- 2.
tryParam :: a -> a -> a
tryParam a b =
    b
-- 3. one implimentation
tryParam2 :: a -> b -> b
tryParam2 a b =
    b

-- f :: Num a => a -> a -> a
f x y = x + y + 3

-- 5.8
-- 1. c
-- 2. a
-- 3. b
-- 4. c

-- Determine the type 
-- 1. a) 54, Num
-- 1. b) (0, "doge"), (Num, String)
-- 1. c) False, Bool
-- 1. d) 5, Int
-- 1. e) False, Bool
-- 2. Num
-- 3. Num
-- 4. Fractional
-- 5. String

-- Does it compile 
-- 1. no
-- 2. yes
-- 3. no
-- 4. no

-- Typevariable orspecific type constructor 
-- 1. contrained, full, concrete, concrete
-- 2. full, concrete, concrete
-- 3. full, constrained, concrete
-- 4. full, full, concrete

-- Write a type signature 
-- 1.
functionH :: [a] -> a
functionH (x:_) = x
-- 2.
functionC :: Ord a => a -> a -> Bool
functionC x y =
    if (x > y) then True else False
-- 3.
functionS :: (a, b) -> b
functionS (x, y) = y

-- Given a type,write the function
-- 1.
i :: a -> a
i a = a

-- 2.
c :: a -> b -> a
c a b = a

-- 3.
c'' :: b -> a -> b
c'' a b = a

-- 4.
c' :: a -> b -> b
c' a b = b

--5
r :: [a] -> [a]
r a = a

--6
co :: (b -> c) -> (a -> b) -> a -> c
co fbc fab a = fbc (fab a) 

--7
a :: (a -> c) -> a -> a
a fac a' = a' 

--8
a' :: (a -> b) -> a -> b
a' fab a = fab a

-- Fix it 
--1
--2
fstString :: [Char] -> [Char]
fstString x = x ++ " in the rain"

sndString :: [Char] -> [Char]
sndString x = x ++ " over the rainbow"

sing = if (x < y)
    then fstString x 
    else sndString y
        where x = "Singin"
              y = "Somewhere"
--3
main' :: IO ()
main' = do
    print (1 + 2)
    putStrLn "10"
    print (negate (-1))
    print ((+) 0 blah)
    where blah = negate 1

-- Type-Kwon-Do
--1

f' :: Int -> String
f' = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h a = g (f' a)

--2

data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e a = w (q a)

--3
data X
data Y
data Z
xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform (x, y) = (xz x, yz y)

--4
munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge xy ywz x = fst (ywz (xy x))
