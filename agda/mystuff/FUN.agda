module FUN where

-- <ExNat>

data Nat : Set where
  O : Nat
  S : Nat → Nat

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

data Bool : Set where
  True : Bool
  False : Bool

isZero : Nat → Bool
isZero O = True
isZero _ = False

pred : Nat → Nat
pred (S n) = n
pred O = O

even : Nat → Bool
even (S (S n)) = even n
even (S n) = False
even O = True

odd : Nat → Bool
odd (S (S n)) = odd n
odd (S n) = True
odd O = False

_+_ : Nat → Nat → Nat
_+_ O m = m
_+_ n O = n
_+_ (S n) m = S (n + m)

-- This is called the dotminus or monus operator
-- (also: proper subtraction, arithmetic subtraction, ...).
-- It behaves like subtraction, except that it returns 0
-- when "normal" subtraction would return a negative number.
monus : Nat -> Nat -> Nat
monus n O = n
monus O _ = O
monus (S n) (S m) = monus n m

_*_ : Nat -> Nat -> Nat
_*_ _ O = O
_*_ n (S m) = n + (n * m)

_^_ : Nat -> Nat -> Nat
_^_ _ O = S O
_^_ n (S m) = n * (n ^ m)

-- quotient
-- (</>) :: Nat -> Nat -> Nat
-- (</>) n O = error "Division by zero"
-- (</>) (S n) (S m) 

-- remainder
-- (<%>) :: Nat -> Nat -> Nat
-- (<%>) = undefined

-- divides
-- (<|>) :: Nat -> Nat -> Bool
-- (<|>) O _ = error "Divisão por 0"
-- (<|>) n m = error "Divisão por 0"


-- x `absDiff` y = |x - y|
-- (Careful here: this - is the real minus operator!)
_-_ : Nat -> Nat -> Nat
_-_ n O = n
_-_ O n = n
_-_ (S n) (S m) = S (_-_ n m)

-- 3 - 1
-- S ( 2 - 0 )

-- (|-|) = absDiff

factorial : Nat -> Nat
factorial O = S O
factorial (S n) = (S n) + (factorial n)

-- signum of a number (-1, 0, or 1)
sg : Nat -> Nat
sg O = zero
sg _ = one

-- ifte : Bool -> (A : Set) -> (A : Set) -> (A : Set)
-- ifte False _ m = m
-- ifte True n _ = n

-- lo b a is the floor of the logarithm base b of a
-- lo :: Nat -> Nat -> Nat
-- lo O O = O
-- lo _ O = error "Impossible"

----------------------------------------------------------------
-- Num & Integral fun
----------------------------------------------------------------

-- For the following functions we need Num(..).
-- Do NOT use the following functions in the definitions above!

--toNat : Integral a => a -> Nat
--toNat x
--    | x <= 0 = O
--    | otherwise = S (toNat (x-1))


-- fromNat :: Integral a => Nat -> a
-- fromNat O = 0
-- fromNat (S n) = 1 + fromNat n
-- OR
-- fromNat n
--     | n == O = 0
--     | otherwise = 1 + fromNat ((<->) n (S O))

-- Voilá: we can now easily make Nat an instance of Num.
-- instance Num Nat where
--     (+) = (<+>)
--     (*) = (<*>)
--     (-) = (<->)
--     abs n = n
--     signum = sg
--     fromInteger x
--       | x <= 0     = O
--       | otherwise = toNat x

-- <ExBool>

-- instance Enum Bool where
-- 
--     toEnum 1 = True
--     toEnum 2 = False
-- 
--     fromEnum True = 1
--     fromEnum False = 0
-- 
-- conjunction (AND)
_&&_ : Bool -> Bool -> Bool
True && True = True
False && _ = False
_ && False = False

-- disjunction (OR)
_||_ : Bool -> Bool -> Bool
True || _ = True
_ || True = True
False || False = False

-- NAND (Sheffer stroke)
_/|\_ : Bool -> Bool -> Bool
False /|\ _ = True
_ /|\ False = True
True /|\ True = False

-- NOR (aka: Peirce arrow or Quine dagger)
_\|/_ : Bool -> Bool -> Bool
False \|/ False = True
True \|/ _ = False
_ \|/ True = False

-- XOR (exclusive disjunction)
_[|]_ : Bool -> Bool -> Bool
True [|] True = False
False [|] False = False
True [|] _ = True
_ [|] True = True

-- boolean negation
¬ : Bool -> Bool
¬ True = False
¬ False = True

-- if then else expression
if_then_else : Bool -> (A : Set) -> (A : Set) -> (A : Set)
if True then n else m = n
if False then n else m = m

-- logical "implies"
_=>_ : Bool -> Bool -> Bool
True => True = True
False => _ = True
True => False = False

-- -- logical "implied by"
-- (<==) :: Bool -> Bool -> Bool
-- (<==) True True = True
-- (<==) _ False = True
-- (<==) False True = False

-- infixl 1 <==
-- 
-- -- logical equivalence
-- (<=>) :: Bool -> Bool -> Bool
-- (<=>) n m = (n ==> m) && (n <== m)
-- 
-- infixr 1 <=>
-- 
