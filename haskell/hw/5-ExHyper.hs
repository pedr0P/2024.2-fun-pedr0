module ExHyper where

import Prelude hiding ( exp )

-- Nat datatype --------------------------------

data Nat = O | S Nat
     deriving (Eq, Show)

instance (Num Nat) where
    (+) = add
    (*) = mul
    abs = id
    fromInteger 0 = O
    fromInteger n
      | n > 0     = S $ fromInteger (n-1)
      | otherwise = O
    signum O = O
    signum n = S O
    negate n = O

instance (Ord Nat) where
    O     <= m     = True
    (S n) <= O     = False
    (S n) <= (S m) = n <= m

{- explicit definitions of add, mul, exp:

add n O     = n
add n (S m) = S (add m n)

mul n O     = O
mul n (S m) = add (mul n m) n

exp n O     = S O
exp n (S m) = mul (exp n m) n

-}

------------------------------------------------

-- substitute 'undefined' by the correct number
-- to define each of those functions:

add :: Nat -> Nat -> Nat
add = hyper O

mul :: Nat -> Nat -> Nat
mul = hyper (S O)

exp :: Nat -> Nat -> Nat
exp = hyper 2

-- hyper n should return the n'th operation in the sequence:
-- (..?..), add, mul, exp, ...?


hyper :: Nat -> (Nat -> Nat -> Nat)
hyper O = \x -> \y -> S y
hyper (S n) = \x -> \y -> case y of
                            (S y') -> hyper n x (hyper (S n) x y')
                            _ -> case n of
                                  O -> x
                                  (S O) -> O
                                  _ -> (S O)
