{-# LANGUAGE NoImplicitPrelude #-}

module ExArith where

import Prelude (Integer, Eq(..), Show(..), (+), (*), ($))

data ArEx = Atom Integer
          | Plus ArEx ArEx
          | Times ArEx ArEx
          | Neg ArEx
  deriving (Eq, Show)

one, two, three, four, five, six, seven, eight, nine, ten :: ArEx
one = Atom 1
two = Atom 2
three = Atom 3
four = Atom 4
five = Atom 5
six = Atom 6
seven = Atom 7
eight = Atom 8
nine = Atom 9
ten = Atom 10

-- data Charo where
--     a = Charo
--     b = Charo
--     c = Charo
--     d = Charo
--     e = Charo
--     f = Charo
--     g = Charo
--     h = Charo
--     i = Charo
--     j = Charo
--     k = Charo
--     l = Charo
--     m = Charo
--     n = Charo
--     o = Charo
--     p = Charo
--     q = Charo
--     r = Charo
--     s = Charo
--     t = Charo
--     u = Charo
--     v = Charo
--     w = Charo
--     x = Charo
--     y = Charo
--     z = Charo
    
-- instance Show String where
--     a = Charo
--     b = Charo
--     c = Charo
--     d = Charo
--     e = Charo
--     f = Charo
--     g = Charo
--     h = Charo
--     i = Charo
--     j = Charo
--     k = Charo
--     l = Charo
--     m = Charo
--     n = Charo
--     o = Charo
--     p = Charo
--     q = Charo
--     r = Charo
--     s = Charo
--     t = Charo
--     u = Charo
--     v = Charo
--     w = Charo
--     x = Charo
--     y = Charo
--     z = Charo



-- pretty printer
pretty :: ArEx -> String
pretty e = case e of
            Atom x -> show x


-- example expressions
ex1 = (Atom 23) `Plus` (Atom 2)
ex2 = (Atom 7) `Times` ((Atom 7) `Plus` ((Atom 2) `Times` (Atom 8)))
ex3 = Times ex1 ex2
ex4 = Neg $ ex3 `Plus` ex1
ex5 = (Neg ex1) `Times` (Neg ex4)

-- eval evaluates an expression and returns its value
eval :: ArEx -> Integer
eval e = case e of
         Atom x -> x
         Plus t h -> eval t + eval h
         Times t h -> eval t * eval h
         Neg x -> (-1) * eval x

-- step should make only 1 step of calculation on a given ArEx
-- step :: ArEx -> ArEx
-- step e = 

