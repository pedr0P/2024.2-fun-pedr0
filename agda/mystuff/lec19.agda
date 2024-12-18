module lec19 where

data Nat : Set where
  O : Nat
  S : Nat -> Nat

data ListN : Set where
  [] : ListN
  _::_ : Nat -> ListN -> ListN

_++_ : ListN -> ListN -> ListN
[] ++ ms = ms
ns ++ [] = ns
(n :: ns) ++ ms = n :: (ns ++ ms)








