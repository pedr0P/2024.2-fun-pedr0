{-# LANGUAGE NoImplicitPrelude #-}

module Operations where

import Nat
import Distribution.Compat.Prelude (Integral(div))


plus :: Nat -> Nat -> Nat
n `plus` O = n
n `plus` (S m) = S (n `plus` m)

-- sub :: Nat -> Nat -> Nat
-- sub n O = n
-- sub O m = m
-- sub (S n) (S m) = sub n m

times :: Nat -> Nat -> Nat
n `times` O = O
n `times` (S m) = n `plus` (n `times` m)

power :: Nat -> Nat -> Nat
n `power` O = S O
n `power` (S m) = n `times` (n `power` m)

fact :: Nat -> Nat
fact O = S O
fact (S n) = S n `plus` fact n

fib :: Nat -> Nat
fib O = S O
fib (S O) = S O
fib (S (S n)) = fib n `plus` fib (S n)

-- div :: Nat -> Nat -> Nat
-- div O n = O
-- div n m = S (diva (sub n m) m)

min :: Nat -> Nat -> Nat
min _ O = O
min O _ = O
min (S n) (S m) = S (min n m)

max :: Nat -> Nat -> Nat
max n O = n
max O m = m
max (S n) (S m) = S (max n m)

-- div
-- quot
-- rem
-- gcd
-- lcm
