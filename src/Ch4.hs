module Ch4 where 
import Prelude

-- 4.3
-- # Mood Swing
-- 1. Mood
-- 2. Blah or Woot
-- 3. The return type should be of type Mood since it could return Blah or Woot as a 'negation'
-- 4. ...
-- 5. ...
data Mood = Blah | Woot deriving Show

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood Woot = Blah

-- 4.6
-- 1. not True && True
-- 2. not (x == 6)
-- 3. (1 * 2) > 5
-- 4. ["Merry"] > ["Happy"]
-- 5. ['1', '2', '3'] > "look at me!"

greetIfCool:: String -> IO ()
greetIfCool coolness = 
    if cool coolness
        then putStrLn "eyyyy. What's shakin'?"
    else
        putStrLn "pshhhh."
    where cool c =
            c == "downright frosty yo"

-- 4.9
awesome = ["Papuchon", "curry", ":)"]
also = ["Quake", "The Simons"]
allAwesome = [awesome, also]

-- 1. legnth:: [a] -> Integer
-- 2. a) 5
-- 2. b) 3
-- 2. c) 10
-- 2. d) 5
-- 3. the second one, it'lls try to divide with a function denominator
-- 4. (div) 6 ((length [1, 2, 3]))
-- 5. Bool, True
-- 6. idk, Integer, how does it decide which number type? Num?
-- 6  a) 5
-- 6  b) True
-- 7. a) True
-- 7. b) wont work, it's a list with nums and chars
-- 7. c) 5
-- 7. d) False
-- 7. e) wont work, 9 is not a Bool
-- 8.
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome s = s == reverse s
-- 9.
myAbs :: Integer -> Integer
myAbs n = if n >= 0 then n else n * (-1)
-- 10.
mySwap :: (a, b) -> (c, d) -> ((b, d), (a, c))
mySwap m n = ((snd m, snd n), (fst m, fst n))

-- correcting syntax
-- 1.
x = (+)
myAppend xs = w `x` 1
    where w = length xs

-- 2.
myx = x

-- 3.
myFst = fst

-- Match the function names to their types
-- 1. b
-- 2. b
-- 3. a
-- 4. d

-- 4.11 ...

