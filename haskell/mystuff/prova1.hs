{-# LANGUAGE GADTs #-}

module Prova1 where

import Prelude hiding
    (
    map , filter , curry , uncurry
    , odd , min , plus , prod , times , len
    , take , dropWhile , tails , concat , repeat ,
    -- (++),
    any , replicate
    , zip , pairs , subseqs , inits , zipWith , countDown
    , zip , zipWith
    )

import qualified Data.List as L


zero, one, two, three, four, five, six, seven, eight, nine, ten :: Nat
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

---------------- A (35 pts) ----------------


-- define: Nat
data Nat where
    O :: Nat
    S :: Nat -> Nat

instance Show Nat where
    show O = "O"
    show (S n) = "S" ++ show n

-- define: List
data List a where
    Nil :: List a
    Cons :: a -> List a -> List a
    deriving (Eq, Show)

-- define: map
map :: (a -> b) -> List a -> List b
map f Nil = Nil
map f (x `Cons` xs) = f x `Cons` map f xs

-- define: filter
filter :: (a -> Bool) -> List a -> List a
filter p (x `Cons` xs)
    | p x = x `Cons` filter p xs
    | otherwise = filter p xs

-- define: fold ????????????????????????????
foldR :: a -> (a -> a -> a) -> List a -> a
foldR a f Nil = a
foldR a f (x `Cons` xs) = f x (foldR a f xs)

foldL :: a -> (a -> a -> a) -> List a -> a
foldL a f Nil = a
foldL a f (x `Cons` xs) = f (foldL a f xs) x

-- define: curry
curry :: ((a, b) -> c) -> (a -> b -> c)
curry f a b = f (a, b)

-- define: uncurry
uncurry :: (a -> b -> c) -> ((a, b) -> c)
uncurry f (a, b) = f a b

---------------- B (32 pts) ----------------
-- define 4 of the following functions

-- 4 pts each
odd  :: Nat -> Bool
odd O = False
odd (S O) = True
odd (S ( S n)) = odd n

min :: Nat -> Nat -> Nat
min (S n) (S m) = S (min n m)
min _ _ = O

plus  :: Nat -> Nat -> Nat
plus n O = n
plus n (S m) = S (plus n m)

times :: Nat -> Nat -> Nat
times n (S m) = plus n (times n m)
times _ _ = O

prod :: List Nat -> Nat
prod Nil = S O
prod (x `Cons` xs) = times x (prod xs)

len :: List a -> Nat
len Nil = O
len (n `Cons` ns) = S (len ns)

-- 6 pts each
--take      :: Nat -> List a -> List a
--dropWhile :: (a -> Bool) -> List a -> List a
--tails     :: List a -> List (List a)
-- concat    :: List (List a) -> List a          
--repeat    :: a -> List a
--(+++)      :: List a -> List a -> List a   
--any       :: (a -> Bool) -> List a -> Bool
--replicate :: Nat -> a -> List a           

-- 8 pts each
--zip       :: List a -> List b -> List (a,b)
--pairs     :: List a -> List (a,a)   
--subseqs   :: List a -> List (List a)
--inits     :: List a -> List (List a)
--zipWith   :: (a -> b -> c) -> List a -> List b -> List c
--countDown :: Nat -> List Nat


---------------- C (12 pts) ----------------
--zip       :: List a -> List b -> List (a,b)
--zipWith   :: (a -> b -> c) -> List a -> List b -> List c
-- define zip in terms of zipWith

zip :: [a] -> [b] -> [(a, b)]
zip (n:ns) (m:ms) = (n, m):zip ns ms
zip _ _ = []

-- zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
-- zipWith f (n:ns) (m:ms) = (f n m, zipWith f head ns ms)


zip' = zipWith' (,)

-- define zipWith in terms of zipWith
zipWith' = undefined

---------------- D (21 pts) ----------------

-- D1: define ArEx
data ArEx = Atom Integer
          | Plus ArEx ArEx
          | Times ArEx ArEx
          | Neg ArEx

-- D2: define eval
eval :: ArEx -> Int
eval = undefined

-- D3: define height
height :: ArEx -> Nat
height = undefined


