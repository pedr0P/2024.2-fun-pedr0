data Nat : Set where
  O : Nat
  S : Nat → Nat

_+_ : Nat → Nat → Nat
O + m = m
(S n) + m = S (n + m)

_*_ : Nat → Nat → Nat
n * (S m) = n + (n * m)
_ * _ = O

zero : Nat
zero = O
one : Nat
one = S zero
two : Nat
two = S one
three : Nat
three = S two
four : Nat
four = S three

