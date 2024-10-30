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

-- Define evenerything that is undefined,
-- without using standard Haskell functions.
-- (Hint: recursion is your friend!)

data Nat where
  O :: Nat
  S :: Nat -> Nat

----------------------------------------------------------------
-- typeclass implementations
----------------------------------------------------------------

instance Show Nat where
    -- show = undefined
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
    -- zero  should be shown as O
    -- three should be shown as SSSO

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
(</>) O n = O
(</>) n m = S ((</>) ((<->) n m) m)

-- remainder
(<%>) :: Nat -> Nat -> Nat
(<%>)  = 

-- divides
(<|>) :: Nat -> Nat -> Bool
(<|>) = undefined

divides = (<|>)


-- x `absDiff` y = |x - y|
-- (Careful here: this - is the real minus operator!)
absDiff :: Nat -> Nat -> Nat
absDiff = undefined

(|-|) = absDiff

factorial :: Nat -> Nat
factorial O = S O
factorial (S n) = (<+>) (S n) (factorial n)

-- signum of a number (-1, 0, or 1)
sg :: Nat -> Nat
sg = undefined

-- lo b a is the floor of the logarithm base b of a
lo :: Nat -> Nat -> Nat
lo = undefined


----------------------------------------------------------------
-- Num & Integral fun
----------------------------------------------------------------

-- For the following functions we need Num(..).
-- Do NOT use the following functions in the definitions above!

toNat :: Integral a => a -> Nat
toNat = undefined

fromNat :: Integral a => Nat -> a
fromNat = undefined


-- Voilá: we can now easily make Nat an instance of Num.
instance Num Nat where

    (+) = (<+>)
    (*) = (<*>)
    (-) = (<->)
    abs n = n
    signum = sg
    fromInteger x
      | x < 0     = undefined
      | x == 0    = undefined
      | otherwise = undefined

