module test19 where

import Data.List
import Data.Nat.Induction
import Relation.Binary.PropositionalEquality using (_≡_)

theorem = ∀ (xs, ys) → sum ( xs ++ ys ) = (sum xs) + (sum ys)

