module Ch6 where

data Trivial = Trivial'

instance Eq Trivial where
    Trivial' == Trivial' = True

data DayOfWeek = Mon | Tue | Weds | Thu | Fri | Sat | Sun
    deriving Show

instance Eq DayOfWeek where
    (==) Mon Mon = True
    (==) Tue Tue = True
    (==) Weds Weds = True
    (==) Thu Thu = True
    (==) Fri Fri = True
    (==) Sat Sat = True
    (==) Sun Sun = True
    (==) _ _ = False


data Date = Date DayOfWeek Int
    deriving Show

instance Eq Date where
    (==) (Date weekday dayOfMonth)
         (Date weekday' dayOfMonth') =
            weekday == weekday'
            && dayOfMonth == dayOfMonth'

f :: Int -> Bool
f 1 = True
f 2 = True
f 3 = True
f _ = False

-- sometimes we need to ask for more

-- data Identity a =
--     Identity a

-- instance Eq a => Eq (Identity a) where
--     (==) (Identity v) (Identity v') = v == v'

-- data NoEq = NoEqInst deriving Show

-- inoe = Identity NoEqInst

-- foo = inoe == inoe

-- Exercises: Eq instances

--1
data TisAnInteger = 
    TisAn Integer

instance Eq TisAnInteger where
        (==) (TisAn v) (TisAn v') = v == v'

--2
data TwoInteger =
    Two Integer Integer

instance Eq TwoInteger where
    (==) (Two v w) (Two v' w') = (v , w) == (v', w')

data StringOrInt = 
    TisAnInt Int
    | TisAString String

instance Eq StringOrInt where
    (==) (TisAnInt v) (TisAnInt v') = v == v'

data Pair a =
    Pair a a

instance Eq a => Eq (Pair a) where
    (==) (Pair v w) (Pair v' w') = (v, w) == (v', w')

data Tuple a b =
        Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
    (==) (Tuple v w) (Tuple v' w') = (v, w) == (v', w')

data Which a =
    ThisOne a
    | ThatOne a

instance Eq a => Eq (Which a) where
    (==) (ThisOne v) (ThisOne v') = v == v'
    (==) (ThatOne v) (ThatOne v') = v == v'

data EitherOr a b =
    Hello a
    | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
    (==) (Hello v) (Hello v') = v == v'
    (==) (Goodbye v) (Goodbye v') = v == v'

-- 6.6 ...