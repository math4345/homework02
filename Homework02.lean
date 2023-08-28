import Mathlib.Tactic

variable (x y z w : ℕ)

def s02p01 : (x + y) + z = x + (y + z) := by 
  sorry

def s02p02 : x * y * z * w = w * y * x * z := by 
  sorry

def s02p03 (h : y = 2 * x) : x + y = 3 * x := by
  sorry

def s02p04 : x + 0 = x := by 
  sorry

-- Recall that in lecture, we defined `mynat`, our own natural numbers.

inductive mynat where
  | zero : mynat
  | succ (n : mynat) : mynat
deriving Repr

open mynat

def one := succ zero
def two := succ (succ zero)
def three := succ (succ (succ zero))

def add : mynat → mynat → mynat := fun
  | m, zero        => m
  | m, succ n      => succ (add m n)
  
def mul : mynat → mynat → mynat := by
  sorry

def s02p05 : mul two three = add three three := by 
  sorry
