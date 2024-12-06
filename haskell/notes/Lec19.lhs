> module Lec19 where
> data List a = Nil | Cons a

 instance Applicative List where
   pure x = [x]
   fs <*> xs = [f x | f <- fs, x <- xs]

   fs <*> xs = map (uncurry ($)) | cp fs xs

instance Applicative List where
   pure x = repeat x
   fs <*> xs = zipWith ($) fs xs

[(+2),(*1)] <*> [3,4,5,1]

--------------------------------------------

SMG : Semigroup, Monoid, Group
typeclass Semigroup 

