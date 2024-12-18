{-# LANGUAGE GADTs #-}

module ExList where

import Prelude
    ( Char , String , Int , Integer , Double , Float , Bool(..)
    , Num(..) , Integral(..) , Enum(..) , Ord(..) , Eq(..)
    , not , (&&) , (||)
    , (.) , ($)
    , flip , curry , uncurry
    , otherwise , error , undefined
    )

import qualified Prelude   as P
import qualified Data.List as L
import qualified Data.Char as C

{- import qualified ... as ... ?

To use a function from a qualified import
you need to prefix its name with its alias and a dot:
P.head   C.toUpper   etc.

I import these for you to test the original functions on ghci:

ghci> :t C.toUpper
C.toUpper :: Char -> Char

You MUST NOT use ANY of these in your code

-}


{- Our lists vs Haskell lists

Our definition:

data List a where
  Nil  :: List a
  Cons :: a -> List a -> List a

Here we use Haskell's built-in lists and associated syntactic sugar.
It is as if it was defined like this:

    data [a] = [] | (x : xs)

or like this:

    data [a] where
      []  :: [a]
      (:) :: a -> [a] -> [a]

write [a]       for our List a
write []        for our List
write []        for our Nil
write (x : xs)  for our Cons x xs
write [u,v]     for our u `Cons` (v `Cons` Nil)

-}

head :: [a] -> a
head (x:xs) = x

tail :: [a] -> [a]
tail (x:xs) = xs

null :: [a] -> Bool
null [] = True
null _ = False

length :: Integral i => [a] -> i
length [] = 0
length (x:xs) = 1 + (length xs)

sum :: Num a => [a] -> a
sum [] = 0
sum (x:xs) = x + sum xs

product :: Num a => [a] -> a
product [] = 1
product (x:xs) = x * product xs

reverse :: [a] -> [a]
reverse [n] = [n]
reverse (x:xs) = reverse xs<:x

(++) :: [a] -> [a] -> [a]
(++) [] xs = xs
(++) (x:xs) ys = x:(++) xs ys
-- right-associative for performance!
-- (what?!)
infixr 5 ++

-- (snoc is cons written backwards)
snoc :: a -> [a] -> [a]
snoc x [] = [x]
snoc x xs = x:xs

(<:) :: [a] -> a -> [a]
(<:) = flip snoc

-- different implementation of (++)
(+++) :: [a] -> [a] -> [a]
xs +++ []     = xs
xs +++ [y]    = xs <: y
xs +++ (y:ys) = (xs +++ [y]) +++ ys
-- left-associative for performance!
-- (hmm??)
infixl 5 +++

-- minimum :: Ord a => [a] -> a
-- minimum xs = fold min 0 (xs)

-- maximum :: Ord a => [a] -> a

<<<<<<< HEAD:haskell/hw/ExList.hs
take :: Integral i => i -> [i] -> [i]
take x [] = []
take x (y:ys) =
  case x of
    0 -> []
    _ -> y:take (x-1) ys

tip :: Integral i => [i] -> i
tip [] = 0
tip (x:xs) =
  case xs of
    [] -> x
    _  -> tip xs
=======
-- take :: Integral i => i -> [i] -> [i]
-- take x [] = []
-- take x (b:bs) = if x == 0 then [] else b:take (x-1) bs

-- take :: Integral i => i -> [i] -> [i]
>>>>>>> 656294fa2c6bd232d76f5ebec1540971d2197b55:haskell/hw/3-ExList.hs

drop :: Integral i => i -> [i] -> [i]
drop x [] = []
drop x (y:ys)
  | length ys == x = ys
  | otherwise = drop x ys

<<<<<<< HEAD:haskell/hw/ExList.hs
uiui = [1, 2, 3, 4]
pares = [2, 4, 6, 8]
impares = [1, 3, 5, 7]

takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile p (x:xs) = if p x then x:takeWhile p xs else []
takeWhile p [] = []

-- dropWhile :: (a -> Bool) -> [a] -> [a]
=======


-- takeWhile :: (a -> Bool) -> [a] -> [a]
-- takeWhile p [] = []
-- takewhile p (x:xs) = if p x then x:takeWhile p xs else []
-- takeWhile p (x:xs) = case p x of
--                         False -> []
--                         _     -> x:takeWhile p xs
                
-- dropWhile :: (a -> Bool) -> [a] -> [a]
-- dropwhile p [] = []
-- dropwhile p (x:xs) = if p x then [] else x:dropWhile p xs
-- dropwhile p (x:xs) = case p x of
--                         False -> x:dropWhile p xs
--                         _     -> []
                    
>>>>>>> 656294fa2c6bd232d76f5ebec1540971d2197b55:haskell/hw/3-ExList.hs

tails :: [a] -> [a]
tails [] = []
tails (x:xs) = xs

init :: [a] -> [a]
init [] = error "Don't do that!"
init (_:[]) = []
init (x:xs) = x:init xs

-- inits

-- subsequences

-- any
-- all

-- and
-- or

-- concat

-- elem using the function 'any' above

-- elem': same as elem but elementary definition
-- (without using other functions except (==))

-- (!!)

filter :: (a -> Bool) -> [a] -> [a]
filter p [] = []
filter p (a:as) = if p a then a:filter p as else filter p as

map :: (a -> b) -> [a] -> [b]
map f [] = []
map f (a:as) = f a:map f as

-- cycle
-- repeat
-- replicate

-- isPrefixOf
-- isInfixOf
-- isSuffixOf

-- zip
-- zipWith

-- intercalate
-- nub

-- splitAt
-- what is the problem with the following?:
-- splitAt n xs  =  (take n xs, drop n xs)

-- [1,3,5,2,4,6]
-- [1,3,5] [2,4,6]

break :: Integral i => i -> [i] -> [i]
break _ [] = []
break 0 _ = []
break x (b:bs) = if x == b then [b] else b:break x bs

-- lines
-- words
-- unlines
-- unwords

-- transpose

-- checks if the letters of a phrase form a palindrome (see below for examples)
palindrome :: String -> Bool
palindrome = undefined

{-

Examples of palindromes:

"Madam, I'm Adam"
"Step on no pets."
"Mr. Owl ate my metal worm."
"Was it a car or a cat I saw?"
"Doc, note I dissent.  A fast never prevents a fatness.  I diet on cod."

-}

