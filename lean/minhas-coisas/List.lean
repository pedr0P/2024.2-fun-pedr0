/- namespace List -/
/--/
/- /- Relações em listas polimórficas -/ -/
/--/
/- inductive List (α : Type) where -/
/-   | Nil -/
/-   | Cons : α → List α → List α -/
/-   deriving Repr -/
/--/
/- open List -/
/- infixr:50 " :: " => Cons -/
/--/
/- section -/
/-   def ListNat := List Nat -/
/-   /- #check ListNat -/ -/
/-   /- #check 3 :: 2 :: 1 :: Nil -/ -/
/- end -/
/--/
/- /------ Funções ------/ -/
/- def len : List α → Nat -/
/-   | Nil     => 0 -/
/-   | _ :: xs => 1 + (len xs) -/
/--/
/- def concat : List α → List α → List α -/
/-   | Nil, ys     => ys -/
/-   | x :: xs, ys => x :: concat xs ys -/
/-   infixr:50 " ++ " => concat -/
/--/
/- def sum : List α → List α → α -/
/-   | (x::xs), (y::ys) => x + y + sum xs ys -/
/-   | _, _    => 0 -/
/- #eval sum 1::2::3::Nil 1::2::3::Nil -/
/--/
/- -- Algumas relações -/
/- def Prefix (l₁ l₂ : List α) : Prop := -/
/-   /- ∃ (ks : List α), len ks + len l₁ = len l₂ → l₂ = (ks ++ l₁) -/ -/
/-   ∃ (ks : List α), l₂ = (ks ++ l₁) -/
/--/
/- def Suffix (l₁ l₂ : List α) : Prop := -/
/-   /- ∃ (ks : List α), len ks + len l₁ = len l₂ → l₂ = (l₁ ++ ks) -/ -/
/-   ∃ (ks : List α), l₂ = (l₁ ++ ks) -/
/--/
/- def Segment (l₁ l₂ : List α) : Prop := -/
/-   ∃ (ks : List α)(qs : List α), l₂ = ((ks ++ l₁)++qs) -/
/--/
/- def Sublist (l₁ l₂ : List α) : Prop := -/
/-   sorry -/
/--/
/- def LexiLe (l₁ l₂ : List α) : Prop := -/
/-   /- Relação de ordem estrita Lexicográfica -/ -/
/-   sorry -/
/--/
/- -- Alguns teoremas sobre nossas relações -/
/- -- [AVISO] Talvez nem tudo seja demonstravel ;) -/
/- variable (l r s : List α) -/
/- variable (xs ys zs : List α) -/
/- variable (x y z : α) -/
/--/
/- namespace Prefix -/
/--/
/-   theorem refl : Prefix l l := by -/
/-     rw [Prefix] -/
/-     exists Nil -/
/--/
/-   theorem trans : Prefix l r ∧  Prefix r s → Prefix l s := by -/
/-     rw [Prefix, Prefix, Prefix] -/
/-     intro ha -/
/-     have hl := ha.left -/
/-     have hr := ha.right -/
/--/
/-   theorem antisymm : Prefix l r ∧  Prefix r l → l = r := by -/
/-     sorry -/
/--/
/- -- Ja te lembro que podes definir uma notacao infixa e ajustar -/
/- -- nos teoremas abaixo, desse modoe, por ex: -/
/-   infixr:49 " << " => Prefix -/
/--/
/-   theorem cons_preserva_prefix : xs << ys ↔ (x :: xs) << (x :: ys) := by -/
/-     sorry -/
/--/
/-   theorem cons_nao_preserva_prefix : x ≠ y → ¬(Prefix (x :: xs) (y :: ys)) := by -/
/-     sorry -/
/--/
/-   theorem /- Um nome bom -/ : Prefix l r → Prefix l (r ++ s) := by -/
/-     sorry -/
/--/
/-   theorem /- Um nome bom -/ : Prefix (l ++ r) s → Prefix l s := by -/
/-     sorry -/
/--/
/- end Prefix -/
/--/
/- -- Como acessar teoremas sobre a Prefix: -/
/- #check Prefix.refl -/
/- #check Prefix.cons_nao_preserva_prefix -/
/--/
/- namespace Suffix -/
/--/
/-   theorem refl : Suffix l l := by -/
/-     sorry -/
/--/
/-   theorem trans : Suffix l l := by -/
/-     sorry -/
/--/
/-   theorem /- Um nome bom -/ : Suffix l r → Suffix l (s ++ r) := by -/
/-     sorry -/
/--/
/- end Suffix -/
/--/
/- namespace Segment -/
/--/
/-   theorem refl : Segment l l := by -/
/-     sorry -/
/--/
/-   theorem trans : Segment l l := by -/
/-     sorry -/
/--/
/-   theorem preffix_suffix : Segment l r ↔ ∃ s, (Prefix l s) ∧ (Suffix s r) := by -/
/-     sorry -/
/--/
/- end Segment -/
/--/
/- namespace Sublist -/
/--/
/-   theorem refl : Sublist l l := by -/
/-     sorry -/
/--/
/-   theorem trans : Sublist l r ∧ Sublist r s → Sublist l s := by -/
/-     sorry -/
/--/
/-   theorem /- Um nome bom -/ : Sublist l r → sublist l (r ++ s) := by -/
/-     sorry -/
/--/
/-   theorem /- Um nome bom -/ : Sublist xs (y :: ys) ↔ (xs = ys) ∨ (Sublist xs ys) := by -/
/-     sorry -/
/--/
/- end Sublist -/
/--/
/- namespace LexiLe -/
/--/
/-   theorem irrefl : ¬(LexiLe l l) := by -/
/-     sorry -/
/--/
/-   theorem trans : LexiLe l r ∧ LexiLe r s → LexiLe l s := by -/
/-     sorry -/
/--/
/-   theorem concat_preserva : LexiLe l r → LexiLe (l ++ s) (r ++ s) := by -/
/-     sorry -/
/--/
/- end LexiLe -/
/--/
/- end Lv4 -/

