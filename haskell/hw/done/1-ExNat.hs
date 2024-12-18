{-# LANGUAGE GADTs #-}

module ExNat where

-- Do not alter this import!
import Prelude
    ( Show(..)
    , Eq(..)
    , Ord(..)
    , Num(..)
    , Integral(..)
    , Bool(..) , not , (&&) , (||)
    , (++)
    , ($)
    , (.)
    , undefined
    , error
    , otherwise
    )
import GHC.TypeError (ErrorMessage(Text))

-- Define everything that is undefined,
-- without using standard Haskell functions.
-- (Hint: recursion is your friend!)

data Nat where
  O :: Nat
  S :: Nat -> Nat

----------------------------------------------------------------
-- typeclass implementations
----------------------------------------------------------------

instance Show Nat where
    show O = "O"
    show (S n) = "S" ++ show n

zero, one, two, three, four, five :: Nat
zero = O
one = S zero
two = S one
three = S two
four = S three
five = S four
six = S five
seven = S six
eight = S seven
nine = S eight
ten = S nine

instance Eq Nat where

    (==) (S n) (S m) = (==) n m
    (==) O O = True 
     --
    (==) n m = False
     --

instance Ord Nat where

    (<=) O _ = True
    (<=) _ O = False
    (<=) (S n) (S m) = (<=) n m

    -- Ord does not REQUIRE defining min and max.
    -- However, you should define them WITHOUT using (<=).
    -- Both are binary functions: max m n = ..., etc.

    min _ O = O 
    min O _ = O
    min (S n) (S m) = S (min n m)

    max O m = m
    max n O = n
    max (S n) (S m) = S (max n m)

----------------------------------------------------------------
-- internalized predicates
----------------------------------------------------------------

isZero :: Nat -> Bool
isZero O = True

-- pred is the predecessor but we define zero's to be zero
pred :: Nat -> Nat
pred (S n) = n

even :: Nat -> Bool
even O = True
even (S O) = False
even (S (S n)) = even n

odd :: Nat -> Bool
odd O = False 
odd (S O) = True
odd (S (S n)) = odd n

----------------------------------------------------------------
-- operations
----------------------------------------------------------------

-- addition
(<+>) :: Nat -> Nat -> Nat
(<+>) n O = n
(<+>) n (S m) = S ((<+>) n m)

-- This is called the dotminus or monus operator
-- (also: proper subtraction, arithmetic subtraction, ...).
-- It behaves like subtraction, except that it returns 0
-- when "normal" subtraction would return a negative number.
(<->) :: Nat -> Nat -> Nat
(<->) n O = n
(<->) O _ = O
(<->) (S n) (S m) = (<->) n m

-- multiplication
(<*>) :: Nat -> Nat -> Nat
(<*>) _ O = O
(<*>) n (S m) = (<+>) n ((<*>) n m)

-- exponentiation
(<^>) :: Nat -> Nat -> Nat
(<^>) _ O = S O
(<^>) n (S m) = (<*>) n ((<^>) n m)

-- quotient
(</>) :: Nat -> Nat -> Nat
(</>) n O = error "Division by zero"
-- (</>) (S n) (S m) 

-- remainder
(<%>) :: Nat -> Nat -> Nat
(<%>) = undefined

-- divides
-- 2 | 4 = True
-- 3 | 4 = False
-- (<|>) :: Nat -> Nat -> Bool
-- (<|>) O _ = False
-- (<|>) _ O = True
-- (<|>) (S O) _ = True
-- (<|>) _ (S O) = True
-- (<|>) (S (S n)) (S (S m)) = (<|>) 


-- x `absDiff` y = |x - y|
-- (Careful here: this - is the real minus operator!)
absDiff :: Nat -> Nat -> Nat
absDiff n 0 = n
absDiff 0 n = n
absDiff (S n) (S m) = S (absDiff n m)

-- 3 - 1
-- S ( 2 - 0 )

(|-|) = absDiff

factorial :: Nat -> Nat
factorial O = S O
factorial (S n) = (<+>) (S n) (factorial n)

-- signum of a number (-1, 0, or 1)
sg :: Nat -> Nat
sg O = 0
sg _ = 1

ifte :: Bool -> a -> a -> a
ifte False _ m = m
ifte True n _ = n

-- lo b a is the floor of the logarithm base b of a
-- lo :: Nat -> Nat -> Nat
-- lo O O = O
-- lo _ O = error "Impossible"

----------------------------------------------------------------
-- Num & Integral fun
----------------------------------------------------------------

-- For the following functions we need Num(..).
-- Do NOT use the following functions in the definitions above!

toNat :: Integral a => a -> Nat
toNat x
    | x <= 0 = O
    | otherwise = S (toNat (x-1))

fromNat :: Integral a => Nat -> a
fromNat O = 0
fromNat (S n) = 1 + fromNat n
-- OR
-- fromNat n
--     | n == O = 0
--     | otherwise = 1 + fromNat ((<->) n (S O))

-- Voilá: we can now easily make Nat an instance of Num.
instance Num Nat where
    (+) = (<+>)
    (*) = (<*>)
    (-) = (<->)
    abs n = n
    signum = sg
    fromInteger x
      | x <= 0     = O
      | otherwise = toNat x

