module ExMaybe where

-- Do not alter this import!
import Prelude hiding ( maybe, Maybe(..) )
import qualified Data.Maybe as M

data Maybe a = Nothing | Just a
    deriving (Show, Eq, Ord)

catMaybes :: [Maybe a] -> [a]
catMaybes [] = []
catMaybes (m:ms) =
  case m of
    Just _ -> fromJust m:catMaybes ms
    _ -> catMaybes ms

j1 = Just 1
j2 = Just 2
j3 = Just 3

fromJust :: Maybe a -> a
fromJust (Just a) = a
fromJust _ = error "Nothing, bro!"

fromMaybe :: a -> Maybe a -> a
fromMaybe a Nothing = a
fromMaybe a (Just m) = m

isJust :: Maybe a -> Bool
isJust (Just a) = True
isJust _ = False

isNothing :: Maybe a -> Bool
isNothing Nothing = True
isNothing _ = False

mapMaybe :: (a -> b) -> (Maybe a -> Maybe b)
mapMaybe f (Just m) = Just $ f m
mapMaybe f _ = Nothing

justMap :: (a -> Maybe b) -> [a] -> [b]
justMap f [] = []
justMap f (x:xs) =
  case f x of
    Just y -> y : ys
    _ -> ys
    where ys = justMap f xs

maybe :: b -> (a -> b) -> Maybe a -> b
maybe = undefined

maybeToList :: Maybe a -> [a]
maybeToList = undefined

listToMaybe :: [a] -> Maybe a
listToMaybe = undefined

tryToModifyWith :: [Maybe (a -> a)] -> [a] -> [a]
tryToModifyWith = undefined

