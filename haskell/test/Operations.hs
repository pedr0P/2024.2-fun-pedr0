
module Operations where

import Nat

plus :: Nat -> Nat -> Nat
n `plus` O = n
n `plus` (S m) = S (n `plus` m)

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

sub :: Nat -> Nat -> Nat
sub n O = n
sub O m = m
sub (S n) (S m) = sub n m

diva :: Nat -> Nat -> Nat
diva O n = O
diva n m = S (diva (sub n m) m)

