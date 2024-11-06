{-# LANGUAGE NoImplicitPrelude #-}

module TestI where

import Prelude (Show(..), (++), Eq(..), Bool(..), otherwise)

data Nat where
    O :: Nat
    S :: Nat -> Nat

instance Show Nat where
    show O = "O"
    show (S n) = "S " ++ show n

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


data List a where
    Nil ::  List a
    Cons :: a ->  List a ->  List a

data Boole where
    T :: Boole
    F :: Boole

instance Show Boole where
    show T = "True"
    show F = "False"

map :: (a -> b) -> [a] -> [b]
map f [] = []
map f (x:xs) = f x:map f xs

filter :: (a -> Bool) -> [a] -> [a]
filter p (x : xs)
    | p x = x : filter p xs
    | otherwise = filter p xs

foldR :: a -> (a -> a -> a) -> [a] -> a
foldR a f [] = a
foldR a f (x:xs) = f x (foldR a f xs)

foldL :: a -> (a -> a -> a) -> [a] -> a
foldL a f [] = a
foldL a f (x:xs) = f (foldL a f xs) x

uncurry :: ((a, b) -> c) -> (a -> b -> c)
uncurry f a b = f (a, b)

curry :: (a -> b -> c) -> ((a, b) -> c)
curry f (a, b) = f a b

odd :: Nat -> Boole
odd O = F
odd (S O) = T
odd (S (S n)) = odd n

(+) :: Nat -> Nat -> Nat
(+) O n = n
(+) n (S m) = S ((+) n m)

(*) :: Nat -> Nat -> Nat
(*) O n = n
(*) n (S m) = (+) n ((*) n m)

min :: Nat -> Nat -> Nat
min O _ = O
min _ O = O
min (S n) (S m) = S (min n m)