import Nat.lean
-- Se teu outro arquivo compilou,
-- talvez tu precise usar Ctrl + Shift + P : Restart File

namespace Nat 
open Nat

-- A Lv based on ListNat game, made by Isaac:
-- https://github.com/isaacmsl/ListNatGame/blob/main/ListNatGame.lean
---------------------------------------------------------------------

inductive ListNat where
  | nil : ListNat
  | cons : Nat → ListNat → ListNat
deriving Repr

open ListNat

-- Pt 1: Recognizing

/- open ListNat -- Easier to write ListNat things -/

#check nil -- With open command
#check ListNat.nil -- Without "open ListNat" command
#check cons O nil
#eval nil -- deriving Repr

-- Pt 2: Defining operations

def length : ListNat → Nat
  | nil => O
  | cons _ l => S (length l)

#check length nil -- Judgement
#eval length nil -- Evaluation (?)
#eval length (cons O nil) -- Fix it

def greatest : ListNat → Nat
  | nil => O
  | cons n l => max n (cons l)

#eval greatest nil
#eval greatest (cons 4 (cons 20 (cons 10 nil)))
#eval greatest (cons 1 (cons 1 nil))

-- Assume ordered lists
-- First element greater than n
def upper_bound : Nat → ListNat → Nat
  | _, nil => ?
  | ?

#eval upper_bound 0 nil
#eval upper_bound 3 (cons 1 (cons 3 (cons 4 (cons 8 nil))))
#eval upper_bound 5 (cons 1 (cons 3 (cons 4 (cons 8 nil))))

-- Assume ordered lists
-- First element not less than n
def lower_bound : Nat → ListNat → Nat
  ?

#eval lower_bound 0 nil
#eval lower_bound 3 (cons 1 (cons 3 (cons 4 (cons 8 nil))))
#eval lower_bound 5 (cons 1 (cons 3 (cons 4 (cons 8 nil))))

def filter : (Nat → Bool) → ListNat → ListNat
  ?

open Nat

def even : Nat → Bool
 ?

#eval filter even nil
#eval filter even (cons 0 (cons 2 (cons 3 nil)))

-- [1,2,3] → [2,4,6]
def doubleList : ListNat → ListNat
  ?

def map : (Nat → Nat) → ListNat → ListNat
  ?

#eval doubleList nil
#eval doubleList (cons 1 (cons 3 nil))

-- Use \. + space to write ·
#eval map (· * 2) (cons 1 (cons 3 nil))
#eval map (· + 3) (cons 1 nil)


def concat : ListNat → ListNat → ListNat
  ?

#eval concat nil nil
#eval concat (cons 1 nil) (cons 3 (cons 4 nil))
-- Yours!

-- Add an nat to the end
def append : Nat → ListNat → ListNat
  ?

-- Define append in function of concat

def append_cat : Nat → ListNat → ListNat
  ?

#eval append 0 nil
#eval append 3 (cons 0 nil)

def sum : ListNat → ListNat → Nat
  | (x::xs), (y::ys) => add x (add y (sum xs ys))
  | _, _ => 0

-- esreveR...
def reverse : ListNat → ListNat
  ?

-- Obviously eval it...

-- Pt 3: Theorems
variable (l : ListNat)

theorem pooo :
  ∀ (xs : ListNat)(ys : ListNat), sum (xs ++ ys) = sum xs + sum ys :=
by
  inductive

theorem same_functions :
  doubleList l = map (· * 2) l :=
by
  sorry

theorem reverse_nil : reverse nil = nil := rfl

theorem cool_theorem (x : Nat) :
  reverse (append x l) = cons x (reverse l) :=
by
  sorry

theorem reverse_reverse :
  reverse (reverse l) = l :=
by
  sorry

/- Pt 4: Your own theorems -/
