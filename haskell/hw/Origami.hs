module Origami where

import Prelude hiding
    ( foldl , foldl1 , foldr , foldr1
    , sum , product
    , length
    , concat
    , filter
    , map
    , any , all
    , and , or
    , takeWhile , dropWhile
    )

import qualified Prelude as P

--
-- define the following folds:
--

-- foldr (#) v [x1, x2, x3, x4] = (x1 # (x2 # (x3 # (x4 # v))))
<<<<<<< HEAD
foldr :: (a -> a -> a) -> a -> [a] -> a
foldr _ v [] = v
foldr f v (x:xs) = f x (foldr f v xs)

-- foldl (#) v [x1, x2, x3, x4] = ((((v # x1) # x2) # x3) # x4)
foldl :: (a -> a -> a) -> a -> [a] -> a
foldl _ v [] = v
foldl f v (x:xs) = f (foldl f v xs) x

-- foldr1 (#) [x1, x2, x3, x4] = (x1 # (x2 # (x3 # x4)))
foldr1 :: (a -> a -> a) -> [a] -> a
foldr1 f (x:xs@(y:ys)) =
  case ys of
    [] -> f x y
    _  -> f x (foldr1 f xs)

-- foldl1 (#) [x1, x2, x3, x4]  = (((x1 # x2) # x3) # x4)
foldl1 :: (a -> a -> a) -> [a] -> a
foldl1 f (x:xs@(y:ys)) =
  case ys of
    [] -> f y x
    _  -> f (foldl1 f xs) x


-- define the following scans:
-- (scans are like folds but return all intermediate calculations)

-- foldl (+) 0 [12,25,16,24] = ((((0 + 12) + 25) + 16) + 24)
-- scanl (+) 0 [12,25,16,24] = [   0 , 12  , 37  , 53  , 77]

-- foldr (+) 0 [12,25,16,24] = (12 + (25 + (16 + (24 + 0))))
-- scanr (+) 0 [12,25,16,24] = [77 ,  65 ,  40 ,  24 , 0   ]

scannl :: (b -> a -> b) -> b -> [a] -> [b]
scannl _ _ [] = []
scannl f v (x:xs) = f v x:scannl f (f v x) xs

-- scannr :: (b -> a -> b) -> b -> [a] -> [b]
-- scannr _ _ [] = []
-- scannr f v (x:xs) = f v x:scannr f (f v x) xs
=======
foldr :: undefined
foldr = undefined

-- foldl (#) v [x1, x2, x3, x4] = ((((v # x1) # x2) # x3) # x4)
foldl :: undefined
foldl = undefined

-- foldr1 (#) [x1, x2, x3, x4] = (x1 # (x2 # (x3 # x4)))
foldr1 :: undefined
foldr1 = undefined

-- foldl1 (#) [x1, x2, x3, x4]  = (((x1 # x2) # x3) # x4)
foldl1 :: undefined
foldl1 = undefined


--
-- define the following scans:
-- (scans are like folds but return all intermediate calculations)
--
-- foldl (+) 0 [12,25,16,24] = ((((0 + 12) + 25) + 16) + 24)
-- scanl (+) 0 [12,25,16,24] = [   0 , 12  , 37  , 53  , 77]
--
-- foldr (+) 0 [12,25,16,24] = (12 + (25 + (16 + (24 + 0))))
-- scanr (+) 0 [12,25,16,24] = [77 ,  65 ,  40 ,  24 , 0   ]
--

scanl :: (b -> a -> b) -> b -> [a] -> [b]
scanl = undefined

scanr :: (a -> b -> b) -> b -> [a] -> [b]
scanr = undefined
>>>>>>> 656294fa2c6bd232d76f5ebec1540971d2197b55

--
-- Define all of the following functions as folds:
--

sum :: Num a => [a] -> a
<<<<<<< HEAD
sum (x:xs) = foldr (+) x xs

product :: Num a => [a] -> a
product (x:xs) = foldr (*) x xs

concat :: [[a]] -> [a]
concat (x:xs) = foldr (++) x xs
=======
sum = undefined

product :: Num a => [a] -> a
product = undefined

concat :: [[a]] -> [a]
concat = undefined
>>>>>>> 656294fa2c6bd232d76f5ebec1540971d2197b55

any :: (a -> Bool) -> [a] -> Bool
any = undefined

all :: (a -> Bool) -> [a] -> Bool
all = undefined

and :: [Bool] -> Bool
and = undefined

or :: [Bool] -> Bool
or = undefined

minimum :: Ord a => [a] -> a
minimum = undefined

maximum :: Ord a => [a] -> a
maximum = undefined

length :: Integral i => [a] -> i
length = undefined

filter :: (a -> Bool) -> [a] -> [a]
filter = undefined

map :: (a -> b) -> [a] -> [b]
map = undefined

reverse :: [a] -> [a]
reverse = undefined

takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile = undefined

dropWhile :: (a -> Bool) -> [a] -> [a]
dropWhile = undefined

-- sum of evens, safeMaximum of odds
-- e.g.:
-- semo [1..10] = (30, Just 9)
-- semo [2,4,6] = (12, Nothing)
semo :: Integral i => [i] -> (i, Maybe i)
semo = undefined

-- removes adjacent duplicates
-- e.g.:
-- remdups [1,2,2,3,3,3,1,1] = [1,2,3,1]
remdups :: Eq a => [a] -> [a]
remdups = undefined

safeLast :: [a] -> Maybe a
safeLast = undefined

-- dec2int [1,9,9,2] = 1992
dec2int :: Integral i => [i] -> i
dec2int = undefined

