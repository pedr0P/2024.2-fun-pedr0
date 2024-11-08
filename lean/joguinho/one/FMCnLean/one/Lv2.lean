import FMCnLean.Lv1
-- Se teu outro arquivo compilou,
-- talvez tu precise usar Ctrl + Shift + P : Restart File

open Lv1
open Lv1.Nat

namespace Lv2

def Nat := Lv1.Nat

---------------------------------------------Defs---------------------------------------------

inductive Bool where
  | T : Bool
  | F : Bool
deriving Repr

open Bool

-- Logical and         (∧ )
def land : Bool → Bool → Bool
  | T, T => T
  | F, _ => F
  | _, F => F

#eval land T T
#eval land T F
#eval land F T
#eval land F F

-- Logical or          (∨ )
def lor : Bool → Bool → Bool
  | T, _ => T
  | _, T => T
  | F, F => F

#eval lor T T
#eval lor T F
#eval lor F T
#eval lor F F

-- Logical implies     (→)
def limplies : Bool → Bool → Bool
  | T, _ => T
  | F, _ => F

#eval limplies F T
#eval limplies T F

-- Logical impliedBy   (←)
def limplied : Bool → Bool → Bool
  | _, T => T
  | _, F => F

#eval limplied F T
#eval limplied T F

-- Logical not         (¬)
def lneg : Bool → Bool
  | T => F
  | F => T

#eval lneg T
#eval lneg F

-- Logical NAND
def lnand : Bool → Bool → Bool
  | T, T => F
  | F, _ => T
  | _, F => T

#eval lnand T T
#eval lnand F F
#eval lnand T F

-- Logical NOR
def lnor : Bool → Bool → Bool
  | T, _ => F
  | _, T => F
  | F, F => T

#eval lnor T F
#eval lnor T T

-- Logical Exclusive-or
def lxou : Bool → Bool → Bool
  | F, F => F
  | T, T => F
  | T, _ => T
  | _, T => F

#eval lxou T T
#eval lxou F F
#eval lxou T F

--  Par
def isEven : Nat → Bool
  | O => T
  | S O => F
  | S n => isEven n

#eval isEven O
#eval isEven (S O)
#eval isEven (S (S Ordering))

-- Impar
def isOdd : Nat → Bool
  | O => F
  | S O => T
  | (S (S n)) => isOdd n

#eval isOdd (S (S O))
#eval isOdd (S (S (S O)))

-- (<)
def isLst : Nat → Nat → Bool
  | O, O => F
  | O, _ => F
  | _, O => T
  | S n, S m => isLst m n

#eval isLst (S O) (S (S O))
#eval isLst (S (S (S O))) (S O)

-- (==)
def isEq : α → α
  | _ => sorry

#eval isEq O (S (S O))
#eval isEq (S O) (S O)

-- (>)
def isGt : α → α
  | _ => sorry

#eval isGt O (S (S O))
#eval isGt (S (S O)) (S O)

-----------------------------------------Demons---------------------------------------------


theorem ⁻/-nome-/ :
  ∃(e : Bool), ∀(b : Bool), (land b e = b) ∧ (land e b = b) :=
by
  sorry


theorem /-nome-/ :
  ∃(e : Bool), ∀(b : Bool), (lor b e = b) ∧ (lor e b = b) :=
by
  sorry

theorem /-nome-/ :
   ∀(b : Bool), lneg (lneg b) = b :=
by
  sorry

theorem /-nome-/ :
  ∀(n : Nat), isLt O n = T ∨ isEq O n :=
by
  sorry

theorem /-nome-/ :
∀(n : Nat), isEven n = lneg (isOdd n) :=
by
  sorry
